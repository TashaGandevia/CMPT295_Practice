    .section .note.GNU-stack,""
    .global compare3
    .text

# a = rdi
# b = rsi
# c = rdx

compare3:
    cmp %rsi, %rdi      # compare a and b
    jg RDI              # a > b
    cmp %rdx, %rsi      # b > a; compare b and c
    jg RSI              # b > c
    jg RDX              # c > b


RDI:
    cmp %rdi, %rdx      # compare c and a
    jg RDX              # c > a
    mov %rdi, %rax      # a > c
    ret                 # return a
RSI:
    mov %rsi, %rax      # move b to rax
    ret                 # return b

RDX:
    mov %rdx, %rax      # move c to rax
    ret                 # return c
