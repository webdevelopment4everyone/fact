import 'dart:convert';
/// statuscode : 1
/// data : {"quotestage":[{"quotestage":"Created"},{"quotestage":"Delivered"},{"quotestage":"Reviewed"},{"quotestage":"Accepted"},{"quotestage":"Rejected"}],"carrier":[{"carrier":"FedEx"},{"carrier":"UPS"},{"carrier":"USPS"},{"carrier":"DHL"},{"carrier":"BlueDart"}],"hdnTaxType":[{"hdnTaxType":"individual"},{"hdnTaxType":"group"}],"region_id":[],"cf_2383":[{"cf_2383":"Confirm"},{"cf_2383":"Reject"}]}
/// statusMessage : "Successfully Fetched Data"

EnquiryDetailsModel enquiryDetailsModelFromJson(String str) => EnquiryDetailsModel.fromJson(json.decode(str));
String enquiryDetailsModelToJson(EnquiryDetailsModel data) => json.encode(data.toJson());
class EnquiryDetailsModel {
  EnquiryDetailsModel({
      int? statuscode, 
      Data? data, 
      String? statusMessage,}){
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
}

  EnquiryDetailsModel.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
EnquiryDetailsModel copyWith({  int? statuscode,
  Data? data,
  String? statusMessage,
}) => EnquiryDetailsModel(  statuscode: statuscode ?? _statuscode,
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

// / quotestage : [{"quotestage":"Created"},{"quotestage":"Delivered"},{"quotestage":"Reviewed"},{"quotestage":"Accepted"},{"quotestage":"Rejected"}]
/// carrier : [{"carrier":"FedEx"},{"carrier":"UPS"},{"carrier":"USPS"},{"carrier":"DHL"},{"carrier":"BlueDart"}]
/// hdnTaxType : [{"hdnTaxType":"individual"},{"hdnTaxType":"group"}]
/// region_id : []
/// cf_2383 : [{"cf_2383":"Confirm"},{"cf_2383":"Reject"}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      List<Quotestage>? quotestage, 
      List<Carrier>? carrier, 
      List<HdnTaxType>? hdnTaxType, 
      List<dynamic>? regionId, 
      List<Cf2383>? cf2383,}){
    _quotestage = quotestage;
    _carrier = carrier;
    _hdnTaxType = hdnTaxType;
    _regionId = regionId;
    _cf2383 = cf2383;
}

  Data.fromJson(dynamic json) {
    if (json['quotestage'] != null) {
      _quotestage = [];
      json['quotestage'].forEach((v) {
        _quotestage?.add(Quotestage.fromJson(v));
      });
    }
    if (json['carrier'] != null) {
      _carrier = [];
      json['carrier'].forEach((v) {
        _carrier?.add(Carrier.fromJson(v));
      });
    }
    if (json['hdnTaxType'] != null) {
      _hdnTaxType = [];
      json['hdnTaxType'].forEach((v) {
        _hdnTaxType?.add(HdnTaxType.fromJson(v));
      });
    }
    if (json['region_id'] != null) {
      _regionId = [];
      json['region_id'].forEach((v) {
        // _regionId?.add(Dynamic.fromJson(v));
      });
    }
    if (json['cf_2383'] != null) {
      _cf2383 = [];
      json['cf_2383'].forEach((v) {
        _cf2383?.add(Cf2383.fromJson(v));
      });
    }
  }
  List<Quotestage>? _quotestage;
  List<Carrier>? _carrier;
  List<HdnTaxType>? _hdnTaxType;
  List<dynamic>? _regionId;
  List<Cf2383>? _cf2383;
Data copyWith({  List<Quotestage>? quotestage,
  List<Carrier>? carrier,
  List<HdnTaxType>? hdnTaxType,
  List<dynamic>? regionId,
  List<Cf2383>? cf2383,
}) => Data(  quotestage: quotestage ?? _quotestage,
  carrier: carrier ?? _carrier,
  hdnTaxType: hdnTaxType ?? _hdnTaxType,
  regionId: regionId ?? _regionId,
  cf2383: cf2383 ?? _cf2383,
);
  List<Quotestage>? get quotestage => _quotestage;
  List<Carrier>? get carrier => _carrier;
  List<HdnTaxType>? get hdnTaxType => _hdnTaxType;
  List<dynamic>? get regionId => _regionId;
  List<Cf2383>? get cf2383 => _cf2383;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_quotestage != null) {
      map['quotestage'] = _quotestage?.map((v) => v.toJson()).toList();
    }
    if (_carrier != null) {
      map['carrier'] = _carrier?.map((v) => v.toJson()).toList();
    }
    if (_hdnTaxType != null) {
      map['hdnTaxType'] = _hdnTaxType?.map((v) => v.toJson()).toList();
    }
    if (_regionId != null) {
      map['region_id'] = _regionId?.map((v) => v.toJson()).toList();
    }
    if (_cf2383 != null) {
      map['cf_2383'] = _cf2383?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// cf_2383 : "Confirm"

Cf2383 cf2383FromJson(String str) => Cf2383.fromJson(json.decode(str));
String cf2383ToJson(Cf2383 data) => json.encode(data.toJson());
class Cf2383 {
  Cf2383({
      String? cf2383,}){
    _cf2383 = cf2383;
}

  Cf2383.fromJson(dynamic json) {
    _cf2383 = json['cf_2383'];
  }
  String? _cf2383;
Cf2383 copyWith({  String? cf2383,
}) => Cf2383(  cf2383: cf2383 ?? _cf2383,
);
  String? get cf2383 => _cf2383;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cf_2383'] = _cf2383;
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

/// carrier : "FedEx"

Carrier carrierFromJson(String str) => Carrier.fromJson(json.decode(str));
String carrierToJson(Carrier data) => json.encode(data.toJson());
class Carrier {
  Carrier({
      String? carrier,}){
    _carrier = carrier;
}

  Carrier.fromJson(dynamic json) {
    _carrier = json['carrier'];
  }
  String? _carrier;
Carrier copyWith({  String? carrier,
}) => Carrier(  carrier: carrier ?? _carrier,
);
  String? get carrier => _carrier;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['carrier'] = _carrier;
    return map;
  }

}

/// quotestage : "Created"

Quotestage quotestageFromJson(String str) => Quotestage.fromJson(json.decode(str));
String quotestageToJson(Quotestage data) => json.encode(data.toJson());
class Quotestage {
  Quotestage({
      String? quotestage,}){
    _quotestage = quotestage;
}

  Quotestage.fromJson(dynamic json) {
    _quotestage = json['quotestage'];
  }
  String? _quotestage;
Quotestage copyWith({  String? quotestage,
}) => Quotestage(  quotestage: quotestage ?? _quotestage,
);
  String? get quotestage => _quotestage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['quotestage'] = _quotestage;
    return map;
  }

}