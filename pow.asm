POWER PROC
    MOV COUNTER, '^'
    CMP OPERAND,0
    JE ALTERPOW
    MOV AX,OPERAND
    XOR DX,DX
    
    POW:
    CMP BX,1
    JE THIS
    MUL AX
    DEC BX
    CMP BX,1
    JNE POW
    
    THIS:
    MOV OPERAND,AX
    CMP DX,0
    JNE OVERFLOW
    JMP AFTERMATH
    
    
    ALTERPOW:
    MOV OPERAND,BX
    XOR BX,BX
    JMP L1
           
    RET
    POWER ENDP