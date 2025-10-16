    .section .note.GNU-stack,""
    .global isEven
    .text


isEven:
    push %rbx               # preserved register
    mov %rdi, %rax          # dividend into rax
    xor %rdx, %rdx           # zero high half for unsigned divide
    mov $2, %rbx            # divisor = 2
    div %rbx                # (rdx:rax) / 2
    test %rdx, %rdx         # check remainder
    pop %rbx                # restore rbx from stack
    jz even                 # go to 'even' label if zero
    jmp odd                 # go to `odd` label if not


even:
    mov $1, %rax            # true
    ret                     # returns rax

odd:
    mov $0, %rax            # false
    ret                     # returns rax