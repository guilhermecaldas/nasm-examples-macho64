        global _main
        
        segment .text
_main:
        mov rax, 0x2000004             ; write
        mov rdi, 1                     ; stdout
        mov rsi, msg                   ; msg text
        mov rdx, msg.len               ; msg length
        syscall

        mov rax, 0x2000001             ; exit
        mov rdi, 0
        syscall

        segment .data
msg:
        db "Hello, world!", 0xA
        .len equ $ - msg
