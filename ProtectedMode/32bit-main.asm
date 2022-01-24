[org 0x7c00] ;bootloader offset
	mov bp, 0x9000 ;setting stack base
	mov sp, bp ;setting stack pointer
	
mov bx,  MSG_REAL_MODE
call print ;why print used and not jmp
call switch_to_pm ;switches to protected mode
jmp $ ;code never reaches here


%include "../32_bit_gdt/32_bit_gdt.asm"
%include "32bit_switch.asm"
%include "../32_bit_print/32_bit_print.asm"
%include "../bootsector_strings_and_functions/boot_sect_print.asm"
[bits 32]

BEGIN_PM:
	mov ebx, MSG_PROT_MODE
	call print_string_pm
	jmp $

MSG_REAL_MODE db "Started in 16-bit-mode",0
MSG_PROT_MODE db "Loaded in 32-bit-protected-mode",0

;bootsector
times 510-($-$$) db 0
dw 0xaa55
