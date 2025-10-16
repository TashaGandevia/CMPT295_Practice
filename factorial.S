    .section .note.GNU-stack,""
    .global factorial
    .text


factorial:
    test %rdi, %rdi         # is N > 0 as it enters?
    je zero                 # yes, jump to loop
    mov %rdi, %rbx
    mov %rdi, %rax
    push %rax
    jmp loop

loop:
    sub $1, %rbx
    test %rbx, %rbx
    je one
    jmp multiply

multiply:
    pop %rax
    imul %rbx, %rax
    push %rax
    jmp loop


zero:
    mov $1, %rax            # return 1 if N == 0
    ret

one:
    pop %rax
    ret