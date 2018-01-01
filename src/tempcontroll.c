/*
 * =====================================================================================
 *
 *       Filename:  tempcontroll.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  23.12.17 23:00:54
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  vovan (), volodumurkoval0@gmail.com
 *   Organization:  
 *
 * =====================================================================================
 */

#include "tempcontroll.h"

/* int16_t adcResult; */
uint16_t setTempEeprom EEMEM = 200;
int16_t setTemp;

volatile uint8_t countTimeKeyScan = PERIOD_KEY_SCAN;
volatile uint8_t countTimeLcdUpdate = PERIOD_LCD_UPDATE;
volatile uint8_t countTimeAdcRead = PERIOD_ADC_READ;
volatile uint16_t countTimeTempRead = PERIOD_TEMP_UPDATE;
volatile uint16_t countTimeWriteEeprom = 0;
volatile uint16_t countSetTempVisible = 0;


void Init(void)
{
	LED_DDR |= (1 << LED_OUT);
	LED_OFF();
	REL_DDR |= REL_MASK;//Pin to output
	REL_PORT &= ~REL_MASK;//Relays off
	setTemp = eeprom_read_word(&setTempEeprom);//read from eeprom temp value
	/* CONTR_DDR |= 1 << CONTR_OUT; */
}

void Timer0Init(void)
{
#if(F_CPU != 8000000)
#error ***You must set TCCR0
#endif
	TCCR0B|=(1<<CS02)|(1<<CS00);//T0_PRESC = 1024
	TCNT0 = T0_INIT;
	TIMSK0|=(1<<TOIE0);//enable interrupt overllow timer0
}

ISR(TIMER0_OVF_vect)
{
	TCNT0 = T0_INIT;
	countTimeKeyScan --;
	countTimeLcdUpdate --;
	countTimeAdcRead --;
	countTimeTempRead --;
	if(!countTimeKeyScan)
	{
		countTimeKeyScan = PERIOD_KEY_SCAN;
		flag.keyScan = TRUE;
	}
	if(!countTimeLcdUpdate)
	{
		countTimeLcdUpdate = PERIOD_LCD_UPDATE;
		flag.lcdUpdate = TRUE;
	}
	if(!countTimeAdcRead)
	{
		countTimeAdcRead = PERIOD_ADC_READ;
		flag.adcRead = TRUE;
	}
	if(!countTimeTempRead)
	{
		countTimeTempRead = PERIOD_TEMP_UPDATE;
		flag.readTemp = TRUE;
	}
	if(countTimeWriteEeprom)
	{
		countTimeWriteEeprom --;
		if(countTimeWriteEeprom == 0)
			flag.eepromWrite = TRUE;
	}
	if(countSetTempVisible)
	{
		countSetTempVisible --;
		if(countSetTempVisible == 0)
			flag.setTempVisible = FALSE;
	}
}

void ADCInit(void)
{
#if(F_CPU != 8000000)
#error ***You must set ADCSRA
#endif
	ADCSRA|=(1<<ADPS2)|(1<<ADPS1)|(1<<ADEN); //PRESC F_CPU/64
	ADMUX &= ~ADC_VREF_TYPE; //AREF, Internal Vref turned off
}

int16_t ADCRead(uint8_t chanel)
{
	/* ADMUX = ADC_VREF_TYPE | chanel; */
	ADMUX &= ~ADC_VREF_TYPE;
	ADMUX |= chanel;
	_delay_us(10);//delay needed for stabilization of the ACD input voltag
	ADCSRA |= (1 << ADSC);//start convertion
	while ((ADCSRA & (1 << ADIF)) == 0);//wait for complete conversion
	ADCSRA |=(1 << ADIF);
	/* flag.adcRead = FALSE; */
	return ADCW;
}

void ResultBcd(uint16_t data, int16_t contrlValue, uint16_t upLimit, uint8_t dataOut[4])
{
	uint8_t i;
	if(contrlValue > upLimit)
	{//якщо обрив датчика ,або коротке замикання
		for (i = 0; i <= 3; i++) 
		{
			dataOut[i] = 10;//виводимо на дисплей рисочки
		}
		return ;
	}
	dataOut[1] = data/100;
	dataOut[2] = (data / 10) % 10;
	dataOut[3] = data % 10;
}

void SaveEepromMode(void)
{
	if(flag.tempEepromWrite)
	{
		eeprom_write_word(&setTempEeprom,setTemp);
		flag.tempEepromWrite = FALSE;
	}
	flag.eepromWrite = FALSE;
}
