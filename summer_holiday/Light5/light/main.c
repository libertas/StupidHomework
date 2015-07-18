//main.c
#define	P_IOA_Data 				(volatile unsigned int *)0x7000
#define P_IOA_Buffer 			(volatile unsigned int *)0x7001
#define P_IOA_Dir 				(volatile unsigned int *)0x7002
#define P_IOA_Attrib 			(volatile unsigned int *)0x7003
#define P_IOB_Data				(volatile unsigned int *)0x7005
#define P_IOB_Dir				(volatile unsigned int *)0x7007
#define P_IOB_Attrib			(volatile unsigned int *)0x7008

#define P_Watchdog_Clear		(volatile unsigned int *)0x7012

int stop = 0;

void Delay(void)  // 等待一小段时间（按键消抖用）
{
	unsigned int uiCount;
	for(uiCount = 0;uiCount <= 3000;uiCount++)  // 做一段时间的无用操作
	{
		*P_Watchdog_Clear = 0x0001;  // 清看门狗
	}
}

unsigned int scanKey(char portName)  // 检测端口的输入
{
	unsigned int uiData;
	unsigned int uiTemp;
	volatile unsigned int *port;
	
	// 设置要检测的端口
	if(portName == 'A')
		port = P_IOA_Data;
	else if(portName = 'B')
		port = P_IOB_Data;
	
	uiData = *port;  // 读取相应端口输入
	
	if(uiData!=0)  // 如果有输入
	{
		Delay();  // 等待一小段时间来消抖
		uiTemp = *port;  // 再次读取端口输入
		if(uiData != uiTemp)  // 比较两次输入是否相等
			uiData = 0;  // 如果不相等则默认为无输入
	}
	return uiData;  // 返回相应端口输入的值
}

void delayTime(unsigned int time)  // 等待一段时间，单位是0.1秒
{
	unsigned long i, j;
	unsigned int key;
	for(i = 0; i <= time; i++)
	{
		*P_Watchdog_Clear = 0x0001;  // 清看门狗
		key = scanKey('B');  // 检测B口输入
		if(key & 0x0008)  // 如果B口的停止键按下
		{
			stop = 1;  // 停止标志设为1
			return;  // 跳出等待函数
		}
	}
}

int main()
{
	unsigned int key;
	start:
	key = 0;  // 清空键值
	stop = 0;  // 状态为非停止
	
	*P_IOA_Dir = 0x7FFF;  // 只有E端口设为输入
	*P_IOA_Attrib = 0x7FFF;  // 同上
	*P_IOA_Data = 0x0000;  // 清空数据
	
	*P_IOB_Dir = 0xfff7;  // 只有3端口设为输入
	*P_IOB_Attrib = 0xfff7;  // 同上
	*P_IOB_Data = 0x0000;  // 清空数据
	
	while(1)  // 等待按下起始键
	{
		key = scanKey('A');  // 扫描A端口的输入
		if(key & 0x8000)  // 如果A端口的F口有输入
		{
			*P_Watchdog_Clear = 0x0001;  // 清看门狗
			break;  // 跳出循环，进入下一个阶段
		}
		*P_Watchdog_Clear = 0x0001;  // 清看门狗
	}
	while(1)  // 红绿灯运行阶段
	{
		int i;  // 声明循环计数变量
	
		for(i=0; i<3; i++)  // 循环内黄灯闪
		{
			*P_Watchdog_Clear = 0x0001;  // 清看门狗
			*P_IOA_Data = 0x6000;  // A口 绿、黄亮
			*P_IOB_Data = 0x0004;  // B口 黄亮
			delayTime(5);  // 等待0.5秒
			if(stop == 1)  
				goto start;  // 如果结束标志为1即按下停止键，则跳回等待输入的阶段
			*P_IOA_Data = 0x2000;  // A口 绿亮
			*P_IOB_Data = 0x0000;  // B口 全灭
			delayTime(5);  // 等待0.5秒
			if(stop == 1)
				goto start;  // 如果结束标志为1即按下停止键，则跳回等待输入的阶段
		}
	
		*P_Watchdog_Clear = 0x0001;  // 清看门狗
		*P_IOA_Data = 0x5000;  // A口 黄亮红亮
		*P_IOB_Data = 0x0000;  // B口 全灭
		delayTime(100);  // 等待10秒
		if(stop == 1)
			goto start;  // 如果结束标志为1即按下停止键，则跳回等待输入的阶段
		
		*P_Watchdog_Clear = 0x0001;
		*P_IOA_Data = 0x1000;  // A口 红亮
		*P_IOB_Data = 0x0001;  // B口 红亮
		delayTime(100);  // 等待10秒
		if(stop == 1)  // 清看门狗
			goto start;  // 如果结束标志为1即按下停止键，则跳回等待输入的阶段
		
		for(i=0; i<3; i++)  // 循环内绿灯闪
		{
			*P_Watchdog_Clear = 0x0001;  // 清看门狗
			*P_IOA_Data = 0x2000;  // A口 绿亮
			*P_IOB_Data = 0x0002;  // B口 绿亮
			delayTime(5);  //等待0.5秒
			if(stop == 1)
				goto start;  // 如果结束标志为1即按下停止键，则跳回等待输入的阶段
			*P_IOA_Data = 0x0000;  // A口 全灭
			*P_IOB_Data = 0x0002;  // B口 绿亮
			delayTime(5);  //等待0.5秒
			if(stop == 1)
				goto start;  // 如果结束标志为1即按下停止键，则跳回等待输入的阶段
		}
	}
	return 0;
}
