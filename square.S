    .section .note.GNU-stack,""
    .global square
    .text

square:
    mov %rdi, %rax          # move rdi into rax
    imul %rax, %rax         # multiply rax by itself
    ret                     # return rax