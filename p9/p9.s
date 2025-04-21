.global binarySearch

# ll* arr in %rdi, ll start in %rsi, ll end %rdx, ll target in %rcx
binarySearch:
    cmpq %rsi, %rdx
    jl baseCase
    leaq (%rsi, %rdx), %r8
    sarq $1, %r8

    cmpq (%rdi, %r8, 8), %rcx
    jne elseStatements
    movq %r8, %rax
    ret

elseStatements:
    cmpq (%rdi, %r8, 8), %rcx
    jle else
    leaq 1(%r8), %rsi
    callq binarySearch
    ret

else:
    leaq -1(%r8), %rdx
    callq binarySearch
    ret

baseCase:
    movq $-1, %rax
    ret
