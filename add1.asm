;to add two 8-bit numbers
.model small
.stack 100h

.data
    num1 db 12h     ; First 8-bit number
    num2 db 34h    ; Second 8-bit number
    result db 0      ; Result will be stored here

.code
main:
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Load num1 into AL
    mov al, num1

    ; Add num2 to AL
    add al, num2

    ; Store the result
    mov result, al

    ; Exit program
    mov ah, 4Ch
    int 21h

END main 
