import 'dart:convert';

import 'GeneralRequest.dart';

GeneralBaseReq generalBaseReqFromJson(String str) =>
    GeneralBaseReq.fromJson(json.decode(str));
String generalBaseReqToJson(GeneralBaseReq data) => json.encode(data.toJson());

class GeneralBaseReq {
  GeneralBaseReq({
    GeneralRequest? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) {
    _values = values;
    _module = module;
    _accessToken = accessToken;
    _useruniqueid = useruniqueid;
  }

  GeneralBaseReq.fromJson(dynamic json) {
    _values = json['values'];
    _module = json['module'];
    _accessToken = json['access_token'];
    _useruniqueid = json['useruniqueid'];
  }
  GeneralRequest? _values;
  String? _module;
  String? _accessToken;
  String? _useruniqueid;
  GeneralBaseReq copyWith({
    GeneralRequest? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) =>
      GeneralBaseReq(
        values: values ?? _values,
        module: module ?? _module,
        accessToken: accessToken ?? _accessToken,
        useruniqueid: useruniqueid ?? _useruniqueid,
      );
  GeneralRequest? get values => _values;
  String? get module => _module;
  String? get accessToken => _accessToken;
  String? get useruniqueid => _useruniqueid;

  set values(GeneralRequest? value) {
    _values = value;
  }

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
