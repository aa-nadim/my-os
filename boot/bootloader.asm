; bootloader.asm
[org 0x7C00]         ; BIOS loads bootloader at address 0x7C00
mov ah, 0x0E         ; BIOS teletype output function
mov al, 'H'          ; Character to print
int 0x10             ; BIOS interrupt to print character
mov al, 'i'
int 0x10
jmp $                ; Infinite loop to stop execution

times 510 - ($ - $$) db 0 ; Pad the rest of the 512 bytes with zeros
dw 0xAA55            ; Boot signature
