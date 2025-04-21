.global findScore
# char* str in %rdi
findScore:
    movq $0, %rax
    movq $1, %r8 # n in %r8

whileLoop:
    movzbq (%rdi, %r8), %r9 # store str[n] in %r9
    testq %r9, %r9
    je return
    leaq -1(%r8), %r10 
    movzbq (%rdi, %r10), %r11 # store str[n-1] in %r11
    movq %r9, %r12 # move str[n] to %r12
    subq %r11, %r12 # store str[n] - str[n-1]
    movq %r12, %r13
    negq %r13 # store -(str[n] - str[n-1]) in %r13
    cmpq $0, %r13
    cmovg %r13, %r12 
    # final absolute diff in %12

    addq %r12, %rax
    incq %r8
    jmp whileLoop

return:
    ret
