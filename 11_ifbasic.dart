import 'dart:io';

void main(){
 
  String? a = stdin.readLineSync() ?? "Anonimo";
   print("ingresa un primer numero:");
  String? b = stdin.readLineSync() ?? "Anonimo";
  print("ingresa un segundo numero");

  print("el numero $a es mayor a $b");

   if (a < b){
    print("$a"); 

    print("$b"); 
   }

}