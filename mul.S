    .section .note.GNU-stack,""
    .global mul
    .text


## concepts:
#       basics
#       multiplication

mul:
    mov %rdi, %rax              # moves rdi to rax
    imul %rsi, %rax             # multiplies rsi and rax
    ret                         # returns rax