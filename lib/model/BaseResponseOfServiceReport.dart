import 'dart:convert';

/// statuscode : 1
/// data : {"id":"46x88587","message":"Successfully Created The Record","timestamp":1663864586,"usercreatedid":"70","useruniqeid":"70"}
/// statusMessage : "Successfully Created The Record"

BaseResponseOfServiceReport baseResponseOfServiceReportFromJson(String str) =>
    BaseResponseOfServiceReport.fromJson(json.decode(str));
String baseResponseOfServiceReportToJson(BaseResponseOfServiceReport data) =>
    json.encode(data.toJson());

class BaseResponseOfServiceReport {
  BaseResponseOfServiceReport({
    int? statuscode,
    String? id,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _id = id;
    _statusMessage = statusMessage;
  }

  BaseResponseOfServiceReport.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
    _id = json['id'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  String? _id;

  int? get statuscode => _statuscode;
  Data? get data => _data;
  String? get statusMessage => _statusMessage;
  String? get getid => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statuscode'] = _statuscode;
    map['id'] = _id;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['statusMessage'] = _statusMessage;
    return map;
  }
}

/// id : "46x88587"
/// message : "Successfully Created The Record"
/// timestamp : 1663864586
/// usercreatedid : "70"
/// useruniqeid : "70"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    String? id,
    String? message,
    int? timestamp,
    String? usercreatedid,
    String? useruniqeid,
  }) {
    _id = id;
    _message = message;
    _timestamp = timestamp;
    _usercreatedid = usercreatedid;
    _useruniqeid = useruniqeid;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _message = json['message'];
    _timestamp = json['timestamp'];
    _usercreatedid = json['usercreatedid'];
    _useruniqeid = json['useruniqeid'];
  }
  String? _id;
  String? _message;
  int? _timestamp;
  String? _usercreatedid;
  String? _useruniqeid;

  String? get id => _id;
  String? get message => _message;
  int? get timestamp => _timestamp;
  String? get usercreatedid => _usercreatedid;
  String? get useruniqeid => _useruniqeid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['message'] = _message;
    map['timestamp'] = _timestamp;
    map['usercreatedid'] = _usercreatedid;
    map['useruniqeid'] = _useruniqeid;
    return map;
  }
}
