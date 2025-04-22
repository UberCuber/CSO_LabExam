.global checkConsecutive

# ll* arr in %rdi, ll n in %rsi
checkConsecutive:
    movq $0, %r8 # i in %r8

bubbleSortOuter:
    cmpq %r8, %rsi
    jle nextLoopPrep
    movq $0, %r9 # store j in %r9
    leaq -1(%rsi), %r10
    subq %r8, %r10 # store n - 1 - i 

bubbleSortInner:
    cmpq %r9, %r10
    jle endbubbleSortOuter
    movq %r9, %r11
    incq %r11 # store j + 1 in %r11
    movq (%rdi, %r11, 8), %r12 # store arr[j+1] in %r12
    cmpq (%rdi, %r9, 8), %r12
    jg endbubbleSortInner
    movq (%rdi, %r9, 8), %r13 
    movq %r12, (%rdi, %r9, 8)
    movq %r13, (%rdi, %r11, 8)

endbubbleSortInner:
    incq %r9
    jmp bubbleSortInner

endbubbleSortOuter:
    incq %r8
    jmp bubbleSortOuter

nextLoopPrep:
    movq $0, %r8
    leaq -1(%rsi), %r9

nextLoop:
    cmpq %r8, %r9
    jle return1
    leaq 1(%r8), %r10
    movq (%rdi, %r8, 8), %r11
    incq %r11 
    cmpq (%rdi, %r10, 8), %r11
    jne return0
    incq %r8
    jmp nextLoop

return0:
    movq $0, %rax
    ret

return1:
    movq $1, %rax
    ret
    


