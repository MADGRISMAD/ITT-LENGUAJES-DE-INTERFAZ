nombres=(1,2,3,4,5,6,7,8,9,10)

while True:
    numero=int(input("Ingrese un numero: "))
    if numero==0:
        break
    elif numero<0 or numero>10:
        print("Error, el numero no esta en el rango de 0 a 10")
    else:
        for i in nombres:
            print(numero,"multiplicado por",i,"es igual a",numero*i)
        print("Tabla del",numero) 
        print("Fin de la tabla del",numero)
        print("")