.global checkBalanced

# ll n in %rdi, char* str in %rsi
checkBalanced:
    movq $0, %r8 # stack element count in %r8
    movq $0, %r9 # i in %r9
    movq %rsp, %r12

forLoop:
    cmpq %r9, %rdi
    jle checkStackEmpty
    movzbq (%rsi, %r9), %r10 # store str[i] in %r10
    
    cmpq $123, %r10 
    je pushInStack

    cmpq $91, %r10
    je pushInStack

    cmpq $40, %r10
    je pushInStack

    testq %r8, %r8
    je return0

    cmpq $125, %r10
    sete %bl
    cmpq $123, (%rsp) 
    setne %cl
    testb %bl, %cl
    jne return0

    cmpq $93, %r10
    sete %bl
    cmpq $91, (%rsp) 
    setne %cl
    testb %bl, %cl
    jne return0

    cmpq $41, %r10
    sete %bl
    cmpq $40, (%rsp) 
    setne %cl
    testb %bl, %cl
    jne return0

    popq %r15
    decq %r8

endForLoop:
    incq %r9
    jmp forLoop

pushInStack:    
    incq %r8 # increment no. of elements in stack
    pushq %r10
    jmp endForLoop

checkStackEmpty:
    testq %r8, %r8
    jne return0
    movq %r12, %rsp
    movq $1, %rax
    ret

return0:
    movq %r12, %rsp
    movq $0, %rax
    ret