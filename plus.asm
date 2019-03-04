PROC PLUS
    CMP COUNTER,'-'
    JE S2
    AD2:
    MOV COUNTER,'+'
    ADD OPERAND,BX
    XOR BX,BX
    
    CMP AL,'='
    JE AFTERMATH
    JMP L1
    S2:
    SUB OPERAND,BX
    XOR BX,BX
    JMP AD2
    
    RET
    PLUS ENDP