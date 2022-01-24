mov ah, 0x0e ;for  enabling tty

mov bp, 0x8000 ;initializing base of stack, somewhere fara from loaded  boot memory at 0x7c00
mov sp,bp ;init stack as empty now

push 'A'
push 'B'
push 'C'


;stack grows  downwards
mov al, [0x7ff]
int 0x10 ;should print A


;[0x8000] can't  be accessed now
;trying to access  it
mov  al,[0x8000]
int 0x10


;pop operations now
pop bx
mov al,bl
int 0x10

pop bx
mov al,bl
int 0x10

pop bx
mov al, bl
int 0x10

;now any data popped is garbage
mov al, [0x8000]
int 0x10

jmp $
times  510-($-$$) db 0
dw 0xaa55


