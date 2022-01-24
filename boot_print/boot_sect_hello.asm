mov ah, 0x0e ;tty mode
mov al, 'H' 
int 0x10
mov al, 'e'
int 0x10 
mov  al, 'l'
int 0x10
int 0x10
mov  al, 'o'
int 0x10
jmp $ ;jump to  the current address
;pad the reamining 510-above instructions with zero
times 510 - ($-$$) db 0
;fill last two with magic number:
dw  0xaa55
