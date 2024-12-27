;factorial
def fact{
    push ax
    mov ax, cx
    dec cx
    jz outt
    
    back:
    mul cx
    dec cx
    jnz back
}

start:
;take input
mov ah, 0x01
int 0x00021
sub al, 0x00030
mov ah, 0x00
;transfer the input to cx
mov cx, ax
jz outt
;call the procedure
call fact
mov word[0x00000], ax
hlt
outt:
mov word[0x00000], 0x01