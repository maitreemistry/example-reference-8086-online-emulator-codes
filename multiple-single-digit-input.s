count: db 0

start:
mov ah, 0x001
int 0x0021
sub al, 0x0030
mov byte count, al
mov si, 0x0040
mov ax, 0
mov cx, word count
jmp multiple_input

multiple_input:
mov ah, 0x001
int 0x0021
sub al, 0x0030
mov byte [si], al
mov dl, 0x0020
mov ah, 0x002
int 0x0021
inc si
loop multiple_input

HLT