MOV AX,2000H
MOV DS,AX
CLC
MOV AL,[5000H]
MOV BL,[5001H]
ADD AL,BL
DAA
MOV [6000H],AL
MOV AL,00H
ADC AL,AL
MOV [6001H],AL
MOV AH,4CH
INT 21H