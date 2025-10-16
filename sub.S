    .section .note.GNU-stack,""
    .global sub
    .text

## concepts:
#       basics
#       subtraction

sub:
    mov %rdi, %rax      # moves rdi to rax
    sub %rsi, %rax      # subtracts rsi from rax
    ret                 # returns rax