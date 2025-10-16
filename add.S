    .section .note.GNU-stack,""
    .global add
    .text

add:
    mov %rdi, %rax          # moves rdi to rax
    add %rsi, %rax          # adds rsi to rax
    ret                     # returns rax