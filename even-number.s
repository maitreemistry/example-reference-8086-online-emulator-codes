VAL: DB 0X03
DB 0X05
DB 0X04
LAST:DB 0X06

start:

MOV CL, 0X04
MOV SI, OFFSET VAL
MOV DI, 0X00040

CHECK:
MOV AL, BYTE[SI]
MOV BL, 0X02
DIV BL
INC AH
DEC AH
JZ EVEN

INC SI
DEC CL
JNZ CHECK

JMP OUTT

EVEN:
MOV CH, BYTE[SI]
MOV BYTE[DI], CH
INC DI
INC SI
DEC CL
JNZ CHECK

OUTT:

HLT