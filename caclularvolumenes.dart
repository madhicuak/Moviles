import 'dart:io';
import 'dart:math';

double _readDouble(String prompt) {
  while (true) {
    stdout.write(prompt);
    final input = stdin.readLineSync();
    final value = double.tryParse(input ?? '');
    if (value != null) return value;
    print(' Entrada inválida. Intenta de nuevo.');
  }
}

int _readInt(String prompt, {List<int>? allowed}) {
  while (true) {
    stdout.write(prompt);
    final input = stdin.readLineSync();
    final value = int.tryParse(input ?? '');
    if (value == null) {
      print(' Entrada inválida. Intenta de nuevo.');
      continue;
    }
    if (allowed != null && !allowed.contains(value)) {
      print('Opción no válida. Intenta de nuevo.');
      continue;
    }
    return value;
  }
}

void main() {
  while (true) {
    print('\n=== MENÚ PRINCIPAL ===');
    print('1) Calcular ÁREA');
    print('2) Calcular VOLUMEN');
    print('0) Salir');

    final op = _readInt('Elige una opción: ', allowed: [0, 1, 2]);

    if (op == 0) {
      print(' Programa finalizado.');
      break;
    }

    if (op == 1) {
      // Submenú áreas
      print('\n--- SUBMENÚ ÁREAS ---');
      print('1) Círculo');
      print('2) Triángulo');
      print('3) Rectángulo');
      print('0) Volver');

      final sub = _readInt('Elige una figura: ', allowed: [0, 1, 2, 3]);
      if (sub == 0) continue;

      double area;

      switch (sub) {
        case 1:
          final r = _readDouble('Radio: ');
          area = pi * r * r;
          print(' Área del círculo = ${area.toStringAsFixed(2)}');
          break;
        case 2:
          final b = _readDouble('Base: ');
          final h = _readDouble('Altura: ');
          area = (b * h) / 2;
          print('Área del triángulo = ${area.toStringAsFixed(2)}');
          break;
        case 3:
          final a = _readDouble('Lado A: ');
          final b = _readDouble('Lado B: ');
          area = a * b;
          print('Área del rectángulo = ${area.toStringAsFixed(2)}');
          break;
      }
    } else {
      // Submenú volúmenes
      print('\n--- SUBMENÚ VOLÚMENES ---');
      print('1) Esfera');
      print('2) Pirámide (base rectangular)');
      print('3) Cubo');
      print('0) Volver');

      final sub = _readInt('Elige un sólido: ', allowed: [0, 1, 2, 3]);
      if (sub == 0) continue;

      double vol;

      switch (sub) {
        case 1:
          final r = _readDouble('Radio: ');
          vol = (4 / 3) * pi * pow(r, 3);
          print('Volumen de la esfera = ${vol.toStringAsFixed(2)}');
          break;
        case 2:
          final largo = _readDouble('Largo de la base: ');
          final ancho = _readDouble('Ancho de la base: ');
          final h = _readDouble('Altura: ');
          vol = (largo * ancho * h) / 3;
          print('Volumen de la pirámide = ${vol.toStringAsFixed(2)}');
          break;
        case 3:
          final a = _readDouble('Arista (lado): ');
          vol = a * a * a;
          print('Volumen del cubo = ${vol.toStringAsFixed(2)}');
          break;
      }
    }
  }
}

