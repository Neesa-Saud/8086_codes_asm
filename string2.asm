.model small
.stack 100h

.data
    msg db 'computer programming$', 0

.code
main:
    mov ax, @data       ; Initialize data segment
    mov ds, ax

    mov ah, 09h         ; DOS function 09h - Print string
    lea dx, msg         ; Load the offset address of the string
    int 21h             ; Call DOS interrupt 21h to display the string

    mov ah, 4Ch         ; DOS function 4Ch - Exit program
    int 21h             ; Call DOS interrupt 21h

END main