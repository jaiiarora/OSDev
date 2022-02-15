gdt_start:
	dd 0x0
	dd 0x0

;GDT code segment
;base = 0x00000000 limit=0xfffff
;descriptor type 1 for both code and data

;word is 16 bits 
gdt_code:
	dw 0xffff ;segment limit 00:15
	dw 0x0 ;segment base 00:15
	db 0x0 ;segment base bits 16:23
	db 10011010b; flags 8 bits
	db 11001111b ;upper flags + seg length bits 16-19
	db 0x0

gdt_data:
	dw 0xffff
	dw 0x0
	db  0x0
	db 10010010b
	db 11001111b
	db 0x0

gdt_end:
gdt_descriptor:
	dw gdt_end - gdt_start-1;
	dd gdt_start

CODE_SEG equ gdt_code - gdt_start
DATA_SEG equ gdt_data - gdt_start


