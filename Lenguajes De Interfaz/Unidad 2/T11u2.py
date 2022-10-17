import getpass
import os
ans = True
while ans:
  contra = ('John', 'Paul', 'George')
  usuario= ('Revolver', 'Sgt Pepper', 'Rubber Soul')
  usr = getpass.getpass("Tu Usuario: ")
  passw= getpass.getpass("Tu contraseña es: ")
  if usr in usuario:
    if passw in contra:
      print (f'Bienvenido {usr}')
      
  else:
    print('El usuario es incorrecto')
    if os.name == 'nt':
      os.system('cls')
    else:
      os.system("clear")