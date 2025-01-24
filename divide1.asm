;to divide two 8-bit numbers
.model small
.stack 100h

.data
    num1 db 40h    ; Dividend (64)
    num2 db 08h    ; Divisor (8)
    quotient db 0    ; Quotient
    remainder db 0   ; Remainder

.code
main:
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Load num1 into AL (dividend)
    mov al, num1

    ; Load num2 into BL (divisor)
    mov bl, num2

    ; Perform division (AL / BL)
    div bl            ; AL = quotient, AH = remainder

    ; Store quotient and remainder
    mov quotient, al
    mov remainder, ah

    ; Exit program
    mov ah, 4Ch
    int 21h
END main
