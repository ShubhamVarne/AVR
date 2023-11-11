;
; AssemblerApplication8.asm
;
; Created: 11-11-2023 16:32:00
; Author : Omkar
;


; Replace with your application code
start:
	LDI r20 , $20 ; r20 to be used for loading to DDRB
	OUT $04 , r20 ; 04 : relative addr of DDRB , set it to output port
	OUT $05 , r20 ; 05 : relative addr of PORTB , set it to make LED ON
	
    LDI r18 , $FF ; load 255 to r18 , we will make loop to run for 255 times 
LEDONloop1: 
	INC r19 ; increment r19
	OUT $05 , r20 
LEDONloop2: 
	INC r23
	OUT $05 , r20
LEDONloop3:
	INC r26
	OUT $05 , r20
	CP r18 , r26
	BRNE LEDONloop3  ; inner 1 loop
	CP r18 , r23
	BRNE LEDONloop2 ;  ; inner 2 loop
	CP r18 , r19
	BRNE LEDONloop1 ; if Z flag not equal to 1 
	BREQ LEDOFFloop1 ; if Z flag equal to 1 , 
LEDOFFloop1 :       ; here set PORTB to make LED ON 
	INC r22
	OUT $05 , r21
LEDOFFloop2:
	INC r24
	OUT $05 , r21
LEDOFFloop3:
	INC r25
	OUT $05 , r21 ; 05 : relative addr of PORTB , set it to make LED ON
	CP r18 , r25
	BRNE LEDOFFloop3 ; inner 1 loop
	CP r18 , r24
	BRNE LEDOFFloop2
	CP r18 , r22 ; inner 2 loop
	BRNE LEDOFFloop1 
	BREQ start ; go to start and start next loop execution
