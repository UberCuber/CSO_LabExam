.global fillArray

# ll* arr in %rdi, ll n in %rsi
# constants 2 and 7 in %r10, %r11
# checks for divisibility: 
#   %cl for 2
#   %bl for 7

fillArray:
    movq $1, %r8 # i in %r8
    movq $2, %r10
    movq $7, %r11

forLoop:
    cmpq %r8, %rsi
    jl return
    leaq -1(%r8), %r9 # store i - 1 somwhere

    movq %r8, %rax
    cqto
    idivq %r10 # dividing by 2
    testq %rdx, %rdx # checking if remainder is 0
    sete %cl # 1 if 0 otherwise 0

    movq %r8, %rax
    cqto
    idivq %r11 # dividing by 7
    testq %rdx, %rdx # checking if remainder is 0
    sete %bl # 1 if 0 otherwise 0

    testb %cl, %bl
    je testForTwo
    movq $-3,  (%rdi, %r9, 8)
    incq %r8
    jmp forLoop;

testForTwo:
    testb %cl, %cl
    je testForSeven
    movq $-1, (%rdi, %r9, 8)
    incq %r8
    jmp forLoop

testForSeven:
    testb %bl, %bl
    je else
    movq $-2, (%rdi, %r9, 8)
    incq %r8
    jmp forLoop

else:
    movq %r8, (%rdi, %r9, 8)
    incq %r8
    jmp forLoop

return:
    ret