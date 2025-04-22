.global wavyArray

# ll* arr in %rdi, ll n in %rsi
wavyArray:
    movq $0, %r8
    
bubbleSortOuter:
    cmpq %r8, %rsi
    jle nextForPrep
    movq $0, %r9
    leaq -1(%rsi), %r10
    subq %r8, %r10

bubbleSortInner:
    cmpq %r9, %r10
    jle bubbleSortOuterEnd
    leaq 1(%r9), %r11
    movq (%rdi, %r9, 8), %r12
    cmpq (%rdi, %r11, 8), %r12
    jle bubbleSortInnerEnd
    movq (%rdi, %r11, 8), %r13
    movq %r13, (%rdi, %r9, 8)
    movq %r12, (%rdi, %r11, 8)

bubbleSortInnerEnd:
    incq %r9
    jmp bubbleSortInner

bubbleSortOuterEnd:
    incq %r8
    jmp bubbleSortOuter

nextForPrep:
    movq $0, %r8
    leaq -1(%rsi), %r9

nextFor:
    cmpq %r8, %r9
    jle return
    leaq 1(%r8), %r11
    movq (%rdi, %r8, 8), %r10
    movq (%rdi, %r11, 8), %r12
    movq %r12, (%rdi, %r8, 8)
    movq %r10, (%rdi, %r11, 8)
    addq $2, %r8
    jmp nextFor

return:
    ret


