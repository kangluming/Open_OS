[org 0x7c00]

; set screeb mdoe for text mode , clear screen
mov ax, 3
int 0x10

; init 
mov ax, 0
mov ds, ax
mov es, ax
mov ss, ax
mov sp, 0x7c00

;0xb8000 test screen address
mov ax, 0xb800
mov ds, ax
mov byte [0], 'H' 

; 
jmp $

times 510 - ($ - $$) db 0

;last byte must be 0x55 0xaa
db 0x55, 0xaa
