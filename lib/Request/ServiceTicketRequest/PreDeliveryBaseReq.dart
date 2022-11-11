import 'dart:convert';

import 'package:fact/Request/ServiceTicketRequest/PreDeliveryNewRequest.dart';

PreDeliveryBaseReq preDeliveryBaseReqFromJson(String str) =>
    PreDeliveryBaseReq.fromJson(json.decode(str));
String preDeliveryBaseReqToJson(PreDeliveryBaseReq data) =>
    json.encode(data.toJson());

class PreDeliveryBaseReq {
  PreDeliveryBaseReq({
    PreDeliveryNewRequest? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) {
    _values = values;
    _module = module;
    _accessToken = accessToken;
    _useruniqueid = useruniqueid;
  }

  set values(PreDeliveryNewRequest? value) {
    _values = value;
  }

  PreDeliveryBaseReq.fromJson(dynamic json) {
    _values = json['values'];
    _module = json['module'];
    _accessToken = json['access_token'];
    _useruniqueid = json['useruniqueid'];
  }
  PreDeliveryNewRequest? _values;
  String? _module;
  String? _accessToken;
  String? _useruniqueid;
  PreDeliveryBaseReq copyWith({
    PreDeliveryNewRequest? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) =>
      PreDeliveryBaseReq(
        values: values ?? _values,
        module: module ?? _module,
        accessToken: accessToken ?? _accessToken,
        useruniqueid: useruniqueid ?? _useruniqueid,
      );
  PreDeliveryNewRequest? get values => _values;
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

  set module(String? value) {
    _module = value;
  }

  set accessToken(String? value) {
    _accessToken = value;
  }

  set useruniqueid(String? value) {
    _useruniqueid = value;
  }
}
