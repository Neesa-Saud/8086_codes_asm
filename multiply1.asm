;to multiply two 8-bit numbers
.model small
.stack 100h

.data
    num1 db 06h     ; First 8-bit number
    num2 db 05h     ; Second 8-bit number
    result dw 0      ; Store the 16-bit result

.code
main:
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Load num1 into AL
    mov al, num1

    ; Multiply AL by num2
    mov bl, num2
    mul bl            ; AX = AL * BL

    ; Store the result (16-bit) in result
    mov word ptr result, ax

    ; Exit program
    mov ah, 4Ch
    int 21h

END main
