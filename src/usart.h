#ifndef  USART_INC
#define  USART_INC

#include <inttypes.h>
#include <avr/interrupt.h>

#define F_CPU					8000000UL

#define USART_BAUDRATE 			19200UL
#define USART_TX_BUFFER_SIZE	20
#define USART_RX_BUFFER_SIZE	20
#define USART_BAUDRATE_DIV 		F_CPU/(16 * USART_BAUDRATE)-1

volatile uint8_t usartTxBuffer[USART_TX_BUFFER_SIZE];
volatile uint8_t usartRxBuffer[USART_TX_BUFFER_SIZE];

//Prototypes
void UsartInit			(void);
void UsartPutChar		(uint8_t ch);
void UsartPutString		(uint8_t *string);
uint8_t UsartGetChar	(void);

#endif   /* ----- #ifndef USART_INC  ----- */
