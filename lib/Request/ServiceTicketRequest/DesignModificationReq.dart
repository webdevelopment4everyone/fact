import 'dart:convert';

import 'package:fact/Request/ServiceTicketRequest/DesignReq.dart';

DesignModificationReq designModificationReqFromJson(String str) =>
    DesignModificationReq.fromJson(json.decode(str));
String designModificationReqToJson(DesignModificationReq data) =>
    json.encode(data.toJson());

class DesignModificationReq {
  DesignModificationReq({
    DesignReq? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) {
    _values = values;
    _module = module;
    _accessToken = accessToken;
    _useruniqueid = useruniqueid;
  }

  DesignModificationReq.fromJson(dynamic json) {
    _values = json['values'];
    _module = json['module'];
    _accessToken = json['access_token'];
    _useruniqueid = json['useruniqueid'];
  }
  DesignReq? _values;
  String? _module;
  String? _accessToken;
  String? _useruniqueid;
  DesignModificationReq copyWith({
    DesignReq? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) =>
      DesignModificationReq(
        values: values ?? _values,
        module: module ?? _module,
        accessToken: accessToken ?? _accessToken,
        useruniqueid: useruniqueid ?? _useruniqueid,
      );
  DesignReq? get values => _values;
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

  set values(DesignReq? value) {
    _values = value;
  }
}
