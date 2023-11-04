/*
 * GccApplication1.c
 *
 * Created: 01-11-2023 18:54:38
 * Author : Omkar
 */ 

#include <avr/io.h>
#include <util/delay.h>

int main(void)
{
    /* Replace with your application code */
	DDRC = 0x00;
	DDRB = 0x20; //0010 0000
	
	PORTC = 0x01; //0000 0001
	
	unsigned char previous_state;
	
	unsigned char current_state;
	
	static int count = 0;
	
    while (1)
    {
		previous_state = PINC; /// Switch ON or OFF  0x00 or 0x01 // current previous_state = 0x01
		
		if(previous_state == 0x01)
		{
			_delay_ms(100);
			current_state = PINC; //0000 0000 & 0111 1111 // current_state = 0x00
			
			if(current_state == 0x00)
			{
				count++;
			}
			
		}
		
		if(count == 2)
		{
			PORTB = 0x20; // 0010 0000
		}
		else
		{
			PORTB = 0x00; // 0000 0000
		}
	
    }
}

