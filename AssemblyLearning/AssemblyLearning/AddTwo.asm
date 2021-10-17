;AddTwo.asm - adds two 32-bit integers
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
sum DWORD 0

.code
main PROC
	mov eax, 5
	add eax, 6
	mov sum, eax
	
	invoke ExitProcess, 0
main ENDP
end main
