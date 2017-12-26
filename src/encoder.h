#ifndef  ENCODER_INC
#define  ENCODER_INC

#include <inttypes.h>
#include <avr/io.h>

#define ENC_PORT	PORTD
#define ENC_DDR		DDRD
#define ENC_PIN		PIND

#define ENC_A_PIN	6
#define ENC_B_PIN	7

#define ENC_MASK	((1 << ENC_A_PIN) | (1 << ENC_B_PIN))

//Prototypes
void ENC_Init(void);
uint16_t ENC_Scan(void);

#endif   /* ----- #ifndef ENCODER_INC  ----- */
