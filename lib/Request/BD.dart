import 'dart:convert';

import 'package:fact/Request/BreakDownSR.dart';
import 'package:fact/Request/DataServiceReport.dart';
import 'package:fact/Request/SRD.dart';

Bd bdFromJson(String str) => Bd.fromJson(json.decode(str));
String bdToJson(Bd data) => json.encode(data.toJson());

class Bd {
  Bd({
    String? module,
    DataServiceReport? values,
    String? accessToken,
    String? useruniqueid,
  }) {
    _module = module;
    _values = values;
    _accessToken = accessToken;
    _useruniqueid = useruniqueid;
  }

  Bd.fromJson(dynamic json) {
    _module = json['module'];
    _values = json['values'];
    _accessToken = json['access_token'];
    _useruniqueid = json['useruniqueid'];
  }
  String? _module;
  DataServiceReport? _values;
  String? _accessToken;
  String? _useruniqueid;
  Bd copyWith({
    String? module,
    DataServiceReport? values,
    String? accessToken,
    String? useruniqueid,
  }) =>
      Bd(
        module: module ?? _module,
        values: values ?? _values,
        accessToken: accessToken ?? _accessToken,
        useruniqueid: useruniqueid ?? _useruniqueid,
      );

  set module(String? value) {
    _module = value;
  }

  String? get module => _module;
  DataServiceReport? get values => _values;
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

  set values(DataServiceReport? value) {
    _values = value;
  }

  set accessToken(String? value) {
    _accessToken = value;
  }

  set useruniqueid(String? value) {
    _useruniqueid = value;
  }
}
