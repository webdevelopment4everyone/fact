import 'dart:convert';

/// statuscode : 1
/// data : {"purpose":[{"purpose":"REHABILITATION"},{"purpose":"OVERHAUL"},{"purpose":"UPGRADTION"},{"purpose":"PARTS REQUIREMNT"},{"purpose":"EQUIPMENT HEALTH CHECK UP"}]}
/// statusMessage : "Successfully Fetched Data"

Purposevalue purposevalueFromJson(String str) =>
    Purposevalue.fromJson(json.decode(str));
String purposevalueToJson(Purposevalue data) => json.encode(data.toJson());

class Purposevalue {
  Purposevalue({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  Purposevalue.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;

  int? get statuscode => _statuscode;
  Data? get data => _data;
  String? get statusMessage => _statusMessage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statuscode'] = _statuscode;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['statusMessage'] = _statusMessage;
    return map;
  }
}

/// purpose : [{"purpose":"REHABILITATION"},{"purpose":"OVERHAUL"},{"purpose":"UPGRADTION"},{"purpose":"PARTS REQUIREMNT"},{"purpose":"EQUIPMENT HEALTH CHECK UP"}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<Purpose>? purpose,
  }) {
    _purpose = purpose;
  }

  Data.fromJson(dynamic json) {
    if (json['purpose'] != null) {
      _purpose = [];
      json['purpose'].forEach((v) {
        _purpose?.add(Purpose.fromJson(v));
      });
    }
  }
  List<Purpose>? _purpose;

  List<Purpose>? get purpose => _purpose;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_purpose != null) {
      map['purpose'] = _purpose?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// purpose : "REHABILITATION"

Purpose purposeFromJson(String str) => Purpose.fromJson(json.decode(str));
String purposeToJson(Purpose data) => json.encode(data.toJson());

class Purpose {
  Purpose({
    String? purpose,
  }) {
    _purpose = purpose;
  }

  Purpose.fromJson(dynamic json) {
    _purpose = json['purpose'];
  }
  String? _purpose;

  String? get purpose => _purpose;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['purpose'] = _purpose;
    return map;
  }
}
