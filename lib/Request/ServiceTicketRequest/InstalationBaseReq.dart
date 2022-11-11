import 'dart:convert';

InstalationBaseReq instalationBaseReqFromJson(String str) =>
    InstalationBaseReq.fromJson(json.decode(str));
String instalationBaseReqToJson(InstalationBaseReq data) =>
    json.encode(data.toJson());

class InstalationBaseReq {
  InstalationBaseReq({
    String? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) {
    _values = values;
    _module = module;
    _accessToken = accessToken;
    _useruniqueid = useruniqueid;
  }

  InstalationBaseReq.fromJson(dynamic json) {
    _values = json['values'];
    _module = json['module'];
    _accessToken = json['access_token'];
    _useruniqueid = json['useruniqueid'];
  }
  String? _values;
  String? _module;
  String? _accessToken;
  String? _useruniqueid;
  InstalationBaseReq copyWith({
    String? values,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) =>
      InstalationBaseReq(
        values: values ?? _values,
        module: module ?? _module,
        accessToken: accessToken ?? _accessToken,
        useruniqueid: useruniqueid ?? _useruniqueid,
      );
  String? get values => _values;
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
}
