.global checkCircularPrime

# ll n in %rdi, ll d in %rsi
checkCircularPrime:
    movq $1, %r8 # num in %r8
    movq $1, %r9
    
findPower:
    cmpq %r9, %rsi
    jle forLoopPrep
    imulq $10, %r8
    incq %r9
    jmp findPower

forLoopPrep:
    movq $0, %r9 # i in %r9
    movq $10, %r10
    movq %r8, %rax
    cqto
    idivq %r10
    movq %rax, %r10 # store num/10 in %r10

forLoop:
    cmpq %r9, %rsi
    jle return1
    movq %rdi, %rax
    cqto 
    idivq %r8
    cmpq %rdx, %r10
    jg return0
    movq %rdx, %rdi
    imulq $10, %rdi
    addq %rax, %rdi

    movq $2, %r11

checkPrime:
    movq %r11, %r12
    imulq %r12, %r12
    cmpq %r12, %rdi
    jl return1

    movq %rdi, %rax
    cqto 
    idivq %r11
    testq %rdx, %rdx 
    je return0
    incq %r11
    jmp checkPrime

return1:
    movq $1, %rax
    ret
    
return0:
    movq $0, %rax
    ret