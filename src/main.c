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
int16_t adcResult;
uint16_t currTemperature;

int main(void)
{
	uint8_t histerezis = 0;
	UsartInit();
	LcdInit();
	Timer0Init();
	ADCInit();
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
			if (ENC_Scan(&setTemp, MAX_TEMP)) 
			{
				countTimeWriteEeprom = TIME_WRITE_EEPROM;
				flag.tempEepromWrite = TRUE;
				countSetTempVisible = TIME_SET_TEMP_VISIBLE;
				flag.setTempVisible = TRUE;
			}
		}
		if (flag.adcRead) 
		{
			int16_t tempData;
			tempData = (setTemp * 24) / 17;
			flag.adcRead = FALSE;
			adcResult = ADCRead(0);
			if (adcResult <= (tempData - histerezis))
			{
				LED_ON();
				REL1_ON();
				histerezis = 0;
			}
			else 
			{
				LED_OFF();
				REL1_OFF();
				histerezis = 7;
			}
		}
		if (flag.readTemp) 
		{
			flag.readTemp = FALSE;
			currTemperature = (adcResult * 17) / 24;
		}
		if (flag.setTempVisible) 
		{
			ResultBcd(setTemp, setTemp, 1000, dataOut_);
		}
		else
		{
			ResultBcd(currTemperature, adcResult, 1000, dataOut_);
		}
		if (flag.lcdUpdate) 
		{
			LcdUpdate(dataOut_);	
			flag.lcdUpdate = 0;
		}
		if(flag.eepromWrite)
		{
			SaveEepromMode();
		}
	}
}
