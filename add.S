    .section .note.GNU-stack,""
    .global add
    .text

## concepts:
#       basics

add:
    mov %rdi, %rax          # moves rdi to rax
    add %rsi, %rax          # adds rsi to rax
    ret                     # returns rax