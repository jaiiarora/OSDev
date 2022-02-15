[bits 32] ;we are using 32bit mode protected mode now

;defining constants

VIDEO_MEMORY equ 0xb8000
WHITE_ON_BLACK equ 0x0f ;white foreground text black background

print_string_pm:
	pusha
	mov edx, VIDEO_MEMORY  ;store constant val in register
	
;no bios function involved have to print by ourselves
print_string_pm_loop:
	mov al, [ebx]    ;[ebx] contains the address of our character
	mov ah, WHITE_ON_BLACK 
	
	cmp al, 0 ;check if end of string
	je print_string_pm_done
	
	mov [edx], ax
	add ebx,  1 ;next character
	add edx, 2 ;next video memory position for new character	

	jmp print_string_pm_loop

print_string_pm_done:
	popa
	ret
