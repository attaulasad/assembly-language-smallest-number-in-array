Data segment
n db 2,3,4,5
h db ?
data ends
code segment
assume CS:code,DS:data
start:
mov ax,data
mov ds,ax
mov cx,4
mov bl,79h
lea si,n
up:
mov al,[si]
cmp al,bl
jge nxt
mov bl,al
nxt:
inc si
dec cx
jnz up
mov h,bl
mov dl,h
add dl,48
mov ah,02
int 21h
mov ah,4ch
int 21h
code ends
end start
