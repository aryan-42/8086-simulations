MOV AX,2000H
MOV DS,AX
CLC
MOV AL,00H
LEA SI,[5000H]
MOV [SI],AL
INC SI
INC AL
MOV [SI],AL
MOV CL,0AH
MOV CH,00H
SUB CX,02H
L1: MOV AL,[SI-1]
ADD AL,[SI]
DAA
INC SI
MOV [SI],AL
LOOP L1
MOV AH,4CH
INT 21H