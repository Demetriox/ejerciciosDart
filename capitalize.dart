void main() {
  print(capitalize("holamundo"));
}

List<String> capitalize(String x) {
  // your code here
  String s1 = "", s2 = "";
  List<String> s = [];
  for (int i = 0; i < x.length; i++) {
    if (i % 2 == 0) {
      s1 += x[i].toUpperCase();
      s2 += x[i].toLowerCase();
    } else {
      s1 += x[i].toLowerCase();
      s2 += x[i].toUpperCase();
    }
  }
  s.add(s1);
  s.add(s2);
  return s;
}
