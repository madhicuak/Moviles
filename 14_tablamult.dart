import 'dart:io';

void main()
{
  //variables
  double test = 1;
  
  //validacion
  while (test != 0)
  {
    //se ingresa variable test junto con la comprobacion
    print('Introduzca el valor del que desea mostrar su tabla de multiplicar (hasta el 50): ');
    test = double.parse(stdin.readLineSync()!);
    if (test == 0) break;
    //realiza y da el output de la operacion
    for (var i = 1; i <= 50; i++)
    {
      double result = i * test;
      print('$test x $i = $result');
    }
  }
  //mensaje de fin de programa
  print('Byee');
}