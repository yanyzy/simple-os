my_print_hex:
    pusha
    mov cx,0

start_loop:
    cmp cx,4
    je end

    mov ax,dx
    and ax,0x000f
    add al,0x30

    cmp al,0x39
    jle then_block

    add al,7

then_block:
    mov bx,HEX_OUT+5
    sub bx,cx
    mov [bx],al
    ror dx,4
    add cx,1
    jmp start_loop

end:
    mov bx,HEX_OUT
    call print_string
    popa
    ret

HEX_OUT:
    db '0x0000',0