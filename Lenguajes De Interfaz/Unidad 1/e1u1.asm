.model small
.stack 50
.data
;----------DECLARACION DE VARIABLES
vacio db 50 dup(&#39; &#39;), &#39;$&#39;
pAP db &#39;Ingrese su Apellido Paterno seguido de un enter : &#39;,&#39;$&#39;
resAP db 50 dup(&#39; &#39;), &#39;$&#39;;variable para el turno

pAM db 10,13,7,&#39;Ingrese su Apellido Materno seguido de un enter : &#39;,&#39;$&#39;
resAM db 50 dup(&#39; &#39;), &#39;$&#39;

pNom db 10,13,7,&#39;Ingrese sus Nombre o Nombres seguido de un enter : &#39;,&#39;$&#39;
resNom db 50 dup(&#39; &#39;), &#39;$&#39;

pNumControl db 10,13,7,&#39;Ingrese sus Numero de Control seguido de un enter : &#39;,&#39;$&#39;
resNumControl db 50 dup(&#39; &#39;), &#39;$&#39;

pEsc db 10,13,7,&#39;Ingrese El Nombre de la Escuela seguido de un enter : &#39;,&#39;$&#39;
resEsc db 50 dup(&#39; &#39;), &#39;$&#39;

pTurno db 10,13,7,&#39;Ingrese Su Turno (Matutino o Vespertino) seguido de un enter :
&#39;,&#39;$&#39;
resTurno db 50 dup(&#39; &#39;), &#39;$&#39;;variable para el turno

pGrupo db 10,13,7,&#39;Ingrese El Grupo seguido de un enter : &#39;,&#39;$&#39;
resGrupo db 50 dup(&#39; &#39;), &#39;$&#39;

9
pClase1 db 10,13,7,&#39;Ingrese El Nombre de la Asignatura 1 seguido de un enter : &#39;,&#39;$&#39;
resClase1 db 50 dup(&#39; &#39;), &#39;$&#39;

pClase2 db 10,13,7,&#39;Ingrese El Nombre de la Asignatura 2 seguido de un enter : &#39;,&#39;$&#39;
resClase2 db 50 dup(&#39; &#39;), &#39;$&#39;

pClase3 db 10,13,7,&#39;Ingrese El Nombre de la Asignatura 3 seguido de un enter : &#39;,&#39;$&#39;
resClase3 db 50 dup(&#39; &#39;), &#39;$&#39;

pp1 db 10,13,7,&#39;Ingrese Calificacion Periodo 1 seguido de un enter : &#39;,&#39;$&#39;
pp2 db 10,13,7,&#39;Ingrese Calificacion Periodo 2 seguido de un enter : &#39;,&#39;$&#39;
pp3 db 10,13,7,&#39;Ingrese Calificacion Periodo 3 seguido de un enter : &#39;,&#39;$&#39;

NC1 db 50 dup(&#39; &#39;), &#39;$&#39;;variable para la clase 1
NC2 db 50 dup(&#39; &#39;), &#39;$&#39;;variable para la clase 2
NC3 db 50 dup(&#39; &#39;), &#39;$&#39;;variable para la clase 3

calim1p1 db 0;calificacion materia 1 parcial 1
calim2p1 db 0;calificacion materia 2 parcial 1
calim3p1 db 0;calificacion materia 3 parcial 1
c1 db 0
z1 db 0

calim1p2 db 0;calificacion materia 1 parcial 2
calim2p2 db 0;calificacion materia 2 parcial 2
calim3p2 db 0;calificacion materia 3 parcial 2
c2 db 0
z2 db 0

10

calim1p3 db 0;calificacion materia 1 parcial 3
calim2p3 db 0;calificacion materia 2 parcial 3
calim3p3 db 0;calificacion materia 3 parcial 3
c3 db 0
z3 db 0

prom1 db 0;promedio primer materia
prom2 db 0; promedio segunda materia
prom3 db 0 ; promedio tercer materia
promf db 0 ; promedio final
f1 db 0
z4 db 0

promover db &#39;X$&#39;

;DECLARACION DE VARIABLES PARA SUBMENU
opsubmenu db 0

msgsubmenu1 db 10,13,7,&#39;Presione 1 Seguido de un enter para regresar al Menu
Principal&#39;,&#39;$&#39;
msgsubmenu2 db 10,13,7,&#39;Presione 2 para Salir&#39;,&#39;$&#39;
msgsubmenu3 db 10,13,7,&#39;Ingrese Opcion :&#39;,&#39;$&#39;

;declaracion de cadenas del MENU PRINCIPAL
opmenu1 db 10,13,7,&#39; 1- Boleta &#39;,&#39;$&#39;
opmenu2 db 10,13,7,&#39; 2- Operaciones &#39;,&#39;$&#39;

11

opmenu3 db 10,13,7,&#39; 3- Cuestionario &#39;,&#39;$&#39;
opmenu4 db 10,13,7,&#39; 4- Impresion de Cuadrado &#39;,&#39;$&#39;
opmenu5 db 10,13,7,&#39; 5- Captura de 4 numeros &#39;,&#39;$&#39;
opmenu6 db 10,13,7,&#39; 6- Sistema de Unidades &#39;,&#39;$&#39;
opmenu7 db 10,13,7,&#39; 7- Salir &#39;,&#39;$&#39;
respmp db 0

;Declaracion de cadenas para el submenu de regreso

opsubmenu1 db 10,13,7,&#39; 1-Regresar a Menu Principal &#39;,&#39;$&#39;
opsubmenu2 db 10,13,7,&#39; 2-Reiniciar &#39;,&#39;$&#39;
opsubmenu3 db 10,13,7,&#39; 3-Salir &#39;,&#39;$&#39;

;DECLARACION DE SUBMENU PARA OPERACIONES
opsubmenu21 db 10,13,7,&#39; 1-Suma &#39;,&#39;$&#39;
opsubmenu22 db 10,13,7,&#39; 2-Resta &#39;,&#39;$&#39;
opsubmenu23 db 10,13,7,&#39; 3-Multiplicacion &#39;,&#39;$&#39;
opsubmenu24 db 10,13,7,&#39; 4-Division &#39;,&#39;$&#39;
opsubmenu25 db 10,13,7,&#39; 5-Suma de los 2 digitos y multiplicacion por 9 &#39;,&#39;$&#39;

opsubmenu26 db 10,13,7,&#39; 6-SALIR &#39;,&#39;$&#39;
opsubmenu2r db 0

;Declaracion de cadenas para opcion 1
;Declaracion de las cadenas para la Boleta

msg00 db &#39; DATOS DEL ALUMNO $&#39;
msg01 db &#39; $&#39;

12

msg02 db &#39; ----------------------------------------------------------------------------$&#39;
msg03 db &#39; PRIMER APELLIDO SEGUNDO APELLIDO NOMBRE
$&#39;
msg04 db &#39; DATOS DE LA ESCUELA $&#39;
msg05 db &#39; $&#39;
msg06 db &#39; ------------------------------ ------ ---------- ------------------ $&#39;
msg07 db &#39; NOMBRE DE LA ESCUELA GRUPO TURNO NUMERO DE
CONTROL $&#39;
msg08 db &#39;
|==================================================================
===|====| $&#39;
msg09 db &#39; | | PERIODO DE EVALUACION | | | ASISTENCIA | $&#39;
msg10 db &#39; | ASIGNATURAS|======================== |PROMEDIO|
|===================|====| $&#39;
msg11 db &#39; | | PRIMERO|SEGUNDO|TERCERO | | | CALENDARIO
ESCOLAR| AD | $&#39;
msg12 db &#39;
|==================================================================
===|====| $&#39;
msg13 db &#39; | | | | | | |ASISTENCIA | | $&#39;
msg14 db &#39; |======================================|========|
|===================|====| $&#39;
msg15 db &#39; | | | | | | | % DE ASISTENCIA | | $&#39;
msg16 db &#39; |======================================|========|
|===================|====| $&#39;
msg17 db &#39; | | | | | | * ASISTENCIA MINIMA PARA $&#39;
msg18 db &#39; |======================================|========| SER
PROMOMIVIDO: 60% $&#39;
msg19 db &#39; |PROMEDIO FINAL DE GRADO | $&#39;
msg20 db &#39; |================ =====================
========================= $&#39;
msg21 db &#39; |PROMOMIVIDO | | | NO PROMOMIVIDO | | | | $&#39;

13

msg22 db &#39; |================ =====================
========================= $&#39;

;declaracion de cadenas para la opcion 2
n1 db 0; para el primer valor ingresado
n2 db 0;para el segundo valor ingresado
r1 db 0
msgop2_1 db &#39;Ingrese un valor &#39;,&#39;$&#39;
msgop2_2 db 10,13,7,&#39;Sumamos los 2 numeros registrados : &#39;,&#39;$&#39;
msgop2_3 db 10,13,7,&#39;Restamos los 2 numeros registrados: &#39;,&#39;$&#39;
msgop2_4 db 10,13,7,&#39;Multiplicamos los 2 numeros registrados : &#39;,&#39;$&#39;
msgop2_5 db 10,13,7,&#39;Dividimos los 2 numeros registrados : &#39;,&#39;$&#39;
msgop2_6 db 10,13,7,&#39;Sumamos los 2 valores registrados y lo multiplicamos por 9 : &#39;,&#39;$&#39;

;declaracion de cadenas para la opcion 3 Cuestionario
;pregunta
pregunta1 db 10,13,7,&#39;Cual es tu nombre?&#39;,&#39;$&#39;
respuesta1 db 50 dup(&#39; &#39;),&#39;$&#39;
mensaje1 db&#39;Tu Nombre es:&#39;,&#39;$&#39;
pregunta2 db 10,13,7,&#39;Cual es tu Apellido Paterno?&#39;,&#39;$&#39;
respuesta2 db 50 dup(&#39; &#39;),&#39;$&#39;
mensaje2 db&#39;Tu Apellido Paterno es:&#39;,&#39;$&#39;
pregunta3 db 10,13,7,&#39;Cual es tu Apellido Materno?&#39;,&#39;$&#39;
respuesta3 db 50 dup(&#39; &#39;),&#39;$&#39;
mensaje3 db&#39;Tu Apellido Materno es:&#39;,&#39;$&#39;

pregunta4 db 10,13,7,&#39;Cual es tu Comida Favorita?&#39;,&#39;$&#39;
respuesta4 db 50 dup(&#39; &#39;),&#39;$&#39;
mensaje4 db&#39;tu Comida Favorita es:&#39;,&#39;$&#39;

14

pregunta5 db 10,13,7,&#39;Cual es tu numero?&#39;,&#39;$&#39;
respuesta5 db 50 dup(&#39; &#39;),&#39;$&#39;

mensaje5 db&#39;Tu numero es:&#39;,&#39;$&#39;

pregunta6 db 10,13,7,&#39;Cual es tu Fecha de Nacimiento?&#39;,&#39;$&#39;
respuesta6 db 50 dup(&#39; &#39;),&#39;$&#39;
mensaje6 db&#39;Tu Fecha de Nacimiento es:&#39;,&#39;$&#39;

pregunta7 db 10,13,7,&#39;donde vives?&#39;,&#39;$&#39;
respuesta7 db 50 dup(&#39; &#39;),&#39;$&#39;
mensaje7 db&#39;vives en :&#39;,&#39;$&#39;

pregunta8 db 10,13,7,&#39;Cual es tu postre favorito?&#39;,&#39;$&#39;
respuesta8 db 50 dup(&#39; &#39;),&#39;$&#39;
mensaje8 db&#39;Tu postre favorito es:&#39;,&#39;$&#39;

pregunta9 db 10,13,7,&#39;Cual es tu juego favorito?&#39;,&#39;$&#39;
respuesta9 db 50 dup(&#39; &#39;),&#39;$&#39;
mensaje9 db&#39;Tu juego favorito:&#39;,&#39;$&#39;

pregunta10 db 10,13,7,&#39;Cual es tu Clase Favorita?&#39;,&#39;$&#39;
respuesta10 db 50 dup(&#39; &#39;),&#39;$&#39;
mensaje10 db&#39;Tu Clase Favorita:&#39;,&#39;$&#39;

;declaracion de cadenas para la opcion 4 CUADRADO

15

;Declaracion de las variables
LINEA1 db &#39; |----------------------------------------|$&#39;
LINEA2 db &#39; | |$&#39;

;declaracion de cadenas para la opcion 5 CAPTURA DE 4 NUMEROS
cmsg1 db &#39;Ingresa el Primer numero : &#39;,&#39;$&#39;
cmsg2 db &#39;Ingresa el Segundo numero : &#39;,&#39;$&#39;
cmsg3 db &#39;Ingresa el Tercer numero : &#39;,&#39;$&#39;
cmsg4 db &#39;Ingresa el Cuarto numero : &#39;,&#39;$&#39;
cmsg5 db &#39;Tus Numeros capturados son : &#39;,&#39;$&#39;

cn1 db 0
cn2 db 0
cn3 db 0
cn4 db 0

;declaracion de cadenas para la opcion 6

dmsg0 db 10,13,7,&#39;Ingrese un numero : &#39;,&#39;$&#39;
dmsg1 db &#39; Unidades&#39;,&#39;$&#39;
dmsg2 db &#39;0 Decenas&#39;,&#39;$&#39;
dmsg3 db &#39;00 Centenas&#39;,&#39;$&#39;
dmsg4 db &#39;000 Miles&#39;,&#39;$&#39;
dmsg5 db &#39;0000 Diez Miles&#39;,&#39;$&#39;
dmsg6 db &#39;00000 Cien Miles&#39;,&#39;$&#39;
dmsg7 db &#39;000000 Millones&#39;,&#39;$&#39;

dn1 db 0

16

.code
;inicializamos variables
mov ax, @data
mov ds,ax
;---------------------------------------------------------------------------MENU--------------------------------
---------------------------
;Impresion del menu
MENUPRINCIPAL:
call LIMPIAPANTALLA

mov ah,09
mov dx,offset opmenu1
int 21h
mov ah,09
mov dx,offset opmenu2
int 21h
mov ah,09
mov dx,offset opmenu3
int 21h
mov ah,09
mov dx,offset opmenu4
int 21h
mov ah,09
mov dx,offset opmenu5
int 21h
mov ah,09
mov dx,offset opmenu6
int 21h

17

mov ah,09
mov dx,offset opmenu7
int 21h

;Captura
mov ah, 3fh
mov bx, 00
mov cx, 100
mov dx, offset [respmp]
int 21h

;Condicion
cmp respmp, &#39;1&#39;
je BOLETA
cmp respmp, &#39;2&#39;
je SUBMENU2
cmp respmp, &#39;3&#39;
je CUESTIONARIO
cmp respmp, &#39;4&#39;
je CUADRADO
cmp respmp, &#39;5&#39;
je CAPNUMEROS
cmp respmp, &#39;6&#39;
je UNIDADES
cmp respmp, &#39;7&#39;
je SALIR

;------------------------------------------------------------------------------------------SUBMENU-----------
-------------------------------------------------------

18

SUBMENU:

mov ah,09h
mov dx,offset msgsubmenu1
int 21h
mov ah,09
mov dx,offset msgsubmenu2
int 21h
mov ah,09
mov dx,offset msgsubmenu3
int 21h

;Captura de variable N1
mov ah, 01h ; Captura del numero 1
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov opsubmenu,al;
int 21h
;Comparacion
mov al,opsubmenu;mandamos lo que tenemos en al a cl
cmp al,1;comparamos bl con cl
;SALTOS
jl SALIR
je MENUPRINCIPAL
jg SALIR

;jg SALIR; SI ES MAYOR
;------------------------------------------------------------------------------------------SUBMENU2---------
---------------------------------------------------------

19

SUBMENU2:
call LIMPIAPANTALLA
mov ah,09h
mov dx,offset opsubmenu21
int 21h
mov ah,09
mov dx,offset opsubmenu22
int 21h
mov ah,09
mov dx,offset opsubmenu23
int 21h
mov ah,09
mov dx,offset opsubmenu24
int 21h
mov ah,09
mov dx,offset opsubmenu25
int 21h
mov ah,09
mov dx,offset opsubmenu26
int 21h

;Captura de variable N1
;Captura
mov ah, 3fh
mov bx, 00
mov cx, 100
mov dx, offset [opsubmenu2r]
int 21h

20

;Comparacion
cmp opsubmenu2r, &#39;1&#39;;comparamos bl con cl
;SALTOS

je Suma
cmp opsubmenu2r, &#39;2&#39;;comparamos bl con cl

je RESTA

cmp opsubmenu2r, &#39;3&#39;;comparamos bl con cl
JE MULTIPLICACION
cmp opsubmenu2r, &#39;4&#39;;comparamos bl con cl

JE DIVISION

cmp opsubmenu2r, &#39;5&#39;;comparamos bl con cl

JE UOPERACION
cmp opsubmenu2r, &#39;6&#39;;comparamos bl con cl
JE SALIR

;--------------------------------------------------------------------------------BOLETA------------------------
---------------------------------------------
BOLETA:

call LIMPIAPANTALLA
mov ah,02h
mov dh,00
mov dl,1
int 10h
;IMPRESION DE CADENAS Y CAPTURA
;APELLIDO PATERNO

21

mov ah,09h
lea dx,pAP
int 21h;

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[resAP]
int 21h

;APELLIDO MATERNO
mov ah,09h
lea dx,pAM
int 21h;

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[resAM]
int 21h

;pNom
mov ah,09h
lea dx,pNom
int 21h;

mov ah,3fh
mov bx,00

22

mov cx,50
mov dx,offset[resNom]
int 21h

mov ah,09h
lea dx,pNumControl
int 21h;

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[resNumControl]
int 21h

mov ah,09h
lea dx,pEsc
int 21h;

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[resEsc]
int 21h

mov ah,09h
lea dx,pTurno
int 21h;

23

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[resTurno]
int 21h

mov ah,09h
lea dx,pGrupo
int 21h;

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[resGrupo]
int 21h

mov ah,09h
lea dx,pClase1
int 21h;

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[resClase1]
int 21h

mov ah,09h
lea dx,pp1

24

int 21h;

mov ah, 01h
int 21h
sub al, 30h
mov calim1p1, al

mov ah,09h
lea dx,pp2
int 21h;

mov ah, 01h
int 21h
sub al, 30h
mov calim2p1, al

mov ah,09h
lea dx,pp3
int 21h;

mov ah, 01h
int 21h
sub al, 30h
mov calim3p1, al

;Suma
mov al,calim1p1
add al,calim2p1

25

mov c1,al

mov al,c1
add al,calim3p1
mov prom1,al

xor ax,ax

mov al,prom1
mov bl,3
div bl
mov z1, al

mov al,z1
aam
mov bx,ax
mov ah,02h
mov dl,bh
add dl,30h
int 21h

mov ah,02h
mov dl,bl
add dl,30h
int 21h

mov ah,09h
lea dx,pClase2

26

int 21h;

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[resClase2]
int 21h

mov ah,09h
lea dx,pp1
int 21h;

mov ah, 01h
int 21h
sub al, 30h
mov calim1p2, al

mov ah,09h
lea dx,pp2
int 21h;

mov ah, 01h
int 21h
sub al, 30h
mov calim2p2, al

mov ah,09h
lea dx,pp3

27

int 21h;

mov ah, 01h
int 21h
sub al, 30h
mov calim3p2, al

;Suma
mov al,calim1p2
add al,calim2p2
mov c2,al

mov al,c2
add al,calim3p2
mov prom2,al

xor ax,ax

mov al,prom2
mov bl,3
div bl
mov z2, al

mov al,z2
aam
mov bx,ax
mov ah,02h
mov dl,bh

28

add dl,30h
int 21h

mov ah,09h
lea dx,pClase3
int 21h;

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[resClase3]
int 21h

mov ah,09h
lea dx,pp1
int 21h;

mov ah, 01h
int 21h
sub al, 30h
mov calim1p3, al

mov ah,09h
lea dx,pp2
int 21h;

mov ah, 01h
int 21h

29

sub al, 30h
mov calim2p3, al

mov ah,09h
lea dx,pp3
int 21h;

mov ah, 01h
int 21h
sub al, 30h
mov calim3p3, al

;Suma
mov al,calim1p3
add al,calim2p3
mov c3,al

mov al,c3
add al,calim3p3
mov prom3,al

xor ax,ax

mov al,prom3
mov bl,3
div bl
mov z3, al

30

mov al,z3
aam
mov bx,ax
mov ah,02h
mov dl,bh
add dl,30h
int 21h

mov ah,02h
mov dl,bl
add dl,30h
int 21h

;Suma
mov al,z1
add al,z2
mov f1,al

mov al,f1
add al,z3
mov promf,al

xor ax,ax

mov al,promf
mov bl,3
div bl
mov z4,al

31

mov al,z4
aam
mov bx,ax
mov ah,02h
mov dl,bh
add dl,30h
int 21h

mov ah,02h
mov dl,bl
add dl,30h
int 21h

;----------------------------------------------------------------------IMPRESION DE BOLETA
call LIMPIAPANTALLA

mov ah,02h
mov dh,0 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg00;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

32

mov ah,02h
mov dh,1 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg01;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

;-------------------------------------------------------pAP
mov ah,02h
mov dh,1;
mov dl,2 ;
int 10h
mov ah,09h
lea dx,resAP
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------pAM
mov ah,02h

33

mov dh,1;
mov dl,23;
int 10h
mov ah,09h
lea dx,resAM
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------nOM
mov ah,02h
mov dh,1;
mov dl,46;
int 10h
mov ah,09h
lea dx,resNom
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

mov ah,02h
mov dh,2 ;
mov dl,0 ;
int 10h

34

mov ah, 09h;
lea dx, msg02;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,3 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg03;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,4 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg04;
int 21h;

35

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,5 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg05;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

;-------------------------------------------------------ITT
mov ah,02h
mov dh,5;
mov dl,2;
int 10h
mov ah,09h
lea dx,resEsc
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

36

;-------------------------------------------------------Grupo
mov ah,02h
mov dh,5;
mov dl,36;
int 10h
mov ah,09h
lea dx,resGrupo
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------Turno
mov ah,02h
mov dh,5;
mov dl,44;
int 10h
mov ah,09h
lea dx,resTurno
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------Numero

37

mov ah,02h
mov dh,5;
mov dl,56;
int 10h
mov ah,09h
lea dx,resNumControl
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

mov ah,02h
mov dh,6 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg06;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,7 ;
mov dl,0 ;
int 10h

38

mov ah, 09h;
lea dx, msg07;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,8 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg08;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,9 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg09;
int 21h;

39

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,10 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg10;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,11 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg11;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

40

mov ah,02h
mov dh,12 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg12;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,13 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg13;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

;-------------------------------------------------------Clase 1
mov ah,02h
mov dh,13 ;
mov dl,2 ;

41

int 10h
mov ah,09h
lea dx,resClase1
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------Promedio 1
mov ah,02h
mov dh,13 ;
mov dl,15 ;
int 10h
mov ah,02h
mov dl,calim1p1
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------Promedio 2
mov ah,02h
mov dh,13 ;
mov dl,24 ;
int 10h

42

mov ah,02h
mov dl,calim2p1
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------Promedio 3
mov ah,02h
mov dh,13 ;
mov dl,32 ;
int 10h
mov ah,02h
mov dl,calim3p1
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------Promedio

mov ah,02h
mov dh,13 ;
mov dl,44 ;

43

int 10h
mov ah,02h
mov dl,z1
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

mov ah,02h
mov dh,14 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg14;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,15 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg15;

44

int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
;-------------------------------------------------------Clase 2
mov ah,02h
mov dh,15 ;
mov dl,2 ;
int 10h
mov ah,09h
lea dx,resClase2
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------Promedio 1
mov ah,02h
mov dh,15 ;
mov dl,15 ;
int 10h
mov ah,02h
mov dl,calim1p2
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h

45

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------Promedio 2
mov ah,02h
mov dh,15 ;
mov dl,24 ;
int 10h
mov ah,02h
mov dl,calim2p2
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------Promedio 3
mov ah,02h
mov dh,15 ;
mov dl,32 ;
int 10h
mov ah,02h
mov dl,calim3p2
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h

46

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------Promedio

mov ah,02h
mov dh,15 ;
mov dl,44 ;
int 10h
mov ah,02h
mov dl,z2
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

mov ah,02h
mov dh,16 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg16;
int 21h;

mov ah, 02h;

47

mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,17 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg17;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

;-------------------------------------------------------Clase 3
mov ah,02h
mov dh,17 ;
mov dl,2 ;
int 10h
mov ah,09h
lea dx,resClase3
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

48

;-------------------------------------------------------Promedio 1
mov ah,02h
mov dh,17 ;
mov dl,15 ;
int 10h
mov ah,02h
mov dl,calim1p3
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------Promedio 2
mov ah,02h
mov dh,17 ;
mov dl,24 ;
int 10h
mov ah,02h
mov dl,calim2p3
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

49

;-------------------------------------------------------Promedio 3
mov ah,02h
mov dh,17 ;
mov dl,32 ;
int 10h
mov ah,02h
mov dl,calim3p3
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

;-------------------------------------------------------Promedio

mov ah,02h
mov dh,17 ;
mov dl,44 ;
int 10h
mov ah,02h
mov dl,z3
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

50

mov ah,02h
mov dh,18 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg18;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,19 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg19;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,20 ;
mov dl,0 ;

51

int 10h
mov ah, 09h;
lea dx, msg20;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,21 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg21;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

;-------------------------------------------------------Promedio
mov ah,02h
mov dh,21 ;
mov dl,56 ;
int 10h
mov ah,02h
mov dl,z4

52

add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h

mov ah,02h
mov dl,0ah ;salto de línea
int 21h

cmp z4,6
JB no_promovido
cmp z4,6
JAE promovido

promovido:
mov ah,02h
mov dh,21 ;
mov dl,15 ;
int 10h
mov ah, 09h;
lea dx, promover;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,22 ;
mov dl,0 ;

53

int 10h
mov ah, 09h;
lea dx, msg22;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,23 ;
mov dl,0 ;
int 10h
mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[vacio]
int 21h

jmp SUBMENU

no_promovido:
mov ah,02h
mov dh,21 ;
mov dl,40 ;
int 10h
mov ah, 09h;
lea dx, promover;

54

int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,22 ;
mov dl,0 ;
int 10h
mov ah, 09h;
lea dx, msg22;
int 21h;

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov ah,02h
mov dh,23 ;
mov dl,0 ;
int 10h
mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[vacio]
int 21h

55

jmp SUBMENU
;----------------------------------------------------------------------------------OPERACIONES------------
---------------------------------------------------------
;OPERACIONES:

call LIMPIAPANTALLA
;CAPTURA DE NUMEROS
;mov ax,@data; este es el mensaje que queremos imprimir
;mov ds,ax ;en este vamos a mover ax al registro ds, en ax ya esta guardada la cadena

;OPERACIONES
Suma:
lea dx,msgop2_1; en esta instruccion se lee el mensaje que esta dentro del registro dx
mov ah,09h;esta interrupcion es para imprimir en pantalla
int 21h;
;capturamos el valor de la variable 1

mov ah, 01h ; Captura del numero 1
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov n1,al;guardamos el valor de la variable n1 en al
int 21h

mov ah,09h
lea dx,msgop2_1
int 21h
mov ah, 01h ; Captura del numero 2
int 21h

56

sub al, 30h;ajuste de 30 numeros, osea le restamos
mov n2,al;guardamos el valor de la variable n1 en al
int 21h
;realizamos las operaciones basicas
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov al,n1
add al,n2
mov r1,al
mov ah,09h
lea dx,msgop2_2
int 21h

mov al,r1
AAM
mov bx,ax
mov ah,02h
mov dl,bh
add dl,30h
int 21h

57

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

jmp SUBMENU

;&#39;&#39;&#39;&#39;&#39;&#39;
RESTA:
lea dx,msgop2_1; en esta instruccion se lee el mensaje que esta dentro del registro dx
mov ah,09h;esta interrupcion es para imprimir en pantalla
int 21h;
;capturamos el valor de la variable 1

mov ah, 01h ; Captura del numero 1
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov n1,al;guardamos el valor de la variable n1 en al
int 21h

58

mov ah,09h
lea dx,msgop2_1
int 21h
mov ah, 01h ; Captura del numero 2
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov n2,al;guardamos el valor de la variable n1 en al
int 21h
;realizamos las operaciones basicas
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov al,n1
sub al,n2
mov r1,al
mov ah,09h
lea dx,msgop2_3
int 21h

mov al,r1
AAM
mov bx,ax
mov ah,02h

59

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

INT 21H
INT 21H
jmp SUBMENU
;&#39;&#39;&#39;&#39;&#39;&#39;
MULTIPLICACION:
lea dx,msgop2_1; en esta instruccion se lee el mensaje que esta dentro del registro dx
mov ah,09h;esta interrupcion es para imprimir en pantalla
int 21h;
;capturamos el valor de la variable 1

mov ah, 01h ; Captura del numero 1

60

int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov n1,al;guardamos el valor de la variable n1 en al
int 21h

mov ah,09h
lea dx,msgop2_1
int 21h
mov ah, 01h ; Captura del numero 2
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov n2,al;guardamos el valor de la variable n1 en al
int 21h
;realizamos las operaciones basicas
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov al,n1
mov bl,n2
mul bl
mov r1,al
mov ah,09h
lea dx,msgop2_4
int 21h

61

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

JMP SUBMENU
DIVISION:
lea dx,msgop2_1; en esta instruccion se lee el mensaje que esta dentro del registro dx
mov ah,09h;esta interrupcion es para imprimir en pantalla
int 21h;
;capturamos el valor de la variable 1

62

mov ah, 01h ; Captura del numero 1
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov n1,al;guardamos el valor de la variable n1 en al
int 21h

mov ah,09h
lea dx,msgop2_1
int 21h
mov ah, 01h ; Captura del numero 2
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov n2,al;guardamos el valor de la variable n1 en al
int 21h
;realizamos las operaciones basicas
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
xor ax,ax
mov al,n1
mov bl,n2
DIV bl
mov r1,al

63

mov ah,09h
lea dx,msgop2_5
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
jmp SUBMENU

UOPERACION:
;CAPTURA DE NUMEROS

64

;mov ax,@data; este es el mensaje que queremos imprimir
;mov ds,ax ;en este vamos a mover ax al registro ds, en ax ya esta guardada la cadena
lea dx,msgop2_1; en esta instruccion se lee el mensaje que esta dentro del registro dx
mov ah,09h;esta interrupcion es para imprimir en pantalla
int 21h;
;capturamos el valor de la variable 1

mov ah, 01h ; Captura del numero 1
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov n1,al;guardamos el valor de la variable n1 en al
int 21h

mov ah,09h
lea dx,msgop2_1
int 21h
mov ah, 01h ; Captura del numero 2
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov n2,al;guardamos el valor de la variable n1 en al
int 21h
;realizamos las operaciones basicas
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

65

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

mov al,n1
add al,n2
mov bl,9
mul bl
mov r1,al
mov ah,09h
lea dx,msgop2_6
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

66

int 21h

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

jmp SUBMENU
;------------------------------------------------------------------Cuestionario---------------------------------
-------------------------------------------

CUESTIONARIO:
call LIMPIAPANTALLA
;pregunta 1
mov ah,09h
lea dx,pregunta1
int 21h

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[respuesta1]
int 21h

mov ah,09h
lea dx,mensaje1
int 21h
mov ah,09h
mov dx,offset[respuesta1]
int 21h

67

;pregunta 2

mov ah,09h
lea dx,pregunta2
int 21h

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[respuesta2]
int 21h

mov ah,09h
lea dx,mensaje2
int 21h
mov ah,09h
mov dx,offset[respuesta2]
int 21h
;pregunta 3

mov ah,09h
lea dx,pregunta3
int 21h

mov ah,3fh
mov bx,00
mov cx,50

68

mov dx,offset[respuesta3]
int 21h

mov ah,09h
lea dx,mensaje2
int 21h
mov ah,09h
mov dx,offset[respuesta3]
int 21h
;pregunta 4

mov ah,09h
lea dx,pregunta4
int 21h

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[respuesta4]

int 21h

mov ah,09h
lea dx,mensaje4
int 21h
mov ah,09h
mov dx,offset[respuesta4]
int 21h

69

;pregunta 5

mov ah,09h
lea dx,pregunta5
int 21h

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[respuesta5]
int 21h

mov ah,09h
lea dx,mensaje5
int 21h
mov ah,09h
mov dx,offset[respuesta5]
int 21h
;pregunta 6

mov ah,09h
lea dx,pregunta6
int 21h

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[respuesta6]

70

int 21h

mov ah,09h
lea dx,mensaje6
int 21h
mov ah,09h
mov dx,offset[respuesta6]
int 21h
;pregunta 7

mov ah,09h
lea dx,pregunta7
int 21h

mov ah,3fh
mov bx,00
mov cx,50

mov dx,offset[respuesta7]
int 21h

mov ah,09h
lea dx,mensaje7
int 21h
mov ah,09h
mov dx,offset[respuesta7]
int 21h
;pregunta 8

71

mov ah,09h
lea dx,pregunta8
int 21h

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[respuesta8]
int 21h

mov ah,09h
lea dx,mensaje8
int 21h
mov ah,09h
mov dx,offset[respuesta8]
int 21h

;pregunta 9

mov ah,09h
lea dx,pregunta9
int 21h

mov ah,3fh
mov bx,00
mov cx,50
mov dx,offset[respuesta9]

72

int 21h

mov ah,09h
lea dx,mensaje9
int 21h
mov ah,09h
mov dx,offset[respuesta9]
int 21h
;pregunta 10

mov ah,09h
lea dx,pregunta10
int 21h

mov ah,3fh
mov bx,00

mov cx,50
mov dx,offset[respuesta10]
int 21h

mov ah,09h
lea dx,mensaje10
int 21h
mov ah,09h
mov dx,offset[respuesta10]
int 21h

73

jmp SUBMENU

;---------------------------------------------------------------------------CUADRADO------------------------
---------------------------------
CUADRADO:
call LIMPIAPANTALLA
mov ah, 09h;
lea dx, LINEA1;
int 21h;
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 09h;
lea dx, LINEA2;
int 21h;
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 09h;
lea dx, LINEA2;
int 21h;
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 09h;
lea dx, LINEA2;
int 21h;
mov ah, 02h;
mov dx, 010; SALTO DE LINEA

74

int 21h
mov ah, 09h;
lea dx, LINEA2;
int 21h;
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 09h;
lea dx, LINEA2;
int 21h;
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 09h;
lea dx, LINEA2;
int 21h;
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 09h;
lea dx, LINEA2;
int 21h;
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 09h;
lea dx, LINEA2;
int 21h;

75

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 09h;
lea dx, LINEA2;
int 21h;
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h
mov ah, 09h;
lea dx, LINEA1;
int 21h;
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

jmp SUBMENU
;----------------------------------------------------------------------------CAPNUMEROS------------------
-------------------------------------
CAPNUMEROS:
call LIMPIAPANTALLA
lea dx,cmsg1; en esta instruccion se lee el mensaje que esta dentro del registro dx
mov ah,09h;esta interrupcion es para imprimir en pantalla
int 21h;

mov ah, 01h ; Captura del numero 1
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov cn1,al;guardamos el valor de la variable cn1 en al

76

mov dx, 010; Salto de linea
int 21h

mov ah,09h
lea dx,cmsg2
int 21h

mov ah, 01h ; Captura del numero 1
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov cn2,al;guardamos el valor de la variable cn1 en al
mov dx, 010; Salto de linea
int 21h

mov ah,09h
lea dx,cmsg3
int 21h

mov ah, 01h ; Captura del numero 1
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov cn3,al;guardamos el valor de la variable cn1 en al
mov dx, 010; Salto de linea
int 21h

mov ah,09h
lea dx,cmsg4
int 21h

77

mov ah, 01h ; Captura del numero 1
int 21h
sub al, 30h;ajuste de 30 numeros, osea le restamos
mov cn4,al;guardamos el valor de la variable cn1 en al
mov dx, 010; Salto de linea
int 21h

mov ah,09h
lea dx,cmsg5
int 21h

mov ah,02h
mov dl, cn1
add dl, 30h
int 21h
mov ah, 02h;
mov dx, 000; espacio
int 21h
mov ah,02h
mov dl, cn2
add dl, 30h
int 21h
mov ah, 02h;
mov dx, 000; espacio
int 21h
mov ah,02h
mov dl, cn3

78

add dl, 30h
int 21h
mov ah, 02h;
mov dx, 000; espacio
int 21h
mov ah,02h
mov dl, cn4
add dl, 30h
int 21h
jmp SUBMENU

;--------------------------------------------------------------------------UNIDADES--------------------------
---------------------------------
UNIDADES:
CALL LIMPIAPANTALLA
;IMPRIMIENDO PRIMER CADENA
;mov ax,@data; este es el mensaje que queremos imprimir
;mov ds,ax ;en este vamos a mover ax al registro ds, en ax ya esta guardada la cadena
lea dx,dmsg0; en esta instruccion se lee el mensaje que esta dentro del registro dx
mov ah,09h;esta interrupcion es para imprimir en pantalla
int 21h;

;CAPTURAR UN NUMERO
mov ah,01h;01h captura un caracter
int 21h
sub al,30h;aqui hacemos una resta de 30
mov dn1,al; movemos lo del registro al de la linea anterior a la variable dn1
int 21h;

79

;IMPRIMIENDO Unidades
mov ah,02h
mov dl,dn1
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h
lea dx,dmsg1
mov ah,09h
int 21h

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

;IMPRIMIENDO Decenas
mov ah,02h
mov dl,dn1
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h
lea dx,dmsg2
mov ah,09h
int 21h

mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

;IMPRIMIENDO CENTENAS
mov ah,02h

80

mov dl,dn1
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h
lea dx,dmsg3
mov ah,09h
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

;IMPRIMIENTO Miles
mov ah,02h
mov dl,dn1
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h
lea dx,dmsg4
mov ah,09h
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

;IMPRIMIENDO Diez Miles
mov ah,02h
mov dl,dn1
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h
lea dx,dmsg5

81

mov ah,09h
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

;IMPRIMIENDO CIEN MILES
mov ah,02h
mov dl,dn1
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h
lea dx,dmsg6
mov ah,09h
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA
int 21h

;IMPRIMIENDO MILLONES
mov ah,02h
mov dl,dn1
add dl,30h;aqui sumamos 30 para que se haga el ajuste
int 21h
lea dx,dmsg7
mov ah,09h
int 21h
mov ah, 02h;
mov dx, 010; SALTO DE LINEA

82

int 21h

jmp SUBMENU

LIMPIAPANTALLA:
mov ah, 00h
mov al, 03h
int 10h
ret

SALIR:
call LIMPIAPANTALLA
mov ah,4ch
int 21h

END