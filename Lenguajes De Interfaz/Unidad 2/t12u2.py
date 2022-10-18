#explicar codigo
def escribe_media(): #definicion de la funcion  
     media = (a + b) / 2 #calculo de la media
     print(f"La media de {a} y {b} es: {media}") #impresion de la media
     return #retorno de la funcion

a = 3 #definicion de la variable a
b = 5 #definicion de la variable b 
escribe_media() #llamada a la funcion
print("Programa terminado") #impresion de la cadena de texto

def escribe_media(x, y): #definicion de la funcion con dos parametros
    media = (x + y) / 2 #calculo de la media con los parametros
    print(f"La media de {x} y {y} es: {media}") #impresion de la media con los parametros y la media calculada
    return #retorno de la funcion

a = 3   #definicion de la funcion con dos parametros
b = 5 #definicion de la variable b
escribe_media(a, b) #llamada a la funcion con los parametros a y b
print("Programa terminado") #impresion de la cadena de texto que indica el fin del programa

def calcula_media(x, y): #definicion de la funcion con dos parametros
    resultado = (x + y) / 2 #calculo de la media con los parametros
    return resultado #retorno de la funcion

a = 3 #definicion de la variable a
b = 5   #definicion de la variable b
media = calcula_media(a, b) #llamada a la funcion con los parametros a y b y asignacion del resultado a la variable media
print(f"La media de {a} y {b} es: {media}") #impresion de la media con los parametros y la media calculada
print("Programa terminado") #impresion de la cadena de texto que indica el fin del programa

def calcula_media(*args): #definicion de la funcion con un numero indeterminado de parametros
    total = 0 #definicion de la variable total
    for i in args: #bucle for para recorrer los parametros
        total += i #suma de los parametros
    resultado = total / len(args) #calculo de la media con los parametros
    return resultado #retorno de la funcion

a, b, c = 3, 5, 10 #definicion de las variables a, b y c
media = calcula_media(a, b, c) #llamada a la funcion con los parametros a, b y c y asignacion del resultado a la variable media
print(f"La media de {a}, {b} y {c} es: {media}") #impresion de la media con los parametros y la media calculada
print("Programa terminado") #impresion de la cadena de texto que indica el fin del programa

def calcula_media_desviacion(*args): #definicion de la funcion con un numero indeterminado de parametros
    total = 0 #definicion de la variable total 
    for i in args: #bucle for para recorrer los parametros 
        total += i #suma de los parametros 

    media = total / len(args) #calculo de la media con los parametros 
    total = 0 #definicion de la variable total 
    for i in args: #bucle for para recorrer los parametros
        total += (i - media) ** 2 #suma de los parametros menos la media al cuadrado
    desviacion = (total / len(args)) ** 0.5 #calculo de la desviacion con los parametros 
    return media, desviacion #retorno de la funcion con dos valores

a, b, c, d = 3, 5, 10, 12 #definicion de las variables a, b, c y d
media, desviacion_tipica = calcula_media_desviacion(a, b, c, d) #llamada a la funcion con los parametros a, b, c y d y asignacion de los resultados a las variables media y desviacion_tipica
print(f"Datos: {a} {b} {c} {d}")    #impresion de los parametros 
print(f"Media: {media}") #impresion de la media con los parametros 
print(f"Desviación típica: {desviacion_tipica}")  #impresion de la desviacion con los parametros
print("Programa terminado") #impresion de la cadena de texto que indica el fin del programa

def cambia(b): #definicion de la funcion con un parametro 
    b += [5] #suma de la lista b con el numero 5 
    return b #retorno de la funcion con un parametro b

a, b = [3], [4] #definicion de las variables a y b 
print(f"Al principio : a = {a} b = {b}") #impresion de las variables a y b 
cambia(a) #llamada a la funcion con el parametro a 
print(f"Después de cambia(a): a = {a} b = {b}") #impresion de las variables a y b
cambia(b) #llamada a la funcion con el parametro b
print(f"Después de cambia(b): a = {a} b = {b}") #impresion de las variables a y b 
print("Programa terminado") #impresion de la cadena de texto que indica el fin del programa

def aumenta(x): #definicion de la funcion con un parametro 
    print(id(x)) #impresion de la direccion de memoria de la variable x
    x += 1 #suma de la variable x con el numero 1 
    print(id(x)) #impresion de la direccion de memoria de la variable x
    return x #retorno de la funcion con un parametro x

a = 3 #definicion de la variable a
print(id(3), id(4)) #impresion de la direccion de memoria de los numeros 3 y 4
print(id(a)) #impresion de la direccion de memoria de la variable a
print(aumenta(a)) #llamada a la funcion con el parametro a y impresion del resultado
print(a) #impresion de la variable a
print(id(a)) #impresion de la direccion de memoria de la variable a

def aumenta(x): #definicion de la funcion con un parametro 
    print(id(x)) #impresion de la direccion de memoria de la variable x
    x += [1] #suma de la lista x con el numero 1 aumenta la direccion de memoria
    print(id(x)) #impresion de la direccion de memoria de la variable x
    return x #retorno de la funcion con un parametro x

a = [3] #definicion de la variable a
print(id(a)) #impresion de la direccion de memoria de la variable a
print(aumenta(a)) #llamada a la funcion con el parametro a y impresion del resultado
print(a) #impresion de la variable a

print(id(a)) #impresion de la direccion de memoria de la variable a