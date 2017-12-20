#ifndef  LCD_INC
#define  LCD_INC

#define DEBUG

#include <inttypes.h>
#include <avr/pgmspace.h>

#define LCD_PORT	PORTB
#define LCD_DDR		DDRB
#define DIG_PORT	PORTC
#define DIG_DDR		DDRC
#define DIG_1		3
#define DIG_2		4
#define DIG_3		5

#define DIG_P		7
#define DIG_MASK	((1 << DIG_1)|(1 << DIG_2)|(1 << DIG_3))

static const uint8_t sevenSegmentCod[] PROGMEM = {

};

//Prototypes
void LcdInit(void);
void LcdUpdate(void);

#endif   /* ----- #ifndef LCD_INC  ----- */
