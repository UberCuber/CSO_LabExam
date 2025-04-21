.global check

# ll n in %rdi
check:
    movq %rdi, %r8 # n in %r8
    movq $0, %r9 # sum in %r9
    movq $10, %r10

outerWhile:
    cmpq $0, %r8
    jle ifCheck
    movq $1, %r11 # factorial in %r11
    movq %r8, %rax
    cqto
    idivq %r10 

innerWhile:
    cmpq $0, %rdx
    jle outerWhileEnd
    imulq %rdx, %r11
    decq %rdx
    jmp innerWhile

outerWhileEnd:
    addq %r11, %r9
    movq %rax, %r8
    jmp outerWhile


ifCheck:
    cmpq %r9, %rdi
    jne else
    movq $1, %rax
    ret

else:
    movq $0, %rax
    ret