        global _main                   ; must be declared for using gcc
        default rel

        section	.text
print_achar:
        mov rax, 0x2000004
        mov rdi, 1
        mov rsi, achar
        mov rdx, 1
        syscall
        ret

next:
        push rcx
        call print_achar
        pop rcx
        inc	byte [achar]
        loop next
        ret

_main:                                 ; tell linker entry point
        mov rcx, 80
        call next

        mov	rax, 0x2000001             ; system call number (sys_exit)
        mov rdi, 0
        syscall                        ; call kernel

        section .data
achar:
        dd '0'
