    .section .note.GNU-stack,""
    .global isPositive
    .text


## concepts:
#       basics
#       branching
#       test / self-comparison

isPositive:
    test %rdi, %rdi
    jg pos
    mov $0, %rax
    ret

pos:
    mov $1, %rax
    ret