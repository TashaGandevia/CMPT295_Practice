    .section .note.GNU-stack,""
    .globl fib
    .extern debug_print
    .text

# base case: fib(2) = 0 + 1 = 1

fib:
    push %rbp
    mov %rsp, %rbp

    cmp $1, %rdi
    jg recurse
    mov %rdi, %rax
    ret

recurse:
    ret

