    .section .note.GNU-stack,""
    .global isPositive
    .text

isPositive:
    test %rdi, %rdi
    jg pos
    mov $0, %rax
    ret

pos:
    mov $1, %rax
    ret