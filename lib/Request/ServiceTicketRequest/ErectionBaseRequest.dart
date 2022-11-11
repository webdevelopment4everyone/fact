import 'dart:convert';

import 'package:fact/Request/ServiceTicketRequest/ErectionComissionRequest.dart';

ErectionBaseRequest erectionBaseRequestFromJson(String str) =>
    ErectionBaseRequest.fromJson(json.decode(str));
String erectionBaseRequestToJson(ErectionBaseRequest data) =>
    json.encode(data.toJson());

class ErectionBaseRequest {
  ErectionBaseRequest({
    ErectionComissionRequest? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) {
    _values = values;
    _module = module;
    _accessToken = accessToken;
    _useruniqueid = useruniqueid;
  }

  ErectionBaseRequest.fromJson(dynamic json) {
    _values = json['values'];
    _module = json['module'];
    _accessToken = json['access_token'];
    _useruniqueid = json['useruniqueid'];
  }
  ErectionComissionRequest? _values;
  String? _module;
  String? _accessToken;
  String? _useruniqueid;
  ErectionBaseRequest copyWith({
    ErectionComissionRequest? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) =>
      ErectionBaseRequest(
        values: values ?? _values,
        module: module ?? _module,
        accessToken: accessToken ?? _accessToken,
        useruniqueid: useruniqueid ?? _useruniqueid,
      );
  ErectionComissionRequest? get values => _values;
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

  set values(ErectionComissionRequest? value) {
    _values = value;
  }
}
