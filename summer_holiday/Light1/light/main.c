//main.c
#define	P_IOA_Data 				(volatile unsigned int *)0x7000
#define P_IOA_Buffer 			(volatile unsigned int *)0x7001
#define P_IOA_Dir 				(volatile unsigned int *)0x7002
#define P_IOA_Attrib 			(volatile unsigned int *)0x7003
#define P_IOB_Data				(volatile unsigned int *)0x7005
#define P_IOB_Dir				(volatile unsigned int *)0x7007
#define P_IOB_Attrib			(volatile unsigned int *)0x7008

#define P_Watchdog_Clear		(volatile unsigned int *)0x7012

#define P_TimerA_Data			(volatile unsigned int *)0x700A
#define P_TimerA_Ctrl			(volatile unsigned int *)0x700B

void clearTimer()
{
	*P_Watchdog_Clear = 0x0001;
	*P_TimerA_Data = 0;
}

void Delay(void)
{
	unsigned int uiCount;
	for(uiCount = 0;uiCount <= 3000;uiCount++)
	{
		clearTimer();
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

void delayMs(unsigned int millis)
{
	while(1)
	{
		*P_Watchdog_Clear = 0;
		if(2*millis <= *P_TimerA_Data)
		{
			millis--;
			*P_TimerA_Data = 0;
		}
		if(millis == 0)
			break;
	}
	clearTimer();
}

void loop()
{
	int i;
	unsigned int uiKey; 
	
	*P_TimerA_Ctrl = 0x0005;
	*P_TimerA_Data = 0;
	
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
			clearTimer();
			break;
		}
		clearTimer();
	}
	
	for(i=0; i<3; i++)
	{
		clearTimer();
		*P_IOA_Data = 0x6000;
		*P_IOB_Data = 0x0004;
		delayMs(500);
		*P_IOA_Data = 0x2000;
		*P_IOB_Data = 0x0000;
		delayMs(500);
	}
	
	clearTimer();
	*P_IOA_Data = 0x5000;
	*P_IOB_Data = 0x0000;
	delayMs(10000);
	
	clearTimer();
	*P_IOA_Data = 0x1000;
	*P_IOB_Data = 0x0001;
	delayMs(10000);
	
	for(i=0; i<3; i++)
	{
		clearTimer();
		*P_IOA_Data = 0x2000;
		*P_IOB_Data = 0x0002;
		delayMs(500);
		*P_IOA_Data = 0x0000;
		*P_IOB_Data = 0x0002;
	}
}

int main()
{
	while(1)
	{
		clearTimer();
		loop();
	}
	return 0;
}