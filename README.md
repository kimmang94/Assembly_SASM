# Assembly_SASM

Using SASM_Assembly

%include "io64.inc"

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


Bit & Byte

    ; 8bit = 1byte
    ; 16bit = 2byte = 1word
    ; 32bit = 4byte = 2word = 1 dword (double-word)
    ; 64bit = 8byte = 4word = 1 qword (quad-word)

    ; rax = 64bits
    ; eax = 32 bits
    ; ax = 16bits
    ; ah, al = 8bits

    ; mov reg1, cst : 오른쪽값 왼쪽에 대입
    ; mov reg1, reg2
    
    mov eax, 0x1234
    mov rbx, 0x12345678
    mov cl, 0xff
    
    mov al, 0x00
    mov rax, rdx

    
    