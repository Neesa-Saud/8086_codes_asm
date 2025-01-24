;to find largest among two numbers
.model small
.stack 100h

.data
    num1 db 15h     ; First number
    num2 db 20h    ; Second number
    largest db 0     ; Store the largest number

.code
main:
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Load num1 into AL
    mov al, num1

    ; Compare num1 and num2
    mov bl, num2
    cmp al, bl        ; Compare AL with BL
    jg  num1_is_largest

    ; If num2 is larger, move num2 into largest
    mov largest, bl
    jmp end_program

num1_is_largest:
    ; If num1 is larger, move num1 into largest
    mov largest, al

end_program:
    ; Exit program
    mov ah, 4Ch
    int 21h

END main
