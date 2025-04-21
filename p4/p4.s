.global findSum

# ll* arr in %rdi, ll m in  %rsi, ll n in %rdx
findSum:
    movq $0, %r13
    movq $0, %r8 # i in %r8
    movq %rdx, %r15

outerforLoop:
    cmpq %r8, %rsi
    jle return
    movq $0, %r9 # j in %r9

innerforLoop:   
    cmpq %r9, %r15
    jle outerforLoopEnd
    
    movq %r8, %r10
    imulq %r15, %r10
    addq %r9, %r10 # store i*n + j in %r10
    movq (%rdi, %r10, 8), %r11 # store arr[%r10] in %r11

    movq $3, %r14
    movq %r11, %rax
    cqto
    idivq %r14
    testq %rdx, %rdx
    sete %bl

    movq $5, %r14
    movq %r11, %rax
    cqto
    idivq %r14
    testq %rdx, %rdx
    setne %cl

    testb %bl, %cl
    je innerforLoopEnd
    addq %r11, %r13

innerforLoopEnd:
    incq %r9
    jmp innerforLoop

outerforLoopEnd:
    incq %r8
    jmp outerforLoop

return:
    movq %r13, %rax
    ret

