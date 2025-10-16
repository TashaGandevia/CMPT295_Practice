    .section .note.GNU-stack,""
    .global square
    .text

## concepts:
#       basics
#       multiplication

square:
    mov %rdi, %rax          # move rdi into rax
    imul %rax, %rax         # multiply rax by itself
    ret                     # return rax