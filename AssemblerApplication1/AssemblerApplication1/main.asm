;
; AssemblerApplication1.asm
;
; Created: 01-11-2023 12:26:15
; Author : Omkar
;


; Replace with your application code
start:
    inc r16
	LDI r17, $20
	STS $24, r17
	STS $25, r17
    rjmp start
