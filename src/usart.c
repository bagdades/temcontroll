/*
 * =====================================================================================
 *
 *       Filename:  usart.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  14.12.17 22:35:30
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  vovan (), volodumurkoval0@gmail.com
 *   Organization:  
 *
 * =====================================================================================
 */

#include "usart.h"
#include <inttypes.h>
#include <util/delay.h>
#include <avr/io.h>

volatile uint8_t txTailBuffer;
volatile uint8_t txHeadBuffer;
volatile uint8_t txCountBuffer;
volatile uint8_t rxTailBuffer;
volatile uint8_t rxHeadBuffer;
volatile uint8_t rxCountBuffer;

void UsartInit(void){
	uint16_t i = USART_BAUDRATE_DIV;
	UBRR0L = i;
	UBRR0H = i >> 8;
	UCSR0C |= (1 << UCSZ01) | (1 << UCSZ00);//8-bit ,1-stop bit,no parity
	UCSR0B |= (1 << TXEN0) | (1 << RXEN0) | (1 << TXCIE0) |
			(1 << RXCIE0);//enable tx ,enable interrupt tx
}

void UsartPutChar(uint8_t ch){
	if(bit_is_set(UCSR0A,UDRE0) && txCountBuffer == 0)
		UDR0 = ch;
	else if(txCountBuffer < USART_TX_BUFFER_SIZE){
		txCountBuffer ++;
		usartTxBuffer[txHeadBuffer] = ch;
		txHeadBuffer ++;
		if(txHeadBuffer == USART_TX_BUFFER_SIZE)
			txHeadBuffer = 0;
	}
}

void UsartPutString(uint8_t *string){
	while(*string){
		UsartPutChar(*string);
		string++;
	}
}

uint8_t  UsartGetChar(void){
	uint8_t ch = 0;
	if(rxCountBuffer){
		ch = usartRxBuffer[rxTailBuffer];
		rxCountBuffer --;
		rxTailBuffer ++;
		if(rxTailBuffer == USART_RX_BUFFER_SIZE)
			rxTailBuffer = 0;
	}
	return ch;
}

ISR(USART_TX_vect)
{
	if(txCountBuffer){
		UDR0	= usartTxBuffer[txTailBuffer];
		txCountBuffer --;
		txTailBuffer ++;
		if(txTailBuffer == USART_TX_BUFFER_SIZE)
			txTailBuffer = 0;
	}
}

ISR(USART_RX_vect){
	if(rxCountBuffer < USART_RX_BUFFER_SIZE){
		usartRxBuffer[rxHeadBuffer] = UDR0;
		rxHeadBuffer ++;
		rxCountBuffer ++;
		if(rxHeadBuffer ==  USART_TX_BUFFER_SIZE)
			rxHeadBuffer = 0;
	}
}

