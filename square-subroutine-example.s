DEF SQ
{
PUSH AX
MOV AX,BX
MUL BX
MOV BX,AX
POP AX
RET 
}

start:
MOV BX, 0X05
CALL SQ
HLT