;to find factorial
.model small
.stack 100h

.data
    num db 5            ; The number to calculate factorial of (5 in this case)
    result dw 1         ; Variable to store the result of factorial, initialized to 1

.code
main:
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Load the number into AL
    mov al, num         ; Load 5 into AL

    ; Check if the number is 0 or 1 (since 0! and 1! are both 1)
    cmp al, 1
    jbe done             ; If AL <= 1, jump to done (because factorial of 0 or 1 is 1)

    ; Initialize the result in AX to 1 (factorial starts at 1)
    mov ax, 1

factorial_loop:
    ; Multiply AX (current result) by AL (current number)
    mul al              ; AX = AX * AL
    dec al              ; Decrement AL
    jnz factorial_loop  ; Continue the loop until AL becomes 0

done:
    ; The result is now in AX, which holds the factorial

    ; Exit the program
    mov ah, 4Ch         ; DOS function 4Ch - Exit program
    int 21h             ; Call DOS interrupt 21h to exit

END main
