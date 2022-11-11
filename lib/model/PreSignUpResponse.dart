import 'dart:convert';
/// statuscode : 1
/// data : {"uid":"632951aacdbea3.85456265"}
/// statusMessage : "OTP has sent to registered email"

PreSignUpResponse preSignUpResponseFromJson(String str) => PreSignUpResponse.fromJson(json.decode(str));
String preSignUpResponseToJson(PreSignUpResponse data) => json.encode(data.toJson());
class PreSignUpResponse {
  PreSignUpResponse({
      int? statuscode, 
      Data? data, 
      String? statusMessage,}){
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
}

  PreSignUpResponse.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
PreSignUpResponse copyWith({  int? statuscode,
  Data? data,
  String? statusMessage,
}) => PreSignUpResponse(  statuscode: statuscode ?? _statuscode,
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

/// uid : "632951aacdbea3.85456265"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? uid,}){
    _uid = uid;
}

  Data.fromJson(dynamic json) {
    _uid = json['uid'];
  }
  String? _uid;
Data copyWith({  String? uid,
}) => Data(  uid: uid ?? _uid,
);
  String? get uid => _uid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uid'] = _uid;
    return map;
  }

}