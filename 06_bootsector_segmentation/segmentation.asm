;using tty
mov ah, 0x0e

mov al, [the_secret] ;wont work
int 0x10


mov bx, 0x7c0
mov ds, bx
mov al, [the_secret];works now
int 0x10

;should work too
mov al, [ds:the_secret]
int 0x10

jmp $
the_secret:
	db "X"

times 510 - ($-$$) db 0
dw 0xaa55


