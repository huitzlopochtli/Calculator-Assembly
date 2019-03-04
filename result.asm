RESULT PROC
    CMP COUNTER,'+'
    JE CALL PLUS
    CMP COUNTER,'-'
    JE CALL MINUS
    CMP COUNTER,'/'
    JE CALL DIVIDE
    CMP COUNTER,'*'
    JE CALL MULTIPLICATION
    CMP COUNTER,'!'
    JE CALL FACTORIAL
    CMP COUNTER,'^'
    JE CALL POWER
     
    AFTERMATH:
    
    MOV SP,100H
    
    XOR CX,CX
    XOR AX,AX
    
    
    CMP OPERAND,0
    JGE DO
    NEG OPERAND
    MOV AH,2
    MOV DL,'-'
    INT 21H
    XOR AX,AX
    
    
    DO:
    MOV AX,OPERAND
    L2:
    XOR DX,DX
    MOV BX,10
    DIV BX   
    
    PUSH DX
    XOR DX,DX 
    CMP AX,0
    JE OUTPUT
    JNE L2
    
    
    
    OUTPUT:
    POP DX
    ADD DX,30H
    MOV AH,2
    INT 21H
    CMP SP,100H
    JNE OUTPUT
    JE END
    RET 
    RESULT ENDP