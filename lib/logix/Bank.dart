import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Bank {
  String? efxLoo1;
  String? efxLoo2;
  String? efxLoo3;
  String? efxLoo4;
  String? efxLoo5;

  Bank({this.efxLoo1, this.efxLoo2, this.efxLoo3, this.efxLoo4, this.efxLoo5});

  Bank.fromJson(Map<String, dynamic> json) {
    efxLoo1 = json['efxLoo1'];
    efxLoo2 = json['efxLoo2'];
    efxLoo3 = json['efxLoo3'];
    efxLoo4 = json['efxLoo4'];
    efxLoo5 = json['efxLoo5'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['efxLoo1'] = efxLoo1;
    data['efxLoo2'] = efxLoo2;
    data['efxLoo3'] = efxLoo3;
    data['efxLoo4'] = efxLoo4;
    data['efxLoo5'] = efxLoo5;
    return data;
  }
}