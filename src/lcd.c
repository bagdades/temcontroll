/*
 * =====================================================================================
 *
 *       Filename:  lcd.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  20.12.17 21:50:07
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  vovan (), volodumurkoval0@gmail.com
 *   Organization:  
 *
 * =====================================================================================
 */

#include "lcd.h"

void LcdInit(void)
{
	LCD_DDR = 0xFF;			//port out
	DIG_DDR |= DIG_MASK;	//port out
	DIG_PORT |= DIG_MASK;	//hight level
}
void LcdUpdate(void)
{
	static uint8_t count = 0;
	DIG_PORT |= DIG_MASK;
	if(count == 0)
	{
		DIG_PORT &= ~(1 << DIG_3);
		LCD_PORT = pgm_read_byte(sevenSegmentCod + dataOut[count + 1]);
        /* View mode heating */
	}
	else if(count == 1)
	{
		DIG_PORT &= ~(1 << DIG_2);
		LCD_PORT = pgm_read_byte(sevenSegmentCod + dataOut[count + 1]);
	}
	else if(count == 2)
	{
		DIG_PORT &= ~(1 << DIG_1);
		LCD_PORT = pgm_read_byte(sevenSegmentCod + dataOut[count + 1]);
		if (flag.digPoint)
			LCD_PORT |= (1 << DIG_P);
	}
	count ++;
	if(count > 2)
		count = 0;
	/* flag.lcdUpdate = FALSE; */
}
