import 'dart:convert';
import 'dart:io';

class Launch {
  String id, details;
  bool sucess;
  DateTime date;

  Launch.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.details = json['details'];
    this.sucess = json['sucess'];
    this.date = DateTime.fromMillisecondsSinceEpoch(json['date_unix'] * 1000);
  }
}

void main() {
  var file = File("data/spacex.json");
  var text = file.readAsStringSync();
  var json = jsonDecode(text);
  List<Launch> launches = [];
  for (var launchJ in json) {
    launches.add(Launch.fromJson(launchJ));
  }
  print(launches.length);
}
