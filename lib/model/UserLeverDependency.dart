import 'dart:convert';

UserLeverDependency userLeverDependencyFromJson(String str) =>
    UserLeverDependency.fromJson(json.decode(str));
String userLeverDependencyToJson(UserLeverDependency data) =>
    json.encode(data.toJson());

class UserLeverDependency {
  UserLeverDependency({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  UserLeverDependency.fromJson(dynamic json) {
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

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<Designaion>? designaion,
    List<SubServiceManagerRole>? subServiceManagerRole,
  }) {
    _designaion = designaion;
    _subServiceManagerRole = subServiceManagerRole;
  }

  Data.fromJson(dynamic json) {
    if (json['designaion'] != null) {
      _designaion = [];
      json['designaion'].forEach((v) {
        _designaion?.add(Designaion.fromJson(v));
      });
    }
    if (json['sub_service_manager_role'] != null) {
      _subServiceManagerRole = [];
      json['sub_service_manager_role'].forEach((v) {
        _subServiceManagerRole?.add(SubServiceManagerRole.fromJson(v));
      });
    }
  }
  List<Designaion>? _designaion;
  List<SubServiceManagerRole>? _subServiceManagerRole;

  List<Designaion>? get designaion => _designaion;
  List<SubServiceManagerRole>? get subServiceManagerRole =>
      _subServiceManagerRole;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_designaion != null) {
      map['designaion'] = _designaion?.map((v) => v.toJson()).toList();
    }
    if (_subServiceManagerRole != null) {
      map['sub_service_manager_role'] =
          _subServiceManagerRole?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

SubServiceManagerRole subServiceManagerRoleFromJson(String str) =>
    SubServiceManagerRole.fromJson(json.decode(str));
String subServiceManagerRoleToJson(SubServiceManagerRole data) =>
    json.encode(data.toJson());

class SubServiceManagerRole {
  SubServiceManagerRole({
    String? subServiceManagerRole,
  }) {
    _subServiceManagerRole = subServiceManagerRole;
  }

  SubServiceManagerRole.fromJson(dynamic json) {
    _subServiceManagerRole = json['sub_service_manager_role'];
  }
  String? _subServiceManagerRole;

  String? get subServiceManagerRole => _subServiceManagerRole;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sub_service_manager_role'] = _subServiceManagerRole;
    return map;
  }
}

Designaion designaionFromJson(String str) =>
    Designaion.fromJson(json.decode(str));
String designaionToJson(Designaion data) => json.encode(data.toJson());

class Designaion {
  Designaion({
    String? designaion,
  }) {
    _designaion = designaion;
  }

  Designaion.fromJson(dynamic json) {
    _designaion = json['designaion'];
  }
  String? _designaion;

  String? get designaion => _designaion;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['designaion'] = _designaion;
    return map;
  }
}
