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

uint8_t dataOut_[4];

int main(void)
{
	ENC_Init();
	UsartInit();
	LcdInit();
	Timer0Init();
	ADCInit();
	Init();
	sei();
	while(1)
	{
		ResultBcd(200, dataOut_);
		LcdUpdate(dataOut_);
	}
}
