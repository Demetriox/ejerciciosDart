// Jose Angel
// sent
// a few seconds ago
// Calcular sueldo con sus horas trabajadas, 40 horas o menos la paga es normal, de 41-50 horas la paga es al doble, de 50 en adelante la paga es del triple\
import 'dart:io';

void main() {
  print("Cual es tu Nombre?");
  String name = stdin.readLineSync();
  print("Cual la Cantidad de Horas");
  int horas = int.parse(stdin.readLineSync());
  print("Cual es el pago por Hora");
  int sala = int.parse(stdin.readLineSync());
  var sueldo = calcular(horas, sala);
  print(" El salario del Empleado " + name + " Es de $sueldo");
}

int calcular(horas, sala) {
  var sueldoTipo1 = sala * horas;
  var sueldoTipo2 = (sala * 40) + (sala * (horas - 40) * 2);
  var sueldoTipo3 = (sala * 40) + (sala * 10 * 2) + (sala * (horas - 50) * 3);

  return horas > 50
      ? sueldoTipo3
      : horas > 40 && horas <= 50 ? sueldoTipo2 : sueldoTipo1;
}
