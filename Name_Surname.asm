section .data
    name        db 'Shardul', 10
    nameLen     equ $ - name

    surname     db 'Deshpande', 10
    surnameLen  equ $ - surname

%macro print_string 2
    mov eax, 4
    mov ebx, 1
    mov ecx, %1
    mov edx, %2
    int 0x80
%endmacro

%macro exit_program 0
    mov eax, 1
    mov ebx, 0
    int 0x80
%endmacro

section .text
    global _start

_start:
    print_string name, nameLen
    print_string surname, surnameLen
    exit_program
