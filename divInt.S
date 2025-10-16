    .section .note.GNU-stack,""
    .global divInt
    .text

## concepts:
#       basics
#       division with rdx:rax
#       xor

divInt:
    mov %rdi, %rax          # moves rdi into rax
    xor %rdx, %rdx          # 0:rax
    div %rsi                # for unsigned divide (rdx:rax) by rsi
    ret                     # returns rax



