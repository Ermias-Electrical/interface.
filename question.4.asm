
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea si, password
mov ah, 9
mov dx, si
int 21h

 
 
lea si, input
mov ah, 01h
mov cx, 5

input_loop:
    int 21h            
    cmp al, 0Dh        
    je check_password  
    mov [si], al       
    inc si
    loop input_loop

check_password:
lea si, input
lea di, actual_password
mov cx, 5

compare_loop:
    mov al, [si]
    mov bl, [di]
    cmp al, bl
    jne access_denied
    inc si
    inc di
    loop compare_loop  
    jmp access_granted

access_granted:
lea si, message_1
jmp print_result


access_denied:
lea si, message_2
jmp print_result

print_result:
mov ah, 09h
lea dx, si
int 21h

exit:
ret

password db "Enter password: $"
message_1 db " Access granted$"
message_2 db " Access denied$" 
actual_password db "ermi7$"
input db 5




