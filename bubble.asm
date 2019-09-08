.model small
.data
  array dw 15h,17h,10h,13h
.code
  mov ax,@data
  mov ds,ax
  mov dx,04
  dec dx
outer :mov cx,dx
       mov si,offset array
again:mov ax,[si]
      cmp ax,[si+2]
      jbe l1
      xchg ax,[si+2]
      xchg ax,[si]
l1:inc si
   inc si
   dec cx
   jnz again
   dec dx
   jnz outer
   mov ah,4ch
   int 21h
   end