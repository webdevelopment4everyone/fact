import 'dart:convert';

/// statuscode : 1
/// data : "Not Warrantable"
/// statusMessage : "Successfully Fetched Data"

WarrentableModel warrentableModelFromJson(String str) =>
    WarrentableModel.fromJson(json.decode(str));
String warrentableModelToJson(WarrentableModel data) =>
    json.encode(data.toJson());

class WarrentableModel {
  WarrentableModel({
    int? statuscode,
    String? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  WarrentableModel.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'];
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  String? _data;
  String? _statusMessage;

  int? get statuscode => _statuscode;
  String? get data => _data;
  String? get statusMessage => _statusMessage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statuscode'] = _statuscode;
    map['data'] = _data;
    map['statusMessage'] = _statusMessage;
    return map;
  }
}
