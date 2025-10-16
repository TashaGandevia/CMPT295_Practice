    .section .note.GNU-stack,""
    .globl fib
    .extern debug_print
    .text

## concepts:
#       basics
#       push and pop on the stack
#       memory
#       recursion

fib:
    push %rbp
    mov %rsp, %rbp

    cmp $1, %rdi
    jg recurse
    mov %rdi, %rax
    ret

recurse:
    ret

