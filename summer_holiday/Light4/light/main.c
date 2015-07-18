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

void Delay(void)
{
	unsigned int uiCount;
	for(uiCount = 0;uiCount <= 3000;uiCount++)
	{
		*P_Watchdog_Clear = 0x0001;
	}
}

unsigned int scanKey(char portName)
{
	unsigned int uiData;
	unsigned int uiTemp;
	volatile unsigned int *port;
	if(portName == 'A')
		port = P_IOA_Data;
	else if(portName = 'B')
		port = P_IOB_Data;
	uiData = *port;
	if(uiData!=0)
	{
		Delay();
		uiTemp = *port;
		if(uiData != uiTemp)
			uiData = 0;
	}
	return uiData;
}

void delayTime(unsigned int time)  // time=10 means 1 second
{
	unsigned long i, j;
	unsigned int key;
	for(i = 0; i <= time*10; i++)
	{
		for(j = 0; j < 3; j++)
		{
			*P_Watchdog_Clear = 0x0001;
			key = scanKey('B');
			if(key & 0x0008)
			{
				stop = 1;
				return;
			}
		}
	}
}

int main()
{
	unsigned int key;
	start:
	key = 0;
	stop = 0;
	
	*P_IOA_Dir = 0x7FFF;
	*P_IOA_Attrib = 0x7FFF;
	*P_IOA_Data = 0x0000;
	
	*P_IOB_Dir = 0xfff7;
	*P_IOB_Attrib = 0xfff7;
	*P_IOB_Data = 0x0000;
	
	while(1)
	{
		key = scanKey('A');
		if(key & 0x8000)
		{
			*P_Watchdog_Clear = 0x0001;
			break;
		}
		*P_Watchdog_Clear = 0x0001;
	}
	while(1)
	{
		int i;
	
		for(i=0; i<3; i++)
		{
			*P_Watchdog_Clear = 0x0001;
			*P_IOA_Data = 0x6000;
			*P_IOB_Data = 0x0004;
			delayTime(5);
			if(stop == 1)
				goto start;
			*P_IOA_Data = 0x2000;
			*P_IOB_Data = 0x0000;
			delayTime(5);
			if(stop == 1)
				goto start;
		}
	
		*P_Watchdog_Clear = 0x0001;
		*P_IOA_Data = 0x5000;
		*P_IOB_Data = 0x0000;
		delayTime(100);
		if(stop == 1)
			goto start;
		
		*P_Watchdog_Clear = 0x0001;
		*P_IOA_Data = 0x1000;
		*P_IOB_Data = 0x0001;
		delayTime(100);
		if(stop == 1)
			goto start;
		
		for(i=0; i<3; i++)
		{
			*P_Watchdog_Clear = 0x0001;
			*P_IOA_Data = 0x2000;
			*P_IOB_Data = 0x0002;
			delayTime(5);
			if(stop == 1)
				goto start;
			*P_IOA_Data = 0x0000;
			*P_IOB_Data = 0x0002;
			delayTime(5);
			if(stop == 1)
				goto start;
		}
	}
	return 0;
}