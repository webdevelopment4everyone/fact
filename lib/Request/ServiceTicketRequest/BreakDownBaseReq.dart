import 'dart:convert';

import 'package:fact/Request/ServiceTicketRequest/BreakDownRequest.dart';

BreakDownBaseReq breakDownBaseReqFromJson(String str) =>
    BreakDownBaseReq.fromJson(json.decode(str));
String breakDownBaseReqToJson(BreakDownBaseReq data) =>
    json.encode(data.toJson());

class BreakDownBaseReq {
  BreakDownBaseReq({
    BreakDownRequest? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) {
    _values = values;
    _module = module;
    _accessToken = accessToken;
    _useruniqueid = useruniqueid;
  }

  BreakDownBaseReq.fromJson(dynamic json) {
    _values = json['values'];
    _module = json['module'];
    _accessToken = json['access_token'];
    _useruniqueid = json['useruniqueid'];
  }
  BreakDownRequest? _values;
  String? _module;
  String? _accessToken;
  String? _useruniqueid;
  BreakDownBaseReq copyWith({
    BreakDownRequest? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) =>
      BreakDownBaseReq(
        values: values ?? _values,
        module: module ?? _module,
        accessToken: accessToken ?? _accessToken,
        useruniqueid: useruniqueid ?? _useruniqueid,
      );

  set values(BreakDownRequest? value) {
    _values = value;
  }

  BreakDownRequest? get values => _values;
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
