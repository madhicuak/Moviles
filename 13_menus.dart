import 'dart:io';   //importa la librería para entrada/salida en consola (leer y escribir datos)
import 'dart:math'; //importa funciones matemáticas como pi y pow

//función principal del programa
void main() {
  while (true) { //bucle q se repite hasta que se decida salir
    print('\n=== Menú Principal ==='); // Muestra el título del menú para q se vae coqueto
    print('Calcular Área (1)');        // Opción 1: calcular área
    print('Calcular Volumen (2)');     // Opción 2: calcular volumen
    print('Salir (3)');                // Opción 3: salir del programa
    stdout.write('Seleccione una opción ingresando un número del 1 al 3: '); //pide ingresar una opción
    String? opcion = stdin.readLineSync(); //lee la opción ingresada por el usuario
    print('\n'); //salto de línea

    //condicionales según la opción q se elegio
    if (opcion == '1') {
      calcularArea(); //llama a la función para calcular áreas
    } else if (opcion == '2') {
      calcularVolumen(); //llama a la función para calcular volúmenes
    } else if (opcion == '3') { 
      print('byee');  //mensaje de confirmacion 
      break;          //sale del bucle y termina el programa
    } else {
      print('opción inválida, intenta de nuevo.'); //mensaje de error si la opción no es válida
    }
  }
}

//función para calcular áreas
void calcularArea() {
  print('\n=== Menú De Áreas ===');
  print('Círculo (1)');            // Opción 1: círculo
  print('Triángulo (2)');          // Opción 2: triángulo
  print('Rectángulo (3)');         // Opción 3: rectángulo
  stdout.write('Selecciona una figura ingresando un número del 1 al 3: '); // Elegir la figura
  String? figura = stdin.readLineSync(); //lee la opcion seleccionada
  print('\n'); //salto de línea

  //selección según la figura
  switch (figura) {
    case '1': // Círculo
      stdout.write('Ingrese el radio (u): '); //pide el radio
      double radio = double.parse(stdin.readLineSync()!); //convierte entrada a número
      double area = pi * pow(radio, 2); //fórmula del área del círculo
      print('El área del círculo es: $area unidades cuadradas'); //muestra el resultado
      break;

    case '2': // Triángulo
      stdout.write('Ingrese la base (u): '); //pide base
      double base = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese la altura (u): '); //pide altura
      double altura = double.parse(stdin.readLineSync()!);
      double area = (base * altura) / 2; //fórmula del área del triángulo
      print('El área del triángulo es: $area unidades cuadradas');
      break;

    case '3': // Rectángulo
      stdout.write('Ingrese la base (u): ');
      double base = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese la altura (u): ');
      double altura = double.parse(stdin.readLineSync()!);
      double area = base * altura; //fórmula del área del rectángulo
      print('El área del rectángulo es: $area unidades cuadradas');
      break;

    default: //si la opción no es válida
      print('Opción inválida.');
  }
}

//función para calcular volúmenes
void calcularVolumen() {
  print('\n=== Menú De Volumen ---'); 
  print('Esfera (1)');                 // Opción 1: esfera
  print('Pirámide (2)');               // Opción 2: pirámide
  print('Cubo (3)');                   // Opción 3: cubo
  stdout.write('Selecciona una figura ingresando un numero del 1 al 3: '); //pide seleccionar una figura
  String? figura = stdin.readLineSync();   //lee la opcion seleccionada
  print('\n'); //salto de línea

  //selección según la figura
  switch (figura) {
    case '1': // Esfera
      stdout.write('Ingrese el radio (u): ');
      double radio = double.parse(stdin.readLineSync()!);
      double volumen = (4 / 3) * pi * pow(radio, 3); //fórmula del volumen de la esfera
      print('El volumen de la esfera es: $volumen unidades cúbicas');
      break;

    case '2': // Pirámide
      stdout.write('Ingrese la base (u): ');
      double base = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese la altura (u): ');
      double altura = double.parse(stdin.readLineSync()!);
      double volumen = (base * base * altura) / 3; //fórmula del volumen de la pirámide
      print('El volumen de la pirámide es: $volumen unidades cúbicas');
      break;

    case '3': // Cubo
      stdout.write('Ingrese el lado (u): ');
      double lado = double.parse(stdin.readLineSync()!);
      double volumen = pow(lado, 3).toDouble(); //fórmula del volumen del cubo
      print('El volumen del cubo es: $volumen unidades cúbicas');
      break;

    default: //si la opción no es válida
      print('opción inválida.');
  }
}
