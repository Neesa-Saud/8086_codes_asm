;to add two 16 bit numbers
.model small
.stack 100h

.data
    num1 dw 1234h       ; First 16-bit number (0x1234)
    num2 dw 5678h       ; Second 16-bit number (0x5678)
    result dw 0         ; To store the result of the addition

.code
main:
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Load the first 16-bit number into AX
    mov ax, num1        ; AX = num1 (1234h)

    ; Add the second 16-bit number to AX
    add ax, num2        ; AX = AX + num2 (5678h)

    ; Store the result in result
    mov result, ax      ; Store the result in result variable

    ; Exit the program
    mov ah, 4Ch         ; DOS function 4Ch - Exit program
    int 21h             ; Call DOS interrupt 21h to exit
END main
