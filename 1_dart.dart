// // Saca el numero mayor.
// int max3(int a, int b, int c) {
//   int r = a;
//   if (b > r) r = b;
//   if (c > r) r = c;
//   return r;
// }
import 'dart:collection';
import 'dart:convert';

// //Si no hay tipo de retorno se toma como void
// f() {
//   print("No hago nada");
// }

// // Parametros en Dart

// String transfom(String s, [bool mayusc, int exclama = 25]) {
//   if (mayusc != null && mayusc == true) {
//     s = s.toUpperCase();
//   }
//   if (exclama != null) {
//     s += '!' * exclama;
//   }
//   return s;
// }

void main() {
  // muestra_lista_b([
  //   "Hola",
  //   "Mundo",
  //   "Cruel",
  // ]);
  // print(triangular(4));
  // var suma10 = nuevoSumador(15.0);
  // print(suma10(160.01));

  var s =
      "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill";
  print(strConverter(s));
}

strConverter(s) {
  s = s.toUpperCase().replaceAll(";", '","').replaceAll(":", '":"');
  ;
  s += "{\"" + "" + s + '"}';
  var x = "\"" + "" + s;
  print(x);
  Map deco = json.decode(x);
  // print("{\"" + "" + s);

  // s.keys.toList()..sort();
  // print(s);
  // dynamic c = "{$s}";
  // Map<dynamic, String> namesMap = c;
  // return c;
}

// void muestra_lista_b(List<String> lista) => lista.forEach((e) => print(e));

// nuevoSumador(double dx) {
//   return (double x) => x + dx;
// }

// triangular(n) {
//   int c = 0;
//   if (n < 0) {
//     return 0;
//   } else {
//     while (n != 0) {
//       c = c + n;
//       n--;
//     }
//     return (c);
//   }
//   return 0;
// }
