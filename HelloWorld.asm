.386
.model flat, stdcall
option casemap :none

include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data
    message db "Hello World", 0
    number db "Value = %d",10,1

.code 

main:
 invoke StdOut, addr message
 invoke StdOut, addr number
 invoke ExitProcess, 0
end main
