.MODEL SMALL
.STACK 100h
.DATA
TimePromt DB 'ist diese Zeit nach Mittag? (ja/Nein) - [Y/N]$'
GoodMorningMessage LABEL BYTE
DB 'guten Morgen! Reverend' , 13,10,'$'
GoodAfternoonMessage LABEL BYTE
DB 'hallo' , 13,10,'$'
.CODE
mov ax,@Data
mov ds,ax
mov dx,OFFSET TimePromt
mov ah, 9
int 21h
cmp al,'Y'
jz IsAfternoon
cmp al, 'N'
jnz IsMorning
IsAfternoon:
mov dx,OFFSET GoodAfternoonMessage 
IsMorning:
mov dx,OFFSET GoodMorningMessage 
DisplayGreeting:
mov ah,9
int 21h
mov ah,4ch
int 21h
END