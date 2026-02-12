import 'dart:io'; //importa librería

//función principal
void main() {
  double x = 1; //variable inicializada en 1 para controlar el bucle (evita que empiece en 0)
  double y = 0; //variable donde se guardará la suma de los números

  //mensaje inicial
  print("Introduzca todos los numeros a sumar o introduzca (0) para detener el programa");

  //bucle que se repite mientras q x sea distinto de 0
  while (x != 0) {

    //lee un número desde la consola, lo convierte a double y lo guarda en x
    x = double.parse(stdin.readLineSync()!);

    //suma el número leído a la variable y
    y += x;
  }

  //muestra el resultado de la suma en pantalla
  print("La suma de todos los digitos es: $y");
}
