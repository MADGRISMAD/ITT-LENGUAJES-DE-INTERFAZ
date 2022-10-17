print("Bienvenido al sistema Rodrigo")
print("1. Calcular el área y perímetro de 3 figuras")
print("2. Contar letras de una cadena ingresada por el usuario")
print("3. Imprimir una Arreglo 10 registros y después preguntar al usuario
que palabra y en que posición quiere agregar la palara ingresada.")
print("4. Capturar una palabra y validar que se la correcta")
print("5. Imprimir una lista, donde el usuario capture 5 registros de
ella")
print("6. Salir")
opcion = int(input("Ingrese una opción: "))

if opcion == 1:

print("Calcular el área y perímetro de 3 figuras")
print("1. Cuadrado")
print("2. Rectángulo")

4

print("3. Triángulo")
opcion = int(input("Ingrese una opción: "))
if opcion == 1:
print("Cuadrado")
lado = int(input("Ingrese el lado: "))
print("El área del cuadrado es: ", lado*lado)
print("El perímetro del cuadrado es: ", lado*4)
elif opcion == 2:
print("Rectángulo")
base = int(input("Ingrese la base: "))
altura = int(input("Ingrese la altura: "))
print("El área del rectángulo es: ", base*altura)
print("El perímetro del rectángulo es: ", (base*2)+(altura*2))
elif opcion == 3:
print("Triángulo")
base = int(input("Ingrese la base: "))
altura = int(input("Ingrese la altura: "))
print("El área del triángulo es: ", (base*altura)/2)
print("El perímetro del triángulo es: ", base*3)
else:
print("Opción inválida")

elif opcion == 2:

print("Contar letras de una cadena ingresada por el usuario")
cadena = input("Ingrese una cadena: ")
print("La cantidad de letras es: ", len(cadena))

elif opcion == 3:

5

print("Imprimir una Arreglo 10 registros y después preguntar al
usuario que palabra y en que posición quiere agregar la palara
ingresada.")

arreglo = []
for i in range(10):
arreglo.append(input("Ingrese una palabra: "))
print(arreglo)
palabra = input("Ingrese una palabra: ")
posicion = int(input("Ingrese una posición: "))
arreglo.insert(posicion, palabra)
print(arreglo)
elif opcion == 4:

print("Capturar una palabra y validar que se la correcta,")
palabra = "contraseña"
ingreso = input("Ingrese una palabra: ")
if ingreso == palabra:
print("Contraseña correcta")
else:
print("Contraseña incorrecta")

elif opcion == 5:

print("Imprimir una lista, donde el usuario capture 5 registros de

ella")

lista = []
for i in range(5):
lista.append(input("Ingrese una palabra: "))
print("Comienzo")
for i in lista:
print("Hola. Ahora i vale ", i)

6

print("Final")
elif opcion == 6:
print("Salir")

else:

print("Opción inválida")