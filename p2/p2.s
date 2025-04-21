.global checkPalindrome
# ll n in %rdi
checkPalindrome:
    movq %rdi, %r8 # store original in %r8
    movq $0, %r9 # store reversed in %r9
    movq $10, %r10 # store 10 in %r10

whileLoop:
    cmpq $0, %rdi
    jle conditions

    imulq $10, %r9 # reversed*10
    movq %rdi, %rax
    cqto
    idivq %r10 # finding n%10
    addq %rdx, %r9
    movq %rax, %rdi # n = n/10
    jmp whileLoop
    
conditions:
    cmpq %r8, %r9
    jne else
    movq $1, %rax
    ret

else:
    movq $0, %rax
    ret
