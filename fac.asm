 FACTORIAL PROC
    CMP COUNTER,0
    JNE THAT
    MOV COUNTER,'!'
    MOV AX,1
    MOV DX,0
    TOP:
    MUL BX
    DEC BX
    CMP BX,0
    JNE TOP
    
    MOV OPERAND,AX
    CMP DX,0
    JNE OVERFLOW
    JMP L1
    
    THAT:
    
    JMP AFTERMATH
    
    RET
    FACTORIAL ENDP