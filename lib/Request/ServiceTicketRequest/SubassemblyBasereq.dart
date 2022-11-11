import 'dart:convert';

import 'package:fact/Request/ServiceTicketRequest/SubAssembReq.dart';

SubassemblyBasereq subassemblyBasereqFromJson(String str) =>
    SubassemblyBasereq.fromJson(json.decode(str));
String subassemblyBasereqToJson(SubassemblyBasereq data) =>
    json.encode(data.toJson());

class SubassemblyBasereq {
  SubassemblyBasereq({
    SubAssembReq? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) {
    _values = values;
    _module = module;
    _accessToken = accessToken;
    _useruniqueid = useruniqueid;
  }

  set values(SubAssembReq? value) {
    _values = value;
  }

  SubassemblyBasereq.fromJson(dynamic json) {
    _values = json['values'];
    _module = json['module'];
    _accessToken = json['access_token'];
    _useruniqueid = json['useruniqueid'];
  }
  SubAssembReq? _values;
  String? _module;
  String? _accessToken;
  String? _useruniqueid;
  SubassemblyBasereq copyWith({
    SubAssembReq? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) =>
      SubassemblyBasereq(
        values: values ?? _values,
        module: module ?? _module,
        accessToken: accessToken ?? _accessToken,
        useruniqueid: useruniqueid ?? _useruniqueid,
      );
  SubAssembReq? get values => _values;
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
