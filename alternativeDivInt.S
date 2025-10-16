    .section .note.GNU-stack,""
    .global alternativeDivInt
    .text


alternativeDivInt:
    mov %rdi, %rax          # moves rdi to rax
    cqto                    # sign-extend rax into rdx:rax (high:low)
    idiv %rsi               # divides signed 128-bit (rdx:rax) by signed 64-bit rsi
    ret                     # returns rax