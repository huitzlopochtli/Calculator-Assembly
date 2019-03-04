INPUT PROC
    L1:
    MOV AH,1
    INT 21H
    
    
    CMP AL,'+'
    JE CALL PLUS
    CMP AL,'-'
    JE CALL MINUS
    CMP AL,'/'
    JE CALL DIVIDE
    CMP AL,'*'
    JE CALL MULTIPLICATION
    CMP AL,'^'
    JE CALL POWER
    CMP AL,'!'
    JE CALL FACTORIAL
    CMP AL,'='
    JE CALL RESULT 
    CMP AL,'X'         ;TERMINATOR
    JE EMAIN
    CMP AL,'x'
    JE EMAIN
    CMP AL,'C'         ;TO START AGAIN
    JE END
    CMP AL,'c'
    JE END
    CMP AL,0DH
    JE END
    
    SUB AL,30H         ;CONVERT TO DEC
    MOV AH,0
    PUSH AX
    MOV AX,10
    MUL BX
    POP BX
    ADD BX,AX          ;MOVING EVERYTHING IN ONE REG
    
    JMP L1
    
    RET
    INPUT ENDP