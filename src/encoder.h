#ifndef  ENCODER_INC
#define  ENCODER_INC

#include <inttypes.h>
#include <avr/io.h>
#include "tempcontroll.h"

#define ENC_PORT	PORTD
#define ENC_DDR		DDRD
#define ENC_PIN		PIND

#define ENC_A_PIN	6
#define ENC_B_PIN	7

#define ENC_MASK	((1 << ENC_A_PIN) | (1 << ENC_B_PIN))

//Prototypes
void ENC_Init(int16_t startValue);
uint8_t ENC_Scan(int16_t* value);

#endif   /* ----- #ifndef ENCODER_INC  ----- */
