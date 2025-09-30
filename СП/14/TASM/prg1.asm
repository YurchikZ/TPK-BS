masm
model small
.data
message db 'hello'
.stack 256h
.code
main proc
mov ax,@data
mov ds,ax
mov dx,offset message
int 21h
mov ax,4c00h
int 21h
main endp
end main