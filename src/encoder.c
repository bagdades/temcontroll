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

void ENC_Init(void)
{
	ENC_DDR &= ~ENC_MASK;// In
	ENC_PORT |= ENC_MASK;//Pull-up
}

uint16_t ENC_Scan(void)
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
	}
	encState = newState;
	if (encValue > 1000) 
	{
		encValue = 1000;
	}
	if (encValue < 0) 
	{
		encValue = 0;
	}
	return (uint16_t) encValue >> 2;
}
