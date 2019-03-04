;;;Simple Calculator;;;
.STACK 100H
.DATA

MSG1      DB 'This only has function like: ',0AH,0DH,' + - * / ! ^',0AH,0DH,'$'
MSG2      DB 'Input Example : A + B - C = D',0AH,0DH,0AH,0DH,'$'
OF        DB 'OverFlow!$'
NL        DB 0AH,0DH,'$'
OPERAND   DW 0
COUNTER   DW 0
REMAINDER DW 0
POINT     DW 0
DIVISOR   DW 0
VAR1      DW ?
VAR2      DW ?


.CODE                                                        

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    LEA DX,MSG2
    INT 21H
    
    START:
    MOV AH,9       ;EMPTYING EVERY THING
    LEA DX,NL
    INT 21H
    XOR AX,AX
    XOR BX,BX
    XOR CX,CX
    XOR DX,DX
    MOV OPERAND,0
    MOV COUNTER,0
    MOV REMAINDER,0
    
    CALL INPUT
    
    
    
    END:
    CMP REMAINDER,0 ; IF HAS REMAINDER
    JNE R_WORK
    
    R_WORK:
    JNE D_REMAINDER
    JMP START
    
    EMAIN:
    MOV AH,4CH
    INT 21H
    
    OVERFLOW:
    MOV AH,9
    LEA DX,OF
    INT 21H
    JMP START
    
    MAIN ENDP
 
INCLUDE input.asm
    
INCLUDE minus.asm
                          
INCLUDE plus.asm
    
INCLUDE divide.asm
 
INCLUDE MUL.asm
 
INCLUDE pow.asm
 
INCLUDE fac.asm
    
    
INCLUDE result.asm    
        
    
END MAIN