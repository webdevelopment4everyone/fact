import 'dart:convert';

import 'package:fact/Request/ServiceTicketRequest/SparePartReq.dart';

ServiceForSparePurchased serviceForSparePurchasedFromJson(String str) =>
    ServiceForSparePurchased.fromJson(json.decode(str));
String serviceForSparePurchasedToJson(ServiceForSparePurchased data) =>
    json.encode(data.toJson());

class ServiceForSparePurchased {
  ServiceForSparePurchased({
    SparePartReq? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) {
    _values = values;
    _module = module;
    _accessToken = accessToken;
    _useruniqueid = useruniqueid;
  }

  ServiceForSparePurchased.fromJson(dynamic json) {
    _values = json['values'];
    _module = json['module'];
    _accessToken = json['access_token'];
    _useruniqueid = json['useruniqueid'];
  }
  SparePartReq? _values;
  String? _module;
  String? _accessToken;
  String? _useruniqueid;
  ServiceForSparePurchased copyWith({
    SparePartReq? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) =>
      ServiceForSparePurchased(
        values: values ?? _values,
        module: module ?? _module,
        accessToken: accessToken ?? _accessToken,
        useruniqueid: useruniqueid ?? _useruniqueid,
      );
  SparePartReq? get values => _values;
  String? get module => _module;
  String? get accessToken => _accessToken;
  String? get useruniqueid => _useruniqueid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['values'] = _values;
    map['module'] = _module;
    map['access_token'] = _accessToken;
    map['useruniqueid'] = _useruniqueid;
    return map;
  }

  set useruniqueid(String? value) {
    _useruniqueid = value;
  }

  set accessToken(String? value) {
    _accessToken = value;
  }

  set module(String? value) {
    _module = value;
  }

  set values(SparePartReq? value) {
    _values = value;
  }
}
