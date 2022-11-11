import 'dart:convert';

SrEquipmentModel srEquipmentModelFromJson(String str) =>
    SrEquipmentModel.fromJson(json.decode(str));
String srEquipmentModelToJson(SrEquipmentModel data) =>
    json.encode(data.toJson());

class SrEquipmentModel {
  SrEquipmentModel({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  SrEquipmentModel.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  SrEquipmentModel copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      SrEquipmentModel(
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
    List<SrEquipModel>? srEquipModel,
  }) {
    _srEquipModel = srEquipModel;
  }

  Data.fromJson(dynamic json) {
    if (json['sr_equip_model'] != null) {
      _srEquipModel = [];
      json['sr_equip_model'].forEach((v) {
        _srEquipModel?.add(SrEquipModel.fromJson(v));
      });
    }
  }
  List<SrEquipModel>? _srEquipModel;
  Data copyWith({
    List<SrEquipModel>? srEquipModel,
  }) =>
      Data(
        srEquipModel: srEquipModel ?? _srEquipModel,
      );
  List<SrEquipModel>? get srEquipModel => _srEquipModel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_srEquipModel != null) {
      map['sr_equip_model'] = _srEquipModel?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

SrEquipModel srEquipModelFromJson(String str) =>
    SrEquipModel.fromJson(json.decode(str));
String srEquipModelToJson(SrEquipModel data) => json.encode(data.toJson());

class SrEquipModel {
  SrEquipModel({
    String? srEquipModel,
  }) {
    _srEquipModel = srEquipModel;
  }

  SrEquipModel.fromJson(dynamic json) {
    _srEquipModel = json['sr_equip_model'];
  }
  String? _srEquipModel;
  SrEquipModel copyWith({
    String? srEquipModel,
  }) =>
      SrEquipModel(
        srEquipModel: srEquipModel ?? _srEquipModel,
      );
  String? get srEquipModel => _srEquipModel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_equip_model'] = _srEquipModel;
    return map;
  }
}
