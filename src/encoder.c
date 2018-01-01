/*
 * =====================================================================================
 *
 *       Filename:  encoder.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  23.12.17 23:35:45
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  vovan (), volodumurkoval0@gmail.com
 *   Organization:  
 *
 * =====================================================================================
 */

#include "encoder.h"

static uint8_t encState = 0;
static volatile int16_t encValue = 0;

void ENC_Init(int16_t startValue)
{
	ENC_DDR &= ~ENC_MASK;// In
	ENC_PORT |= ENC_MASK;//Pull-up
	encValue = startValue << 2;
}

uint8_t  ENC_Scan(int16_t* value, uint16_t maxValue)
{
	uint8_t newState = ENC_PIN >> 6;
	uint8_t fullState = newState | (encState << 2);
	switch (fullState) 
	{
		case 0x2: case 0x4: case 0xB: case 0xD:
			encValue--;
			break;
		case 0x1: case 0x7: case 0x8: case 0xE:
			encValue++;
			break;
		default:
			return FALSE;
			break;
	}
	encState = newState;
	if (encValue > (maxValue << 2)) 
	{
		encValue = (maxValue << 2);
	}
	if (encValue < 0) 
	{
		encValue = 0;
	}
	*value = encValue >> 2;
	return TRUE;
}
