%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    
    ; 메모를 남길 수 있는 기능 : 주석
    
    ; 10진수 (진법)
    ; 0,1,2,3,4,5,6,7,8,9 ->
    ; 10, 11... 19 -> 20
    
    ; 2진수 (진법)
    ; Binary (0b 를 붙이는 경우가 많다)
    ; 0b0, 0b1 -> 0b10 0b11 -> 0b100, 0b101
    
    ; 16진수 (진법)
    ; HexaDecimal (0x를 붙이는 경우가 많다)
    ; 0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f -> 10
    ; 0x00, 0x01... 0x0f -> 0x10
    ; 16진수에서 2진수로 왔다갔다하기 편하다
    
    ; 0b10010101 = 0b 1001 0101 -> 0x95
    
    
    PRINT_STRING msg
    xor rax, rax
    ret
    
section .data
    msg db "Hello World", 0x00