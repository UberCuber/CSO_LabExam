.global NGL

# ll* arr in %rdi, ll* output in %rsi, ll n %rdx
NGL:
    movq $0, %r8 
    movq %rsp, %r15
    movq $0, %r9

forLoop:
    cmpq %r9, %rdx
    jle return
    movq (%rdi, %r9, 8), %r10

whileLoop:  
    testq %r8, %r8
    je ifStatements
    cmpq (%rsp), %r10
    jle ifStatements
    popq %r14
    decq %r8
    jmp whileLoop

ifStatements:
    testq %r8, %r8
    jne elseStatement
    movq $-1, (%rsi, %r9, 8)
    jmp pushInStack

elseStatement:
    movq (%rsp), %r11
    movq %r11, (%rsi, %r9, 8)
    
pushInStack:    
    pushq %r10
    incq %r8
    incq %r9
    jmp forLoop

return:
    movq %r15, %rsp
    ret

