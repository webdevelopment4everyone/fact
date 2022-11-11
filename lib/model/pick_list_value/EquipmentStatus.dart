import 'dart:convert';

EquipmentStatus equipmentStatusFromJson(String str) =>
    EquipmentStatus.fromJson(json.decode(str));
String equipmentStatusToJson(EquipmentStatus data) =>
    json.encode(data.toJson());

class EquipmentStatus {
  EquipmentStatus({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  EquipmentStatus.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  EquipmentStatus copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      EquipmentStatus(
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
    List<EquipStatus>? equipStatus,
  }) {
    _equipStatus = equipStatus;
  }

  Data.fromJson(dynamic json) {
    if (json['equip_status'] != null) {
      _equipStatus = [];
      json['equip_status'].forEach((v) {
        _equipStatus?.add(EquipStatus.fromJson(v));
      });
    }
  }
  List<EquipStatus>? _equipStatus;
  Data copyWith({
    List<EquipStatus>? equipStatus,
  }) =>
      Data(
        equipStatus: equipStatus ?? _equipStatus,
      );
  List<EquipStatus>? get equipStatus => _equipStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_equipStatus != null) {
      map['equip_status'] = _equipStatus?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

EquipStatus equipStatusFromJson(String str) =>
    EquipStatus.fromJson(json.decode(str));
String equipStatusToJson(EquipStatus data) => json.encode(data.toJson());

class EquipStatus {
  EquipStatus({
    String? equipStatus,
  }) {
    _equipStatus = equipStatus;
  }

  EquipStatus.fromJson(dynamic json) {
    _equipStatus = json['equip_status'];
  }
  String? _equipStatus;
  EquipStatus copyWith({
    String? equipStatus,
  }) =>
      EquipStatus(
        equipStatus: equipStatus ?? _equipStatus,
      );
  String? get equipStatus => _equipStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['equip_status'] = _equipStatus;
    return map;
  }
}
