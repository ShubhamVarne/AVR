; Listing generated by Microsoft (R) Optimizing Compiler Version 19.29.30137.0 

	TITLE	D:\ToPranali\C\inline_func.obj
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_main
; Function compile flags: /Odtp
_TEXT	SEGMENT
_a$ = -12						; size = 4
_b$ = -8						; size = 4
_total$ = -4						; size = 4
_main	PROC
; File D:\ToPranali\C\inline_func.c
; Line 7
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
; Line 8
	mov	DWORD PTR _a$[ebp], 100			; 00000064H
	mov	DWORD PTR _b$[ebp], 200			; 000000c8H
	mov	DWORD PTR _total$[ebp], 0
; Line 9
	lea	eax, DWORD PTR _total$[ebp]
	push	eax
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	mov	edx, DWORD PTR _a$[ebp]
	push	edx
	call	_add
	add	esp, 12					; 0000000cH
; Line 10
	xor	eax, eax
; Line 11
	mov	esp, ebp
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_num1$ = 8						; size = 4
_num2$ = 12						; size = 4
_p_total$ = 16						; size = 4
_add	PROC
; File D:\ToPranali\C\inline_func.c
; Line 2
	push	ebp
	mov	ebp, esp
; Line 3
	mov	eax, DWORD PTR _num1$[ebp]
	add	eax, DWORD PTR _num2$[ebp]
	mov	ecx, DWORD PTR _p_total$[ebp]
	mov	DWORD PTR [ecx], eax
; Line 4
	pop	ebp
	ret	0
_add	ENDP
_TEXT	ENDS
END
