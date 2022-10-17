import os
def menu():
    print("1. Calcular el área y perímetro de un cuadrado")
    print("2. Calcular el área y perímetro de un rectángulo")
    print("3. Calcular el área y perímetro de un triángulo")
    print("4. Contar letras de una cadena")
    print("5. Agregar palabra a un arreglo")
    print("6. Validar contraseña")
    print("7. Imprimir una lista")
    print("8. Salir")

def cuadrado():
    lado = int(input("Ingrese el lado del cuadrado: "))
    area = lado * lado
    perimetro = lado * 4
    print("El área del cuadrado es: ", area)
    print("El perímetro del cuadrado es: ", perimetro)

def rectangulo():
    base = int(input("Ingrese la base del rectángulo: "))
    altura = int(input("Ingrese la altura del rectángulo: "))
    area = base * altura
    perimetro = (base * 2) + (altura * 2)
    print("El área del rectángulo es: ", area)
    print("El perímetro del rectángulo es: ", perimetro)

def triangulo():
    base = int(input("Ingrese la base del triángulo: "))
    altura = int(input("Ingrese la altura del triángulo: "))
    area = (base * altura) / 2
    perimetro = base * 3
    print("El área del triángulo es: ", area)
    print("El perímetro del triángulo es: ", perimetro)

def contarLetras():
    cadena = input("Ingrese una cadena: ")
    print("La cadena tiene ", len(cadena), " letras")

def agregarPalabra():
    arreglo = ["Alba", "Benito", "27"]
    palabra = input("Ingrese una palabra: ")
    posicion = int(input("Ingrese la posición: "))
    arreglo.insert(posicion, palabra)
    print(arreglo)

def validarContraseña():
    contraseña = "1234"
    ingreso = input("Ingrese la contraseña: ")
    if ingreso == contraseña:
        print("Contraseña correcta")
    else:
        print("Contraseña incorrecta")

def imprimirLista():
    lista = []
    for i in range(5):
        lista.append(input("Ingrese un valor: "))
    print("Comienzo")
    for i in lista:
        print("Hola. Ahora i vale", i)
    print("Final")

validarContraseña()
while True:
    #limpiar pantalla cada vez que se muestre el menú con el comando cls
    os.system("cls")

    
    menu()
    opcion = int(input("Ingrese una opción: "))
    if opcion == 1:
        cuadrado()
        input("Presione una tecla para continuar...")


    elif opcion == 2:
        rectangulo()
        input("Presione una tecla para continuar...")
    elif opcion == 3:
        triangulo()
        input("Presione una tecla para continuar...")
    elif opcion == 4:
        contarLetras()
        input("Presione una tecla para continuar...")
    elif opcion == 5:
        agregarPalabra()
        input("Presione una tecla para continuar...")
    elif opcion == 6:
        validarContraseña()
        input("Presione una tecla para continuar...")
    elif opcion == 7:
        imprimirLista()
        input("Presione una tecla para continuar...")
    elif opcion == 8:
        break
    else:
        print("Opción inválida")