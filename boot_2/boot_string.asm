[org 0x7c00]

mov bx,HELLO_MSG
call print_string

mov bx,GOODBYE_MSG
call print_string

mov al,':'
int 0x10

mov dx,HELLO_MSG
call my_print_hex

jmp $

%include "print_string.asm"
%include "print_hex.asm"

HELLO_MSG:
    db 'Hello,World!',0

GOODBYE_MSG:
    db 'Good bye!',0

times 510-($-$$) db 0

dw 0xaa55