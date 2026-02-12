import 'dart:io';
void main() {
  print("Escribe tu nombre:");
  String? nombre = stdin.readLineSync() ?? "Anonimo";
  print("Hola, $nombre");
}
