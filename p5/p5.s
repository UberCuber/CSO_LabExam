.global findUnique

# ll* arr in %rdi, ll* output in %rsi, ll n in %rdx
findUnique:
    movq $0, %rax; # m in %rbx
    movq (%rdi), %r8 # arr[0] in %r8
    movq %r8, (%rsi, %rax, 8)
    movq $1, %r9
    incq %rax

forLoop:
    cmpq %r9, %rdx
    jle return
    movq (%rdi, %r9, 8), %rbx # arr[i] in %rbx
    leaq -1(%rax), %r10
    movq (%rsi, %r10, 8), %rcx # output[m-1] in %rcx
    cmpq %rbx, %rcx
    je endForLoop
    movq %rbx, (%rsi, %rax, 8)
    incq %rax

endForLoop:
    incq %r9
    jmp forLoop

return:
    ret




    
