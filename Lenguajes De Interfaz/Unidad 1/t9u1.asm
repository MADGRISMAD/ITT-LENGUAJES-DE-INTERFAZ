.model small
.stack 50
.data
n1 db 0
n2 db 0
n3 db 0
r1 db 0

msg0 db 'Ingresa algun valor: ','$'
msg1 db 10,13,7,'Sumamos los 2 numeros registrados y le sumamos 2, despues le
sumamos 3 y el resultado es: ','$'
msg2 db 10,13,7,'Sumamos los 3 numeros registrados y a su resultado le sumamos 5:
','$'
msg3 db 10,13,7,'Sumamos los 2 primeros numeros y lo multiplicamos por el 3ero: ','$'

.code

;LIMPIA PANTALLA
mov ah,00h
mov al,03h
int 10h

;CAPTURA DE NUMEROS
mov ax,@data; este es el mensaje que queremos imprimir
mov ds,ax ;en este vamos a mover ax al registro ds, en ax ya esta guardada la cadena
lea dx,msg0; en esta instruccion se lee el mensaje que esta dentro del registro dx
3

mov ah,09h;esta interrupcion es para imprimir en pantalla
int 21h;
;capturamos el valor de la variable 1

mov ah, 01h ; Captura del numero 1
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov n1,al;guardamos el valor de la variable n1 en al
int 21h

mov ah,09h
lea dx,msg0
int 21h
mov ah, 01h ; Captura del numero 2
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov n2,al;guardamos el valor de la variable n1 en al
int 21h

mov ah,09h
lea dx,msg0
int 21h
mov ah, 01h ; Captura del numero 2
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov n3,al;guardamos el valor de la variable n1 en al

4

int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
;OPERACIONES
;Suma
mov al,n1
add al,n2
add al,2;restamos 2
add al,3;sumamos 3
mov r1,al
mov ah,09h
lea dx,msg1
int 21h

mov al,r1
AAM
mov bx,ax
mov ah,02h
mov dl,bh
add dl,30h
int 21h

mov ah,02h
mov dl,bl

5

add dl,30h
int 21h

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

;''''''

mov al,n1
add al,n2
add al,n3;sumamos la 3er variable
add al,5;sumamos 3
mov r1,al
mov ah,09h
lea dx,msg2
int 21h

mov al,r1
AAM

6

mov bx,ax
mov ah,02h
mov dl,bh
add dl,30h
int 21h

mov ah,02h
mov dl,bl
add dl,30h
int 21h

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

;''''''
mov al,n1
add al,n2
mov bl,n3
mul bl
mov r1,al
mov ah,09h
lea dx,msg3

7

int 21h

mov al,r1
AAM
mov bx,ax
mov ah,02h
mov dl,bh
add dl,30h
int 21h

mov ah,02h
mov dl,bl
add dl,30h
int 21h

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

.exit
END