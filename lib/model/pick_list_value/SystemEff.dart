import 'dart:convert';

SystemEff systemEffFromJson(String str) => SystemEff.fromJson(json.decode(str));
String systemEffToJson(SystemEff data) => json.encode(data.toJson());

class SystemEff {
  SystemEff({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  SystemEff.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  SystemEff copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      SystemEff(
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
    List<SystemAffected>? systemAffected,
  }) {
    _systemAffected = systemAffected;
  }

  Data.fromJson(dynamic json) {
    if (json['system_affected'] != null) {
      _systemAffected = [];
      json['system_affected'].forEach((v) {
        _systemAffected?.add(SystemAffected.fromJson(v));
      });
    }
  }
  List<SystemAffected>? _systemAffected;
  Data copyWith({
    List<SystemAffected>? systemAffected,
  }) =>
      Data(
        systemAffected: systemAffected ?? _systemAffected,
      );
  List<SystemAffected>? get systemAffected => _systemAffected;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_systemAffected != null) {
      map['system_affected'] = _systemAffected?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

SystemAffected systemAffectedFromJson(String str) =>
    SystemAffected.fromJson(json.decode(str));
String systemAffectedToJson(SystemAffected data) => json.encode(data.toJson());

class SystemAffected {
  SystemAffected({
    String? systemAffected,
  }) {
    _systemAffected = systemAffected;
  }

  SystemAffected.fromJson(dynamic json) {
    _systemAffected = json['system_affected'];
  }
  String? _systemAffected;
  SystemAffected copyWith({
    String? systemAffected,
  }) =>
      SystemAffected(
        systemAffected: systemAffected ?? _systemAffected,
      );
  String? get systemAffected => _systemAffected;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['system_affected'] = _systemAffected;
    return map;
  }
}
