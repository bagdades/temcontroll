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
void ENC_Init(void)
{
	ENC_DDR &= ~ENC_MASK;// In
	ENC_PORT |= ENC_MASK;//Pull-up
}

void ENC_Scan(void)
{

}
