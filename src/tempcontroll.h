#ifndef  TEMPCONTROLL_INC
#define  TEMPCONTROLL_INC

#include <inttypes.h>
#include "avr/io.h"
#include "avr/interrupt.h"
#include <avr/eeprom.h>
#include <util/delay.h>

//TIMER
#define T0_PRESC	1024UL
#define T0_FREQ		1000UL
#define T0_INIT		255 - (F_CPU/(T0_FREQ * T0_PRESC))

//TIME
#define PERIOD_KEY_SCAN			2
#define PERIOD_LCD_UPDATE		5
#define PERIOD_ADC_READ			10
#define PERIOD_TEMP_UPDATE		500
#define TIME_WRITE_EEPROM		3000
#define TIME_SET_TEMP_VISIBLE 	2000
#define MAX_TEMP				250
#define	MIN_TEMP				100

//Output
#define LED_PORT	PORTD
#define LED_DDR		DDRD
#define LED_OUT			3
#define LED_ON			(LED_PORT &= ~(1 << LED_OUT))
#define LED_OFF			(LED_PORT |= (1 << LED_OUT))

#define ADC_VREF_TYPE ((1<<REFS1)|(1<<REFS0))

volatile struct _flag{
	uint16_t keyScan:		1;
	uint16_t lcdUpdate:		1;
	uint16_t adcRead:		1;
	uint16_t eepromWrite:	1;
	uint16_t modeEepromWrite:1;
	uint16_t tempEepromWrite:1;
	uint16_t setTempVisible:	1;
	uint16_t digPoint:		1;
	uint16_t readTemp:		1;
}flag;

//ENUMERATION
enum keyPad{
	_UP = 1,
	_DOWN
	/* _SET */
};
enum {
	FALSE = 0,
	TRUE
};
enum {
	MODE_ONE = 0,
	MODE_TWO,
	MODE_THREE,
	MODE_FOUR
};

//Externs
extern int16_t setTemp;
extern volatile uint16_t countTimeWriteEeprom;
extern volatile uint16_t countSetTempVisible;

//PROTOTYPES
void Init			(void);
void Timer0Init		(void);
void KeyScan		(void);
void ADCInit		(void);
int16_t ADCRead		(uint8_t chanel);
void ResultBcd		(uint16_t data, uint8_t dataOut[4]);
void SaveEepromMode	(void);
#endif   /* ----- #ifndef TEMPCONTROLL_INC  ----- */
