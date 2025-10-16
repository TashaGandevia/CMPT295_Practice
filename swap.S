    .section .note.GNU-stack,""
    .global swap
    .text

## concepts:
#       basics
#       memory
#       push and pop
#       returning two values via memory

swap:
    # rdi = a; rsi = b
    push %rbp               # base pointer
    mov %rsp, %rbp          # put stack pointer into base pointer

    mov (%rdi), %rax        # load *a into rax
    mov (%rsi), %rbx        # load *b into rbx

    mov %rbx, (%rdi)        # store old *b into *a
    mov %rax, (%rsi)        # store old *a into old *b

    pop %rbp
    ret