import 'dart:io';

void main() {

  int suma= 0; 


  print("ingresa el primer numero");
  int a = int.parse(stdin.readLineSync()!);

  print("ingresa el segundo numero");
  int b = int.parse(stdin.readLineSync()!);


   suma = a+b;

  print("la suma es  $suma"); 

}
