[org 0x7c00]
	mov bp , 0x8000
	mov sp, bp

	mov bx, 0x9000 ;
	mov dh, 2 
	call disk_load
	mov dx
