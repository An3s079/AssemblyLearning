;AddTwo.asm - adds two 32-bit integers
ExitProcess PROTO

.data
sum QWORD 0

.code
main PROC
	mov rax, 5
	add rax, 6
	mov sum, rax
	
	mov ecx, 0

	call ExitProcess
main ENDP
end
