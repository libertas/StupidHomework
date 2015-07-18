//main.c
#define	P_IOA_Data 				(volatile unsigned int *)0x7000
#define P_IOA_Buffer 			(volatile unsigned int *)0x7001
#define P_IOA_Dir 				(volatile unsigned int *)0x7002
#define P_IOA_Attrib 			(volatile unsigned int *)0x7003
#define P_IOB_Data				(volatile unsigned int *)0x7005
#define P_IOB_Dir				(volatile unsigned int *)0x7007
#define P_IOB_Attrib			(volatile unsigned int *)0x7008

#define P_Watchdog_Clear		(volatile unsigned int *)0x7012

void Delay(void)
{
	unsigned int uiCount;
	for(uiCount = 0;uiCount <= 3000;uiCount++)
	{
		*P_Watchdog_Clear = 0x0001;
	}
}

unsigned int KeyScan(void)
{
	unsigned int uiData;
	unsigned int uiTemp;
	uiData = *P_IOA_Data;
	if(uiData!=0)
	{
		Delay();
		uiTemp = *P_IOA_Data;
		if(uiData != uiTemp)
			uiData = 0;
	}
	return uiData;
}

void delay(unsigned int time)  // time=10 means 1 second
{
	unsigned long i, j;
	for(i = 0; i <= time*10; i++)
	{
		for(j = 0; j < 3000; j++)
			*P_Watchdog_Clear = 0x0001;
	}
}

void loop()
{
	int i;
	
	for(i=0; i<3; i++)
	{
		*P_Watchdog_Clear = 0x0001;
		*P_IOA_Data = 0x6000;
		*P_IOB_Data = 0x0004;
		delay(5);
		*P_IOA_Data = 0x2000;
		*P_IOB_Data = 0x0000;
		delay(5);
	}
	
	*P_Watchdog_Clear = 0x0001;
	*P_IOA_Data = 0x5000;
	*P_IOB_Data = 0x0000;
	delay(100);
	
	*P_Watchdog_Clear = 0x0001;
	*P_IOA_Data = 0x1000;
	*P_IOB_Data = 0x0001;
	delay(100);
	
	for(i=0; i<3; i++)
	{
		*P_Watchdog_Clear = 0x0001;
		*P_IOA_Data = 0x2000;
		*P_IOB_Data = 0x0002;
		delay(5);
		*P_IOA_Data = 0x0000;
		*P_IOB_Data = 0x0002;
		delay(5);
	}
}

int main()
{
	unsigned int uiKey = 0;
	
	*P_IOA_Dir = 0x7FFF;
	*P_IOA_Attrib = 0x7FFF;
	*P_IOA_Data = 0x0000;
	
	*P_IOB_Dir = 0x0007;
	*P_IOB_Attrib = 0x0007;
	*P_IOB_Data = 0x0000;
	
	while(1)
	{
		uiKey = KeyScan();
		if(uiKey == 0x8000)
		{
			*P_Watchdog_Clear = 0x0001;
			break;
		}
		*P_Watchdog_Clear = 0x0001;
	}
	while(1)
	{
		loop();
	}
	return 0;
}