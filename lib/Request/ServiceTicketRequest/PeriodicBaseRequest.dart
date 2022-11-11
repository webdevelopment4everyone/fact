import 'dart:convert';

import 'package:fact/Request/ServiceTicketRequest/PeriodicMaintenanceRequest.dart';

PeriodicBaseRequest periodicBaseRequestFromJson(String str) =>
    PeriodicBaseRequest.fromJson(json.decode(str));
String periodicBaseRequestToJson(PeriodicBaseRequest data) =>
    json.encode(data.toJson());

class PeriodicBaseRequest {
  PeriodicBaseRequest({
    PeriodicMaintenanceRequest? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) {
    _values = values;
    _module = module;
    _accessToken = accessToken;
    _useruniqueid = useruniqueid;
  }

  set values(PeriodicMaintenanceRequest? value) {
    _values = value;
  }

  PeriodicBaseRequest.fromJson(dynamic json) {
    _values = json['values'];
    _module = json['module'];
    _accessToken = json['access_token'];
    _useruniqueid = json['useruniqueid'];
  }
  PeriodicMaintenanceRequest? _values;
  String? _module;
  String? _accessToken;
  String? _useruniqueid;
  PeriodicBaseRequest copyWith({
    PeriodicMaintenanceRequest? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) =>
      PeriodicBaseRequest(
        values: values ?? _values,
        module: module ?? _module,
        accessToken: accessToken ?? _accessToken,
        useruniqueid: useruniqueid ?? _useruniqueid,
      );
  PeriodicMaintenanceRequest? get values => _values;
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
