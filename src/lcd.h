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
		0xC0,//0
		0xF9,//1
		0xA4,//2
		0xB0,//3
		0x99,//4
		0x92,//5
		0x82,//6
		0xF8,//7
		0x80,//8
		0x90,//9
		0xBF //-
};

//Prototypes
void LcdInit(void);
void LcdUpdate(uint8_t* data);

#endif   /* ----- #ifndef LCD_INC  ----- */
