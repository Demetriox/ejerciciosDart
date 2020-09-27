void main() {
  print(balancedNum(1024));
}

String balancedNum(numb) {
  String strN = numb.toString(), deceros;
  int n1 = 0, n2 = 0, strNcount = strN.length, medidor;

  medidor = strNcount % 2 == 0 ? 2 : 1;

  if (numb < 99) {
    return 'Balanced';
  }

  for (int i = 0; i <= strNcount / 2 - medidor; i++) {
    deceros = '1' + ('0' * (strNcount - (i + 1)));
    double multi1 = numb / int.parse(deceros);
    int multi2 = multi1.toInt();
    n2 = multi2 % 10 + n2;
    deceros = '1' + ('0' * i);
    double multi3 = numb / int.parse(deceros);
    int multi4 = multi3.toInt();
    n1 = multi4 % 10 + n1;
  }
  return n1 == n2 ? 'Balanced' : 'Not Balanced';
}
