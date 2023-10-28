data segment
	string db 'Zero Test',0dh,0ah,'$' 
data ends

code segment
assume cs:code,ds:data 
start:
	mov ax,data
	mov ds,ax
	lea dx,string
	mov ah,09h
	int 21h
	mov ah,4ch
	int 21h
code ends
	end start