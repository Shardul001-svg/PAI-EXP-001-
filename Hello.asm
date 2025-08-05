section .data
    msg db "Hello, World!", 0xA  ; The string + newline character
    len equ $ - msg              ; Calculate length of string

section .text
    global _start

_start:
    ; sys_write (stdout, msg, len)
    mov eax, 4          ; syscall number for sys_write
    mov ebx, 1          ; file descriptor 1 = stdout
    mov ecx, msg        ; pointer to message
    mov edx, len        ; length of message
    int 0x80            ; make syscall

    ; sys_exit (0)
    mov eax, 1          ; syscall number for sys_exit
    xor ebx, ebx        ; exit code 0
    int 0x80            ; make syscall
