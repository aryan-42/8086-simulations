EMU8086 GENERATED LISTING. MACHINE CODE <- SOURCE.
 
data-transfer.exe_ -- emu8086 assembler version: 4.08  
 
[ 18-12-2023  --  23:35:27 ] 
 
===================================================================================================
[LINE]     LOC: MACHINE CODE                          SOURCE
===================================================================================================
 
[   1]        :                                       DATA SEGMENT
[   2]    0000: 0A 01 02 03 04 05 06 07 08 09 0A      S1 DB 10,1,2,3,4,5,6,7,8,9,10
[   3]    000B: 00 00 00 00 00 00 00 00 00 00         S2 DB 10 DUP(0)
[   4]        :                                       DATA ENDS
[   5]        :                                       
[   6]        :                                       CODE SEGMENT
[   7]        :                                       ASSUME CS:CODE,DS:DATA
[   8]        :                                       
[   9]    0020: B8 00 00                              START:MOV AX,DATA
[  10]    0023: 8E D8                                 MOV DS,AX
[  11]    0025: 8E C0                                 MOV ES,AX
[  12]    0027: BE 00 00                              LEA SI,S1
[  13]    002A: BF 0B 00                              LEA DI,S2
[  14]    002D: 8A 0C                                 MOV CL,[SI]
[  15]    002F: B5 00                                 MOV CH,00H
[  16]    0031: 46                                    INC SI
[  17]    0032: FC                                    CLD
[  18]    0033: F3 A4                                 REP MOVSB
[  19]    0035: B8 4C 00                              MOV AX,4CH
[  20]    0038: CD 21                                 INT 21H
[  21]        :                                       CODE ENDS
[  22]        :                                       END START
[  23]        :                                       
 
===================================================================================================
 
EXE HEADER - bytes from 0000 to 01FF inclusive.

0000: 4D      -   exe signature (M)
0001: 5A      -   exe signature (Z)
0002: 3A      -   bytes on last page (l.byte)
0003: 00      -   bytes on last page (h.byte)
0004: 02      -   512 byte pages in file (l.byte)
0005: 00      -   512 byte pages in file (h.byte)
0006: 01      -   relocations (l.byte)
0007: 00      -   relocations (h.byte)
0008: 20      -   paragraphs in header (l.byte)
0009: 00      -   paragraphs in header (h.byte)
000A: 00      -   minimum memory (l.byte)
000B: 00      -   minimum memory (h.byte)
000C: FF      -   maximum memory (l.byte)
000D: FF      -   maximum memory (h.byte)
000E: 00      -   SS - stack segment (l.byte)
000F: 00      -   SS - stack segment (h.byte)
0010: 00      -   SP - stack pointer (l.byte)
0011: 00      -   SP - stack pointer (h.byte)
0012: 36      -   check sum (l.byte)
0013: 50      -   check sum (h.byte)
0014: 00      -   IP - instruction pointer (l.byte)
0015: 00      -   IP - instruction pointer (h.byte)
0016: 02      -   CS - code segment (l.byte)
0017: 00      -   CS - code segment (h.byte)
0018: 1E      -   relocation table adress (l.byte)
0019: 00      -   relocation table adress (h.byte)
001A: 00      -   overlay number (l.byte)
001B: 00      -   overlay number (h.byte)
001C: 01      -   signature (l.byte)
001D: 00      -   signature (h.byte)
001E: 01      -   relocation table - offset inside segment (l.byte)
001F: 00      -   relocation table - offset inside segment (h.byte)
0020: 02      -   relocation table - segment anchor (l.byte)
0021: 00      -   relocation table - segment anchor (h.byte)
0022 to 01FF  -   reserved relocation area  (00) 




===================================================================================================
