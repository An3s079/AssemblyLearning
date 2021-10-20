;AddTwo.asm - adds two 32-bit integers
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
firstVal DWORD 5
secondVal DWORD 12
sum DWORD 0

myString BYTE "Test String"
stringSize EQU ($ - myString)
myString_Length WORD stringSize

.code
main PROC
	mov eax, firstVal
	add eax, secondVal

	mov sum, eax

	invoke ExitProcess, 0
main ENDP
end main
