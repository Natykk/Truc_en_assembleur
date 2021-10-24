mov ah,0x0e
mov al , 64
min:
    add al, 33
    int 0x10     ; 32 de diff
maj: 
    sub al, 31
    int 0x10
    cmp al , 90
    jne min

jmp $
times 510-($-$$) db 0
db 0x55, 0xAA