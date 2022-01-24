print:
	pusha ;pushes the contents of all registers on stack
; equivalent to loop while (str[i]!=0) {print str[i]; i++;} 

start:
	mov  al, [bx] ;bx is the base address for string
	cmp al, 0 ;if its a null string print done
	je done

	;print with BIOS help
	mov ah, 0x0e
	int 0x10 ;'al' already char
	;increment pointr to string
	add bx,1
	jmp start
done:
	popa
	ret

print_nl:
	pusha
	mov ah, 0x0e
	mov al, 0x0a;newline character
	int 0x10
	mov al, 0x0d
	int 0x10
	popa
	ret
	
