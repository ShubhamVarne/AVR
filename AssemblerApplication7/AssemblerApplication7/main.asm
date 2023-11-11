;
; AssemblerApplication7.asm
;
; Created: 11-11-2023 16:08:14
; Author : Omkar
;


; Replace with your application code
start:
	LDI r17 , $5
notequal:
	INC r18
	CP r17 , r18
	BREQ equal
	BRNE notequal
equal:
	LDI r19 , $10
	OUT  $04, r19
    rjmp start
