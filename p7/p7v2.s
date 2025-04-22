.global checkCondition

# ll n in %rdi, ll* arr in %rsi
checkCondition:
    movq $1, (%rdi)
    movq $1, (%rdi, 1, 8)
    movq $2, (%rdi, 2, 8)
    movq $6, (%rdi, 3, 8)
    movq $24, (%rdi, 4, 8)
    movq $120, (%rdi, 5, 8)
    movq $720, (%rdi, 6, 8)
    movq $5040, (%rdi, 7, 8)
    movq $40320, (%rdi, 8, 8)
    movq $362880, (%rdi, 9, 8)

    movq $0, %r8
    movq %rsi, %r15

whileLoop:
    cmpq $0, %rsi
    jle return
    movq %rsi, %rax
    movq $10, %r9
    cqto
    idivq %r9
    movq (%rdi, %rdx, 8), %r10
    addq %r10, %r8
    movq %rax, %rsi
    jmp whileLoop

return:
    cmpq %r8, %r15
    jne return0
    movq $1, %rax
    ret

return0:
    movq $0, %rax
    ret
    