import 'dart:convert';

/// statuscode : 1
/// data : {"sr_dep_system":[{"sr_dep_system":"test value"}]}
/// statusMessage : "Successfully Fetched Data"

GeneralSystemPickList generalSystemPickListFromJson(String str) =>
    GeneralSystemPickList.fromJson(json.decode(str));
String generalSystemPickListToJson(GeneralSystemPickList data) =>
    json.encode(data.toJson());

class GeneralSystemPickList {
  GeneralSystemPickList({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  GeneralSystemPickList.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  GeneralSystemPickList copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      GeneralSystemPickList(
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

/// sr_dep_system : [{"sr_dep_system":"test value"}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<SrDepSystem>? srDepSystem,
  }) {
    _srDepSystem = srDepSystem;
  }

  Data.fromJson(dynamic json) {
    if (json['sr_dep_system'] != null) {
      _srDepSystem = [];
      json['sr_dep_system'].forEach((v) {
        _srDepSystem?.add(SrDepSystem.fromJson(v));
      });
    }
  }
  List<SrDepSystem>? _srDepSystem;
  Data copyWith({
    List<SrDepSystem>? srDepSystem,
  }) =>
      Data(
        srDepSystem: srDepSystem ?? _srDepSystem,
      );
  List<SrDepSystem>? get srDepSystem => _srDepSystem;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_srDepSystem != null) {
      map['sr_dep_system'] = _srDepSystem?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// sr_dep_system : "test value"

SrDepSystem srDepSystemFromJson(String str) =>
    SrDepSystem.fromJson(json.decode(str));
String srDepSystemToJson(SrDepSystem data) => json.encode(data.toJson());

class SrDepSystem {
  SrDepSystem({
    String? srDepSystem,
  }) {
    _srDepSystem = srDepSystem;
  }

  SrDepSystem.fromJson(dynamic json) {
    _srDepSystem = json['sr_dep_system'];
  }
  String? _srDepSystem;
  SrDepSystem copyWith({
    String? srDepSystem,
  }) =>
      SrDepSystem(
        srDepSystem: srDepSystem ?? _srDepSystem,
      );
  String? get srDepSystem => _srDepSystem;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_dep_system'] = _srDepSystem;
    return map;
  }
}
