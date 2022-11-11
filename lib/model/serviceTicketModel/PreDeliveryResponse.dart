import 'dart:convert';

PreDeliveryResponse preDeliveryResponseFromJson(String str) =>
    PreDeliveryResponse.fromJson(json.decode(str));
String preDeliveryResponseToJson(PreDeliveryResponse data) =>
    json.encode(data.toJson());

class PreDeliveryResponse {
  PreDeliveryResponse({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  PreDeliveryResponse.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  PreDeliveryResponse copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      PreDeliveryResponse(
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
  Data copyWith({
    String? id,
    String? message,
    int? timestamp,
    String? usercreatedid,
    String? useruniqeid,
  }) =>
      Data(
        id: id ?? _id,
        message: message ?? _message,
        timestamp: timestamp ?? _timestamp,
        usercreatedid: usercreatedid ?? _usercreatedid,
        useruniqeid: useruniqeid ?? _useruniqeid,
      );
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
