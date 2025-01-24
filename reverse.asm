;to reverse string
.model small
.stack 100h

.data
    msg db 'ABCDE$'   ; String to reverse

.code
main:
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Find the length of the string
    lea si, msg        ; Load address of the string
    mov di, si         ; Copy address to DI
find_end:
    cmp byte ptr [di], '$'  ; Check for the end of the string
    je reverse_string
    inc di
    jmp find_end

reverse_string:
    dec di             ; Point to the last character
reverse_loop:
    mov al, [si]       ; Load the character at SI
    mov dl, [di]       ; Load the character at DI
    mov [si], dl       ; Store the character at SI
    mov [di], al       ; Store the character at DI
    inc si
    dec di
    cmp si, di
    jl reverse_loop

    ; Exit program
    mov ah, 4Ch
    int 21h

END main
