import 'dart:convert';

IntiData intiDataFromJson(String str) => IntiData.fromJson(json.decode(str));
String intiDataToJson(IntiData data) => json.encode(data.toJson());

class IntiData {
  IntiData({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  IntiData.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  IntiData copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      IntiData(
        statuscode: statuscode ?? _statuscode,
        data: data ?? _data,
        statusMessage: statusMessage ?? _statusMessage,
      );
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

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<Office>? office,
  }) {
    _office = office;
  }

  Data.fromJson(dynamic json) {
    if (json['office'] != null) {
      _office = [];
      json['office'].forEach((v) {
        _office?.add(Office.fromJson(v));
      });
    }
  }
  List<Office>? _office;
  Data copyWith({
    List<Office>? office,
  }) =>
      Data(
        office: office ?? _office,
      );
  List<Office>? get office => _office;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_office != null) {
      map['office'] = _office?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Office officeFromJson(String str) => Office.fromJson(json.decode(str));
String officeToJson(Office data) => json.encode(data.toJson());

class Office {
  Office({
    String? office,
  }) {
    _office = office;
  }

  Office.fromJson(dynamic json) {
    _office = json['office'];
  }
  String? _office;
  Office copyWith({
    String? office,
  }) =>
      Office(
        office: office ?? _office,
      );
  String? get office => _office;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['office'] = _office;
    return map;
  }
}
