void main() {
  var hor = new Reloj.saturno(2, 3, 5);
  print(hor.hora);
}

class Reloj {
  int hora, minuto, segundo;
  Reloj.jupiter(this.hora, this.minuto, this.segundo);
  Reloj.saturno(hora, this.minuto, this.segundo) {
    this.hora = hora * 30;
  }
}
