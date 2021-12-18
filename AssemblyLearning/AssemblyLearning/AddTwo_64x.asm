;AddTwo.asm - adds two 32-bit integers
ExitProcess PROTO

.data
sum QWORD 0
var1 byte 10h
var2 byte ?
.code
main PROC
	mov rax, 5
	add rax, 6
	mov sum, rax
	mov al, [var1 + 5]
	mov ecx, 0
    
	call ExitProcess
main ENDP
end
