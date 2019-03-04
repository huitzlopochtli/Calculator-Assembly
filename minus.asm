PROC MINUS
    CMP COUNTER,'+'   ;IF + WAS THE 1ST OPERATOR
    JE S1
    AD1:
    MOV COUNTER,'-'
    CMP OPERAND,0
    JE  ALTERMINUS
    
    SUB OPERAND,BX
    
    CALC:             ;'CALC' NAME WAS USED FOR NO REASON JUST AN LEVEL
    XOR BX,BX         ; TO JUMP TO OUTPUT
    
    CMP AL,'='
    JE AFTERMATH      ;JMP TO OUTPUT
    JMP L1
    
    ALTERMINUS:
    MOV OPERAND,BX
    JMP CALC
    S1:               ;+ WORK DONE BEFORE
    ADD OPERAND,BX
    XOR BX,BX
    JMP AD1           ;JMP TO DO - WORK
                         
    RET
    MINUS ENDP