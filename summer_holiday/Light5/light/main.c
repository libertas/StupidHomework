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

void Delay(void)  // �ȴ�һС��ʱ�䣨���������ã�
{
	unsigned int uiCount;
	for(uiCount = 0;uiCount <= 3000;uiCount++)  // ��һ��ʱ������ò���
	{
		*P_Watchdog_Clear = 0x0001;  // �忴�Ź�
	}
}

unsigned int scanKey(char portName)  // ���˿ڵ�����
{
	unsigned int uiData;
	unsigned int uiTemp;
	volatile unsigned int *port;
	
	// ����Ҫ���Ķ˿�
	if(portName == 'A')
		port = P_IOA_Data;
	else if(portName = 'B')
		port = P_IOB_Data;
	
	uiData = *port;  // ��ȡ��Ӧ�˿�����
	
	if(uiData!=0)  // ���������
	{
		Delay();  // �ȴ�һС��ʱ��������
		uiTemp = *port;  // �ٴζ�ȡ�˿�����
		if(uiData != uiTemp)  // �Ƚ����������Ƿ����
			uiData = 0;  // ����������Ĭ��Ϊ������
	}
	return uiData;  // ������Ӧ�˿������ֵ
}

void delayTime(unsigned int time)  // �ȴ�һ��ʱ�䣬��λ��0.1��
{
	unsigned long i, j;
	unsigned int key;
	for(i = 0; i <= time; i++)
	{
		*P_Watchdog_Clear = 0x0001;  // �忴�Ź�
		key = scanKey('B');  // ���B������
		if(key & 0x0008)  // ���B�ڵ�ֹͣ������
		{
			stop = 1;  // ֹͣ��־��Ϊ1
			return;  // �����ȴ�����
		}
	}
}

int main()
{
	unsigned int key;
	start:
	key = 0;  // ��ռ�ֵ
	stop = 0;  // ״̬Ϊ��ֹͣ
	
	*P_IOA_Dir = 0x7FFF;  // ֻ��E�˿���Ϊ����
	*P_IOA_Attrib = 0x7FFF;  // ͬ��
	*P_IOA_Data = 0x0000;  // �������
	
	*P_IOB_Dir = 0xfff7;  // ֻ��3�˿���Ϊ����
	*P_IOB_Attrib = 0xfff7;  // ͬ��
	*P_IOB_Data = 0x0000;  // �������
	
	while(1)  // �ȴ�������ʼ��
	{
		key = scanKey('A');  // ɨ��A�˿ڵ�����
		if(key & 0x8000)  // ���A�˿ڵ�F��������
		{
			*P_Watchdog_Clear = 0x0001;  // �忴�Ź�
			break;  // ����ѭ����������һ���׶�
		}
		*P_Watchdog_Clear = 0x0001;  // �忴�Ź�
	}
	while(1)  // ���̵����н׶�
	{
		int i;  // ����ѭ����������
	
		for(i=0; i<3; i++)  // ѭ���ڻƵ���
		{
			*P_Watchdog_Clear = 0x0001;  // �忴�Ź�
			*P_IOA_Data = 0x6000;  // A�� �̡�����
			*P_IOB_Data = 0x0004;  // B�� ����
			delayTime(5);  // �ȴ�0.5��
			if(stop == 1)  
				goto start;  // ���������־Ϊ1������ֹͣ���������صȴ�����Ľ׶�
			*P_IOA_Data = 0x2000;  // A�� ����
			*P_IOB_Data = 0x0000;  // B�� ȫ��
			delayTime(5);  // �ȴ�0.5��
			if(stop == 1)
				goto start;  // ���������־Ϊ1������ֹͣ���������صȴ�����Ľ׶�
		}
	
		*P_Watchdog_Clear = 0x0001;  // �忴�Ź�
		*P_IOA_Data = 0x5000;  // A�� ��������
		*P_IOB_Data = 0x0000;  // B�� ȫ��
		delayTime(100);  // �ȴ�10��
		if(stop == 1)
			goto start;  // ���������־Ϊ1������ֹͣ���������صȴ�����Ľ׶�
		
		*P_Watchdog_Clear = 0x0001;
		*P_IOA_Data = 0x1000;  // A�� ����
		*P_IOB_Data = 0x0001;  // B�� ����
		delayTime(100);  // �ȴ�10��
		if(stop == 1)  // �忴�Ź�
			goto start;  // ���������־Ϊ1������ֹͣ���������صȴ�����Ľ׶�
		
		for(i=0; i<3; i++)  // ѭ�����̵���
		{
			*P_Watchdog_Clear = 0x0001;  // �忴�Ź�
			*P_IOA_Data = 0x2000;  // A�� ����
			*P_IOB_Data = 0x0002;  // B�� ����
			delayTime(5);  //�ȴ�0.5��
			if(stop == 1)
				goto start;  // ���������־Ϊ1������ֹͣ���������صȴ�����Ľ׶�
			*P_IOA_Data = 0x0000;  // A�� ȫ��
			*P_IOB_Data = 0x0002;  // B�� ����
			delayTime(5);  //�ȴ�0.5��
			if(stop == 1)
				goto start;  // ���������־Ϊ1������ֹͣ���������صȴ�����Ľ׶�
		}
	}
	return 0;
}
