;
; AssemblerApplication2.asm
;
; Created: 01-11-2023 14:25:37
; Author : Omkar
;


; Replace with your application code
start:
    inc r16
	LDI r17, $20
	OUT $04, r17
	OUT $05, r17
    rjmp start
