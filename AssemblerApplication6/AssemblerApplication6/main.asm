;
; AssemblerApplication6.asm
;
; Created: 11-11-2023 14:28:38
; Author : Omkar
;


; Replace with your application code
start:
	LDI r16 , $0
    inc r16
	LDI r26 , $3
	LDI r27, $0
	ADD r27 , r16
	ADD r27 , r16
	ADD r27 , r16
	CP r27 , r26
	BREQ start
	

    
