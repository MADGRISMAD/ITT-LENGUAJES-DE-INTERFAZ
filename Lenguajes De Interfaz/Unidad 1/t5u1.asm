.model small
.stack
.data

.model small
.stack
.data

;Declaracion de las variables
msg0 db ' DATOS DEL ALUMNO $'
msg1 db ' SABINO ANDRES MANUEL ALEJANDROL$'
msg2 db ' PRIMER APELLIDO SEGUNDO APELLIDO NOMBRE $'
msg3 db ' DATOS DE LA ESCUELA $'
msg4 db ' _________________________ _______ ______ ______ __________$'
msg5 db ' NOMBRE DE LA ESCUELA GRUPO TURNO CCT $'
msg6 db ' ---------------------------------- ------------------- ---------|--| $'
msg7 db ' | | PERIODO DE EVACLUACION | | | ASISTENCIA | | $'
msg8 db ' | ASIGNATURAS |------------------------|PROMEDIO| |-------------------|--| $'

msg9 db ' | | PRIMERO|SEGUNDO|TERCERO| | | CALENDARIO
ESCOLAR| | $'
msg10 db ' |---------------------------------------------------------------------|--| $'
msg11 db ' | ESPANOL | | | |ASISTENCIA | | $'
msg12 db ' |--------------------------------------|--------| |-------------------|--| $'
msg13 db ' | MATEMAT | | | | % DE ASISTENCIA | | $'
msg14 db ' |--------------------------------------|--------| |-------------------|--| $'
msg15 db ' | LECTURAS | | | * ASISTENCIA MINIMA PARA$'
msg16 db ' |--------------------------------------|--------| SER PROMOMIVIDO: 80% $'
msg17 db ' |PROMEDIO FINALDE GRADO| $'
msg18 db ' |---------------- --------------------- ------------------------ $'
msg19 db ' |PROMOMIVIDO | | | NO PROMOMIVIDO | | | | $'
msg20 db ' |--------------- --------------------- ----------------------- $'

.code

;inicializamos variables
mov ax, @data
mov ds,ax

mov ah, 09h; funcion para imprimir cadena
lea dx, msg0; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg1; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg2; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg3; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg4; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena

lea dx, msg5; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg6; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg7; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg8; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg9; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg10; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg11; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg12; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;

mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg13; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg14; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg15; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg16; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg17; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg18; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena
lea dx, msg19; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah, 09h; funcion para imprimir cadena

lea dx, msg20; carga a dx lo que hay msg
int 21h; imprime cadena

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

.exit
end