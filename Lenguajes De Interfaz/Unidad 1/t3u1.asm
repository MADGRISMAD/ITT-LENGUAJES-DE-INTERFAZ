.model small
.stack 50
.data

; -------------

msg1 db 10,13,7, '1 - Cual es tu nombre? $'
res1 db 50 dup(' '), '$'

R1 db 'Tu nombre es: $'
;1er pregunta

; -------------

msg2 db 10,13,7, '2 - Cual es tu apodo? $'
res2 db 50 dup(' '), '$'

R2 db 'Tu apodo es: $'
;2da Pregunta

; -------------

msg3 db 10,13,7, '3 - Que edad tienes? $'
res3 db 50 dup(' '), '$'

R3 db 'Tu edad es: $'
;3er Pregunta

4

; -------------

msg4 db 10,13,7, '4 - Que carrera estudias? $'
res4 db 50 dup(' '), '$'

R4 db 'Tu carrera es: $'
;4ta Pregunta

; -------------

msg5 db 10,13,7, '5 - Cual es tu comida favorita? $'
res5 db 50 dup(' '), '$'

R5 db 10,13,7, 'Tu comida favorita es: $'
;5ta Pregunta

; -------------

msg6 db 10,13,7, '6 - Cual es tu juego favorito? $'
res6 db 50 dup(' '), '$'

R6 db 'Mi juego favorito es: $'
;6ta Pregunta

; -------------

msg7 db 10,13,7, '7 - Cual es tu estatura? $'

5

res7 db 50 dup(' '), '$'

R7 db 'Tu estatura es: $'
;7ma Pregunta

; -------------

msg8 db 10,13,7, '8 - Que helado te gusta? $'
res8 db 50 dup(' '), '$'

R8 db 'Me gusta el helado de: $'
;8va Pregunta

; -------------

msg9 db 10,13,7, '9 - Lees algun libro? $'
res9 db 50 dup(' '), '$'

R9 db 10,13,7, 'Cual es?: $'
;9na Pregunta

; -------------

msg10 db 10,13,7, '10 - A que edad cometiste tu primer homicidio? $'
res10 db 50 dup(' '), '$'

R10 db 'Se sincero: $'
;10ma Pregunta

6

; -------------

.code

mov ax, @data
mov ds, ax

; -------------

mov ah, 09h
lea dx, msg1
int 21h

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset[res1]
int 21h

mov ah, 09h
lea dx, R1
int 21h

mov ah,09h
lea dx, offset[res1]
int 21h
;1er pregunta

7

; -------------

mov ah, 09h
lea dx, msg2
int 21h

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset[res2]
int 21h

mov ah, 09h
lea dx, R2
int 21h

mov ah,09h
lea dx, offset[res2]
int 21h
;2da pregunta

; -------------

mov ah, 09h
lea dx, msg3
int 21h

8

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset[res3]
int 21h

mov ah, 09h
lea dx, R3
int 21h

mov ah,09h
lea dx, offset[res3]
int 21h
;3ra pregunta

; -------------

mov ah, 09h
lea dx, msg4
int 21h

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset[res4]
int 21h

mov ah, 09h

9

lea dx, R4
int 21h

mov ah,09h
lea dx, offset[res4]
int 21h
;4ta pregunta

; -------------

mov ah, 09h
lea dx, msg5
int 21h

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset[res5]
int 21h

mov ah, 09h
lea dx, R5
int 21h

mov ah,09h
lea dx, offset[res5]
int 21h
;5ta pregunta

1
0

; -------------

mov ah, 09h
lea dx, msg6
int 21h

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset[res6]
int 21h

mov ah, 09h
lea dx, R6
int 21h

mov ah,09h
lea dx, offset[res6]
int 21h
;6ta pregunta

; -------------

mov ah, 09h
lea dx, msg7
int 21h

1
1

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset[res7]
int 21h

mov ah, 09h
lea dx, R7
int 21h

mov ah,09h
lea dx, offset[res7]
int 21h
;7ma pregunta

; -------------

mov ah, 09h
lea dx, msg8
int 21h

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset[res8]
int 21h

mov ah, 09h

1
2

lea dx, R8
int 21h

mov ah,09h
lea dx, offset[res8]
int 21h
;8va pregunta

; -------------

mov ah, 09h
lea dx, msg9
int 21h

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset[res9]
int 21h

mov ah, 09h
lea dx, R9
int 21h

mov ah,09h
lea dx, offset[res9]
int 21h
;9na pregunta

1
3

; -------------

mov ah, 09h
lea dx, msg10
int 21h

mov ah, 3fh
mov bx, 00
mov cx, 50
mov dx, offset[res10]
int 21h

mov ah, 09h
lea dx, R10
int 21h

mov ah,09h
lea dx, offset[res10]
int 21h
;10ma pregunta

; -------------

.exit
end