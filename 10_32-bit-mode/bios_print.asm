print:
	pusha ;pushes all registers onto the stack

; this code is equivalent of  
;while (str[i]!=0){printf(str[i]);i++;}

start:
	mov al, [bx]
	cmp al, 0
	je done

	;print with help of bios
	mov ah, 0x0e
	int 0x10
	;prints the character

	add bx,1
	jmp start

done:
	popa
	ret

print_nl:
	pusha
	mov ah, 0x0e
	mov al, 0x0a ;newline character
	int 0x10
	mov al, 0x0d
	int 0x10
	
	popa
	ret

