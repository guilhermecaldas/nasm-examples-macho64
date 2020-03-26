;  adapted from https://www.tutorialspoint.com/assembly_programming/assembly_macros.htm
        global _main                   ; must be declared for using gcc

; A macro with two parameters
; Implements the write system call
        %macro write_string 2
        mov rax, 0x2000004
        mov rdi, 1
        mov rsi, %1
        mov rdx, %2
        syscall
        %endmacro

        section	.text

_main:                                 ; tell linker entry point
        write_string msg1, len1
        write_string msg2, len2
        write_string msg3, len3

        mov rax, 0x2000001             ; system call number (sys_exit)
        syscall                        ; call kernel

        section	.data
msg1:
        db	'Hello, programmers!', 0xA, 0xD
        len1 equ $ - msg1

msg2:
        db 'Welcome to the world of, ', 0xA, 0xD
        len2 equ $- msg2

msg3:
        db 'Mac OS assembly programming! '
        len3 equ $- msg3
