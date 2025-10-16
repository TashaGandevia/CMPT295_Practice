    .section .note.GNU-stack,""
    .global modInt
    .text


## concepts:
#       basics
#       mod
#       xor
#       div

modInt:
    mov %rdi, %rax              # dividend
    xor %rdx, %rdx              # zero extend to 128-bit
    div %rsi                    # divide by rsi
    mov %rdx, %rax              # move remainder into rax
    ret                         # return rax