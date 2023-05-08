
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
lea si,ask_msg
mov ah,2
mov cx,19

ask-prompt:
mov dl,[si]
inc si
int 21h
loop ask-prompt:
 
read PROC

lea si,password
    mov ah,1
    mov cx,5
    
password_prompt:
int 21h
mov [si],al
inc si 
cmp al, 0Dh 
je read_done
loop password_prompt:


read_done:
    mov byte ptr [si], 0 
read ENDP
ret

ask_msg db "enter the password:$"
password db '00000',0


