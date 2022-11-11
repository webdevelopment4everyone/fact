import 'dart:convert';

RefrRecord refrRecordFromJson(String str) =>
    RefrRecord.fromJson(json.decode(str));
String refrRecordToJson(RefrRecord data) => json.encode(data.toJson());

class RefrRecord {
  RefrRecord({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  RefrRecord.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  RefrRecord copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      RefrRecord(
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
    List<VendroNameRecord>? referenceRecords,
  }) {
    _referenceRecords = referenceRecords;
  }

  Data.fromJson(dynamic json) {
    if (json['referenceRecords'] != null) {
      _referenceRecords = [];
      json['referenceRecords'].forEach((v) {
        _referenceRecords?.add(VendroNameRecord.fromJson(v));
      });
    }
  }
  List<VendroNameRecord>? _referenceRecords;
  Data copyWith({
    List<VendroNameRecord>? referenceRecords,
  }) =>
      Data(
        referenceRecords: referenceRecords ?? _referenceRecords,
      );
  List<VendroNameRecord>? get vendornamerecord => _referenceRecords;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_referenceRecords != null) {
      map['referenceRecords'] =
          _referenceRecords?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

VendroNameRecord referenceRecordsFromJson(String str) =>
    VendroNameRecord.fromJson(json.decode(str));
String referenceRecordsToJson(VendroNameRecord data) =>
    json.encode(data.toJson());

class VendroNameRecord {
  VendroNameRecord({
    String? label,
    String? value,
  }) {
    _label = label;
    _value = value;
  }

  VendroNameRecord.fromJson(dynamic json) {
    _label = json['label'];
    _value = json['value'];
  }
  String? _label;
  String? _value;
  VendroNameRecord copyWith({
    String? label,
    String? value,
  }) =>
      VendroNameRecord(
        label: label ?? _label,
        value: value ?? _value,
      );
  String? get label => _label;
  String? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = _label;
    map['value'] = _value;
    return map;
  }
}
