; testing for section (4.2.8,1-5.asm)
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
.data
val1 BYTE 10h
val2 WORD 8000h
val3 DWORD 0FFFFh
val4 WORD 7FFFh

.code
main PROC
; instruction that increments val2
inc val2

; instruction that subtracts val3 from EAX.
sub	eax, val3

;instructions that subtract val4 from val2
mov dx, val4
sub val2, dx
INVOKE ExitProcess,0
main ENDP
END main
