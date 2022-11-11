import 'dart:convert';

//{
//     "statuscode": 1,
//     "data": {
//         "pincodes": [
//             {
//                 "pincodesid": 130601,
//                 "pincode": 562117,
//                 "tags": "",
//                 "pincode_district": "RAMANAGARA",
//                 "pincode_state": "KARNATAKA",
//                 "pincode_city": "Alahalli B.O",
//                 "pincode_regional_office": "BENGALURU"
//             },

PincodeFetch pincodeFetchFromJson(String str) =>
    PincodeFetch.fromJson(json.decode(str));
String pincodeFetchToJson(PincodeFetch data) => json.encode(data.toJson());

class PincodeFetch {
  PincodeFetch({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  PincodeFetch.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  PincodeFetch copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      PincodeFetch(
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
    List<Pincodes>? pincodes,
  }) {
    _pincodes = pincodes;
  }

  Data.fromJson(dynamic json) {
    if (json['pincodes'] != null) {
      _pincodes = [];
      json['pincodes'].forEach((v) {
        _pincodes?.add(Pincodes.fromJson(v));
      });
    }
  }
  List<Pincodes>? _pincodes;
  Data copyWith({
    List<Pincodes>? pincodes,
  }) =>
      Data(
        pincodes: pincodes ?? _pincodes,
      );
  List<Pincodes>? get pincodes => _pincodes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_pincodes != null) {
      map['pincodes'] = _pincodes?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Pincodes pincodesFromJson(String str) => Pincodes.fromJson(json.decode(str));
String pincodesToJson(Pincodes data) => json.encode(data.toJson());

class Pincodes {
  Pincodes({
    int? pincodesid,
    int? pincode,
    String? tags,
    String? pincodeDistrict,
    String? pincodeState,
    String? pincodeCity,
    String? pincodeRegionalOffice,
  }) {
    _pincodesid = pincodesid;
    _pincode = pincode;
    _tags = tags;
    _pincodeDistrict = pincodeDistrict;
    _pincodeState = pincodeState;
    _pincodeCity = pincodeCity;
    _pincodeRegionalOffice = pincodeRegionalOffice;
  }

  Pincodes.fromJson(dynamic json) {
    _pincodesid = json['pincodesid'];
    _pincode = json['pincode'];
    _tags = json['tags'];
    _pincodeDistrict = json['pincode_district'];
    _pincodeState = json['pincode_state'];
    _pincodeCity = json['pincode_city'];
    _pincodeRegionalOffice = json['pincode_regional_office'];
  }
  int? _pincodesid;
  int? _pincode;
  String? _tags;
  String? _pincodeDistrict;
  String? _pincodeState;
  String? _pincodeCity;
  String? _pincodeRegionalOffice;
  Pincodes copyWith({
    int? pincodesid,
    int? pincode,
    String? tags,
    String? pincodeDistrict,
    String? pincodeState,
    String? pincodeCity,
    String? pincodeRegionalOffice,
  }) =>
      Pincodes(
        pincodesid: pincodesid ?? _pincodesid,
        pincode: pincode ?? _pincode,
        tags: tags ?? _tags,
        pincodeDistrict: pincodeDistrict ?? _pincodeDistrict,
        pincodeState: pincodeState ?? _pincodeState,
        pincodeCity: pincodeCity ?? _pincodeCity,
        pincodeRegionalOffice: pincodeRegionalOffice ?? _pincodeRegionalOffice,
      );
  int? get pincodesid => _pincodesid;
  int? get pincode => _pincode;
  String? get tags => _tags;
  String? get pincodeDistrict => _pincodeDistrict;
  String? get pincodeState => _pincodeState;
  String? get pincodeCity => _pincodeCity;
  String? get pincodeRegionalOffice => _pincodeRegionalOffice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pincodesid'] = _pincodesid;
    map['pincode'] = _pincode;
    map['tags'] = _tags;
    map['pincode_district'] = _pincodeDistrict;
    map['pincode_state'] = _pincodeState;
    map['pincode_city'] = _pincodeCity;
    map['pincode_regional_office'] = _pincodeRegionalOffice;
    return map;
  }
}
