    .section .note.GNU-stack,""
    .global sumToN
    .text


sumToN:
    mov %rdi, %rbx              # put rdi into rbx for safe keeping
    mov %rdi, %rax              # put N into accumulator
    push %rax                   # push it onto the stack
    test %rdi, %rdi             # is N == 0?
    je zero                     # if so, go to Zero function

    jmp decrementN              # move to loop

decrementN:
    sub $1, %rbx                #
    pop %rax
    add %rbx, %rax
    push %rax

    test %rbx, %rbx
    je zero

    jmp decrementN


zero:
    pop %rax
    ret