#explicar que hacen los siguientes programas
#1
i = 1 #inicializar variable
while i <= 3: #condicion mientras i sea menor o igual a 3
    print(i) #imprimir i
    i += 1 #incrementar i en 1
print("Programa terminado") #imprimir programa terminado

 
 
#2
i = 1 #inicializar variable
while i <= 50: #condicion mientras i sea menor o igual a 50
    print(i) #imprimir i
    i = 3 * i + 1 #incrementar i en 3*i+1
print("Programa terminado") #imprimir programa terminado
 

#3
numero = int(input("Escriba un número positivo: ")) #pedir numero positivo
while numero < 0: #condicion mientras numero sea menor a 0
    print("¡Ha escrito un número negativo! Inténtelo de nuevo") #imprimir error
    numero = int(input("Escriba un número positivo: ")) #pedir numero positivo
print("Gracias por su colaboración") #imprimir gracias por su colaboracion

 
 
#4
i = 1 #inicializar variable
while i <= 10: #condicion mientras i sea menor o igual a 10
    print(i) #imprimir i
    i += 1 #incrementar i en 1
 
 


#5
i = 100
#inicializar variable
while i > 0: #condicion mientras i sea mayor a 0
    print(i, end=" ") #imprimir i
    i-=1
 

 
 
 
#6
i = 0 #inicializar variable
while i <= 100: #condicion mientras i sea diferente a 100
    print(i, end=" ") #imprimir i
    i += 2 #incrementar i en 2


 
 
#7  
print("Comienzo") #imprimir comienzo
for i in [0, 1, 2]: #recorrer lista
 print("Hola ", end="") #imprimir hola 3 veces
print() #salto de linea
print("Final") #imprimir final

 
 
#8
print("Comienzo") #imprimir comienzo
for i in []: #recorrer lista
 print("Hola ", end="") #imprimir hola 0 ceves
print() #salto de linea
print("Final") #imprimir final

 
 
 
#9
print("Comienzo") #imprimir comienzo
for i in [1, 1, 1]: #imprimir hola 3 veces
 print("Hola ", end="")  
print() #salto de linea
print("Final") #imprimir final

 
 
 
 
 
 
 
#10
print("Comienzo") #imprimir comienzo
for _ in [0, 1, 2]: #recorrer lista
 print("Hola ", end="") #imprimir hola 3 veces
print() #salto de linea
print("Final") #imprimir final

 
 
 
#11
print("Comienzo") #imprimir comienzo
for i in [3, 4, 5]: #recorrer lista
 print(f"Hola. Ahora i vale {i} y su cuadrado {i ** 2}") #imprimir hola y el cuadrado de i
print("Final") #imprimir final

 
 
 
#12-
print("Comienzo") #imprimir comienzo
for i in ["Alba", "Benito", 27]: #recorrer lista
 print(f"Hola. Ahora i vale {i}") #imprimir hola y el valor de i
print("Final") #imprimir final

 
 
 
 
 
 
 
#13
print("Comienzo") #imprimir comienzo
for numero in [0, 1, 2, 3]: #recorrer lista
 print(f"{numero} * {numero} = {numero ** 2 }") #imprimir numero * numero = numero al cuadrado
print("Final") #imprimir final

 
 
 
#14
i = 10 #inicializar variable
print(f"El bucle no ha comenzado. Ahora i vale {i}") #imprimir el bucle no ha comenzado y el valor de i
for i in [0, 1, 2, 3, 4]: #recorrer lista
 print(f"{i} * {i} = {i ** 2}") #imprimir i * i = i al cuadrado
print(f"El bucle ha terminado. Ahora i vale {i}") #imprimir el bucle ha terminado y el valor de i

 
 
 
#15
for i in [0, 1, 2]: #recorrer lista
 print(f"{i} * {i} = {i ** 2}") #imprimir i * i = i al cuadrado
print() #salto de linea
for i in [0, 1, 2, 3]: #recorrer lista
 print(f"{i} * {i} * {i} = {i ** 3}") #imprimir i * i * i = i al cubo

 
#16
for i in "AMIGO": #recorrer string
 print(f"Dame una {i}") #imprimir dame una i y el valor de i
print("¡AMIGO!") #imprimir amigo

 
 
 
#17
print("Comienzo") #imprimir comienzo
for i in range(10): #recorrer rango de 0 a 10
 print("Hola ", end="") #imprimir hola 10 veces
print() #salto de linea
print("Final") #imprimir final

 
 
 
 
#18
veces = int(input("¿Cuántas veces quiere que le salude? ")) #pedir numero de veces que quiere que le salude
for i in range(veces):#recorrer rango de 0 a veces
 print("Hola ", end="") #imprimir hola veces veces
print() #salto de linea
print("Adiós") #imprimir adios

 
 
 
 
 

