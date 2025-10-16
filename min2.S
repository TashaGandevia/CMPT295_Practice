    .section .note.GNU-stack,""
    .global min2
    .text

## concepts:
#       basics
#       comparison

min2:
    cmp %rdi, %rsi
    jl lesser
    mov %rdi, %rax
    ret


lesser:
    mov %rsi, %rax
    ret