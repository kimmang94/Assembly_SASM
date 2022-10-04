# Assembly_SASM

Using SASM_Assembly

---------------------------------------------------------------------------------------------------------------
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

---------------------------------------------------------------------------------------------------------------
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
    
    ;al 등 다른것들은 상위에 영향을 끼치지 않는다
    mov al, 0x00
    mov rax, rdx

---------------------------------------------------------------------------------------------------------------
    ; rax = 64bits
    ; eax = 32 bits
    ; ax = 16bits
    ; ah, al = 8bits
    
    ; 메모리 <-> 레지스터
    mov rax, a ; a의 주소값을 rax 에 복사
    mov rax, [a] ; a의 값을 rax 에 복사
    mov al, [a] ; al 크기만큼 a의 값 복사            
        xor rax, rax
    ret
    
    ; 변수의 선언 / 사용
    ; 병수는 데이터를 저장하는 바구니
    ; - 처음 변수를 사용하겠다 선언 (이름과 크기 지정)
    
    ; 메모리에는 구분할 수 있도록 주소(번지수, Address) 가 있다.

    ; 초기화된 데이터
    ; [변수명] [크기] [초깃값]
    ; [크기 ] db(1), dw(2), dd (4), dq(8)     
section .data
    a db 0x11    ; [0x11] 16진수 2개를 합하면 1byte 라 생각하면된다
    b dw 0x2222
    c dd 0x33333333
    d dq 0x4444444444444444
    
    ; 초기화 되지 않은 데이터
    ; [변수이름] [크기] [개수]
    ; [크기] resb(1) resw(2) resd(4) resq(8)
section .bss
    e resb 10
    
    