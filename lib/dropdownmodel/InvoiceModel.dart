import 'dart:convert';
/// statuscode : 1
/// data : {"hdnTaxType":[{"hdnTaxType":"individual"},{"hdnTaxType":"group"}],"invoicestatus":[{"invoicestatus":"AutoCreated"},{"invoicestatus":"Created"},{"invoicestatus":"Cancel"},{"invoicestatus":"Approved"},{"invoicestatus":"Sent"},{"invoicestatus":"Credit Invoice"},{"invoicestatus":"Paid"}],"region_id":[]}
/// statusMessage : "Successfully Fetched Data"

InvoiceModel invoiceModelFromJson(String str) => InvoiceModel.fromJson(json.decode(str));
String invoiceModelToJson(InvoiceModel data) => json.encode(data.toJson());
class InvoiceModel {
  InvoiceModel({
      int? statuscode, 
      Data? data, 
      String? statusMessage,}){
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
}

  InvoiceModel.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
InvoiceModel copyWith({  int? statuscode,
  Data? data,
  String? statusMessage,
}) => InvoiceModel(  statuscode: statuscode ?? _statuscode,
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

/// hdnTaxType : [{"hdnTaxType":"individual"},{"hdnTaxType":"group"}]
/// invoicestatus : [{"invoicestatus":"AutoCreated"},{"invoicestatus":"Created"},{"invoicestatus":"Cancel"},{"invoicestatus":"Approved"},{"invoicestatus":"Sent"},{"invoicestatus":"Credit Invoice"},{"invoicestatus":"Paid"}]
/// region_id : []

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      List<HdnTaxType>? hdnTaxType, 
      List<Invoicestatus>? invoicestatus, 
      List<dynamic>? regionId,}){
    _hdnTaxType = hdnTaxType;
    _invoicestatus = invoicestatus;
    _regionId = regionId;
}

  Data.fromJson(dynamic json) {
    if (json['hdnTaxType'] != null) {
      _hdnTaxType = [];
      json['hdnTaxType'].forEach((v) {
        _hdnTaxType?.add(HdnTaxType.fromJson(v));
      });
    }
    if (json['invoicestatus'] != null) {
      _invoicestatus = [];
      json['invoicestatus'].forEach((v) {
        _invoicestatus?.add(Invoicestatus.fromJson(v));
      });
    }
    if (json['region_id'] != null) {
      _regionId = [];
      json['region_id'].forEach((v) {
        // _regionId?.add(Dynamic.fromJson(v));
      });
    }
  }
  List<HdnTaxType>? _hdnTaxType;
  List<Invoicestatus>? _invoicestatus;
  List<dynamic>? _regionId;
Data copyWith({  List<HdnTaxType>? hdnTaxType,
  List<Invoicestatus>? invoicestatus,
  List<dynamic>? regionId,
}) => Data(  hdnTaxType: hdnTaxType ?? _hdnTaxType,
  invoicestatus: invoicestatus ?? _invoicestatus,
  regionId: regionId ?? _regionId,
);
  List<HdnTaxType>? get hdnTaxType => _hdnTaxType;
  List<Invoicestatus>? get invoicestatus => _invoicestatus;
  List<dynamic>? get regionId => _regionId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_hdnTaxType != null) {
      map['hdnTaxType'] = _hdnTaxType?.map((v) => v.toJson()).toList();
    }
    if (_invoicestatus != null) {
      map['invoicestatus'] = _invoicestatus?.map((v) => v.toJson()).toList();
    }
    if (_regionId != null) {
      map['region_id'] = _regionId?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// invoicestatus : "AutoCreated"

Invoicestatus invoicestatusFromJson(String str) => Invoicestatus.fromJson(json.decode(str));
String invoicestatusToJson(Invoicestatus data) => json.encode(data.toJson());
class Invoicestatus {
  Invoicestatus({
      String? invoicestatus,}){
    _invoicestatus = invoicestatus;
}

  Invoicestatus.fromJson(dynamic json) {
    _invoicestatus = json['invoicestatus'];
  }
  String? _invoicestatus;
Invoicestatus copyWith({  String? invoicestatus,
}) => Invoicestatus(  invoicestatus: invoicestatus ?? _invoicestatus,
);
  String? get invoicestatus => _invoicestatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['invoicestatus'] = _invoicestatus;
    return map;
  }

}

/// hdnTaxType : "individual"

HdnTaxType hdnTaxTypeFromJson(String str) => HdnTaxType.fromJson(json.decode(str));
String hdnTaxTypeToJson(HdnTaxType data) => json.encode(data.toJson());
class HdnTaxType {
  HdnTaxType({
      String? hdnTaxType,}){
    _hdnTaxType = hdnTaxType;
}

  HdnTaxType.fromJson(dynamic json) {
    _hdnTaxType = json['hdnTaxType'];
  }
  String? _hdnTaxType;
HdnTaxType copyWith({  String? hdnTaxType,
}) => HdnTaxType(  hdnTaxType: hdnTaxType ?? _hdnTaxType,
);
  String? get hdnTaxType => _hdnTaxType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['hdnTaxType'] = _hdnTaxType;
    return map;
  }

}