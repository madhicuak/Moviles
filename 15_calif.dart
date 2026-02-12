import 'dart:io';

//función principal del programa
void main() {
  //Listas d cadad sistema y equivalencias
  List<String> usa = ['A+', 'A', 'B', 'C', 'D', 'F']; //calificaciones en el sistema gringo
  List<String> mex = ['10', '9', '8', '7', '6', '5']; //equivalencias en el sistema mexichango


  String? entrada; //variable para guardar lo que escriba el usuario 
  bool valido = false; //variable para saber si la entrada es válida 
  int indice = -1; //variable para guardar la posición de la calificación en la lista

  //mensaje inicial para pedir la calif
  print('Introduzca la calificación en el sistema americano:');

  //bucle de validación
  while (!valido) {
    entrada = stdin.readLineSync(); //lee lo que el usuario escribe en consola

    if (entrada != null) {  //verifica que no sea nulo
      entrada = entrada.trim().toUpperCase(); //quita espacios y convierte a mayúsculas

      //verificar si la entrada está en la lista usa
      if (usa.contains(entrada)) {  
        valido = true;                    //marca que la entrada es válida
        indice = usa.indexOf(entrada);    //guarda el index donde se encontró la calificación
      } else {
        //mensaje de error si la calif no existe en la lista usa
        print('Ingrese una calificación valida:');
      }
    }
  }

  //muestra la conversión de un sistema a otro
  print('La calificación $entrada equivale a ${mex[indice]} en el sistema mexichango');
}
