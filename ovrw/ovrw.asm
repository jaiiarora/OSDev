;overwrites all interrupt vectors

	mov ah, 0x0e
	mov al, "H"
	int 0x10
	mov al, "A"
	int 0x10
	mov al,"C"  
	int 0x10
	mov al, "K"
	int 0x10
	mov al, "I"
	int 0x10
	mov al,"N"  
	int 0x10
mov ax, 0x0000 ;points  to first location
mov ds, ax
mov cs, ax
mov es,  ax
mov  bx, 1
loop:
	cmp bx, 1025
	je out
	mov byte[ds:bx], 00
	inc bl
	;inc ax
out:
	mov ah, 0x0e
	mov al, "H"
	int 0x10
	mov al, "A"
	int 0x10
	mov al,"C"  
	int 0x10
	mov al, "K"
	int 0x10
	mov al, "E"
	int 0x10
	mov al,"D"  
	int 0x10
	jmp $
times 510 - ($-$$) db 0
dw 0xaa55	
