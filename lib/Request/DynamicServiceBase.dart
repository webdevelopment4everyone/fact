import 'dart:convert';

import 'package:fact/Request/BreakDownSR.dart';
import 'package:fact/Request/DataServiceReport.dart';
import 'package:fact/Request/SRD.dart';

DynamicServiceBase bdFromJson(String str) =>
    DynamicServiceBase.fromJson(json.decode(str));
String bdToJson(DynamicServiceBase data) => json.encode(data.toJson());

class DynamicServiceBase {
  DynamicServiceBase({
    String? module,
    dynamic? values,
    String? accessToken,
    String? useruniqueid,
  }) {
    _module = module;
    _values = values;
    _accessToken = accessToken;
    _useruniqueid = useruniqueid;
  }

  DynamicServiceBase.fromJson(dynamic json) {
    _module = json['module'];
    _values = json['values'];
    _accessToken = json['access_token'];
    _useruniqueid = json['useruniqueid'];
  }
  String? _module;
  dynamic? _values;
  String? _accessToken;
  String? _useruniqueid;
  DynamicServiceBase copyWith({
    String? module,
    dynamic? values,
    String? accessToken,
    String? useruniqueid,
  }) =>
      DynamicServiceBase(
        module: module ?? _module,
        values: values ?? _values,
        accessToken: accessToken ?? _accessToken,
        useruniqueid: useruniqueid ?? _useruniqueid,
      );

  set module(String? value) {
    _module = value;
  }

  String? get module => _module;
  dynamic? get values => _values;
  String? get accessToken => _accessToken;
  String? get useruniqueid => _useruniqueid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['module'] = _module;
    map['values'] = _values;
    map['access_token'] = _accessToken;
    map['useruniqueid'] = _useruniqueid;
    return map;
  }

  set values(dynamic? value) {
    _values = value;
  }

  set accessToken(String? value) {
    _accessToken = value;
  }

  set useruniqueid(String? value) {
    _useruniqueid = value;
  }
}
