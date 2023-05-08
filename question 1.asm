
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here    
lea si,x
mov al,[si]
lea si,y
mov bl,[si]

cmp al, bl
jg else_block
inc al
jmp end_if

else_block:

dec bl

end_if:
 
   
ret 
x db ?
y db ?


                 

                                                                                         