import 'dart:convert';

ReferenceRecordRequest referenceRecordRequestFromJson(String str) =>
    ReferenceRecordRequest.fromJson(json.decode(str));
String referenceRecordRequestToJson(ReferenceRecordRequest data) =>
    json.encode(data.toJson());

class ReferenceRecordRequest {
  ReferenceRecordRequest({
    String? searchValue,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) {
    _searchValue = searchValue;
    _module = module;
    _accessToken = accessToken;
    _useruniqueid = useruniqueid;
  }

  ReferenceRecordRequest.fromJson(dynamic json) {
    _searchValue = json['searchValue'];
    _module = json['module'];
    _accessToken = json['access_token'];
    _useruniqueid = json['useruniqueid'];
  }
  String? _searchValue;
  String? _module;
  String? _accessToken;
  String? _useruniqueid;
  ReferenceRecordRequest copyWith({
    String? searchValue,
    String? module,
    String? accessToken,
    String? useruniqueid,
  }) =>
      ReferenceRecordRequest(
        searchValue: searchValue ?? _searchValue,
        module: module ?? _module,
        accessToken: accessToken ?? _accessToken,
        useruniqueid: useruniqueid ?? _useruniqueid,
      );
  String? get searchValue => _searchValue;
  String? get module => _module;
  String? get accessToken => _accessToken;
  String? get useruniqueid => _useruniqueid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['searchValue'] = _searchValue;
    map['module'] = _module;
    map['access_token'] = _accessToken;
    map['useruniqueid'] = _useruniqueid;
    return map;
  }
}
