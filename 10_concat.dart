import 'dart:io';

void main(){
   print("Escribe tu nombre:");
  String? nombre = stdin.readLineSync() ?? "Anonimo";
   print("Escribe tu segundo nombre:");
  String? segundonombre = stdin.readLineSync() ?? "Anonimo";
   print("Escribe tu apellido:");
  String? apellido = stdin.readLineSync() ?? "Anonimo";

  print("hola $nombre, $segundonombre, $apellido"); 
  
}