
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
lea si,x
mov bl,[si]

lea si,y
mov al,[si]

while_loop:

 cmp bl, 0
 jle end_loop:
  mul  bl
  dec bl
  jmp while_loop

   end_loop:


ret

x db 8
y db 1

                                 