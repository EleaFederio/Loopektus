import 'package:esp2688/logix/Bank.dart' show Bank;
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(explicitToJson: true)
class LoopSwitcher {
  Bank? bank;

  LoopSwitcher({this.bank});

  LoopSwitcher.fromJson(Map<String, dynamic> json) {
    // bank = json['bank'] != null ? new Bank.fromJson(json['bank']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    // if (this.bank != null) {
    //   data['bank'] = this.bank!.toJson();
    // }
    return data;
  }
}