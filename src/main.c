/*
 * =====================================================================================
 *
 *       Filename:  main.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  19.12.17 19:08:00
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  vovan (), volodumurkoval0@gmail.com
 *   Organization:  
 *
 * =====================================================================================
 */

#include "usart.h"
#include "lcd.h"
#include "tempcontroll.h"
#include "encoder.h"

uint8_t dataOut_[4] = {1, 1, 2, 3};
uint8_t a = 0;
uint16_t data = 312;

int main(void)
{
	UsartInit();
	LcdInit();
	Timer0Init();
	/* ADCInit(); */
	Init();
	ENC_Init(setTemp);
	sei();
	countSetTempVisible = TIME_SET_TEMP_VISIBLE;
	flag.setTempVisible = TRUE;
	while(1)
	{
		if (flag.keyScan) 
		{
			flag.keyScan = 0;	
			if (ENC_Scan(&setTemp)) 
			{
				countTimeWriteEeprom = TIME_WRITE_EEPROM;
				flag.tempEepromWrite = TRUE;
				countSetTempVisible = TIME_SET_TEMP_VISIBLE;
				flag.setTempVisible = TRUE;
			}
		}
		if(flag.eepromWrite)
		{
			SaveEepromMode();
		}
		if (flag.setTempVisible) 
		{
			ResultBcd(setTemp, dataOut_);
		}
		else
		{
			ResultBcd(data, dataOut_);
		}
		if (flag.lcdUpdate) 
		{
			LcdUpdate(dataOut_);	
			flag.lcdUpdate = 0;
		}
		if (flag.readTemp) 
		{
			flag.readTemp = 0;
			if (a == 0) 
			{
				LED_ON;
				a = 1;
			}		
			else {
				LED_OFF;
				a = 0;
			}
		}
	}
}
