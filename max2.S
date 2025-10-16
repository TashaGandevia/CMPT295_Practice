    .section .note.GNU-stack,""
    .global max2
    .text


max2:
    cmp %rdi, %rsi
    jg greater
    mov %rdi, %rax
    ret


greater:
    mov %rsi, %rax
    ret