import 'dart:convert';
/// statuscode : 1
/// data : {"business_vertical":[{"business_vertical":"Defence"},{"business_vertical":"Mining & Construction"},{"business_vertical":"Both Defence and Mining & Construction"}]}
/// statusMessage : "Successfully Fetched Data"

Businessvertical businessverticalFromJson(String str) => Businessvertical.fromJson(json.decode(str));
String businessverticalToJson(Businessvertical data) => json.encode(data.toJson());
class Businessvertical {
  Businessvertical({
      int? statuscode, 
      Data? data, 
      String? statusMessage,}){
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
}

  Businessvertical.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
Businessvertical copyWith({  int? statuscode,
  Data? data,
  String? statusMessage,
}) => Businessvertical(  statuscode: statuscode ?? _statuscode,
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

/// business_vertical : [{"business_vertical":"Defence"},{"business_vertical":"Mining & Construction"},{"business_vertical":"Both Defence and Mining & Construction"}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      List<BusinessVertical>? businessVertical,}){
    _businessVertical = businessVertical;
}

  Data.fromJson(dynamic json) {
    if (json['business_vertical'] != null) {
      _businessVertical = [];
      json['business_vertical'].forEach((v) {
        _businessVertical?.add(BusinessVertical.fromJson(v));
      });
    }
  }
  List<BusinessVertical>? _businessVertical;
Data copyWith({  List<BusinessVertical>? businessVertical,
}) => Data(  businessVertical: businessVertical ?? _businessVertical,
);
  List<BusinessVertical>? get businessVertical => _businessVertical;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_businessVertical != null) {
      map['business_vertical'] = _businessVertical?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// business_vertical : "Defence"

BusinessVertical businessVerticalFromJson(String str) => BusinessVertical.fromJson(json.decode(str));
String businessVerticalToJson(BusinessVertical data) => json.encode(data.toJson());
class BusinessVertical {
  BusinessVertical({
      String? businessVertical,}){
    _businessVertical = businessVertical;
}

  BusinessVertical.fromJson(dynamic json) {
    _businessVertical = json['business_vertical'];
  }
  String? _businessVertical;
BusinessVertical copyWith({  String? businessVertical,
}) => BusinessVertical(  businessVertical: businessVertical ?? _businessVertical,
);
  String? get businessVertical => _businessVertical;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['business_vertical'] = _businessVertical;
    return map;
  }

}