import 'dart:io'; //importa la librería para entrada/salida en consola (leer y escribir datos)

void primo(int numero, bool esPrimo) {
  bool esPrimo = true; //variable para determinar si el número es primo o no

  if (numero <= 1) { //los números menores o iguales a 1 no son primos
    esPrimo = false;
  } else {
    for (int i = 2; i <= numero ~/ 2; i++) { //bucle para verificar si el número es divisible por algún otro número
      if (numero % i == 0) { //si el número es divisible por otro número, no es primo
        esPrimo = false;
        break; //sale del bucle si se encuentra un divisor
      }
    }
  }

  if (esPrimo) {
    print('$numero es un número primo.'); //mensaje de confirmación si el número es primo
  } else {
    print('$numero no es un número primo.'); //mensaje de confirmación si el número no es primo
  }
}
main() {

  int n = 0;
  stdout.write('Ingrese un número para verificar si es primo: '); //pide ingresar un número
  n = int.parse(stdin.readLineSync()!); //lee el número ingresado y lo convierte a entero

  primo(n, true); //llama a la función para verificar si el número es primo


}

