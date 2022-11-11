import 'dart:convert';

EquipmentRequest equipmentRequestFromJson(String str) =>
    EquipmentRequest.fromJson(json.decode(str));
String equipmentRequestToJson(EquipmentRequest data) =>
    json.encode(data.toJson());

class EquipmentRequest {
  EquipmentRequest({
    String? field,
    String? accessToken,
    String? useruniqueid,
  }) {
    _field = field;
    _accessToken = accessToken;
    _useruniqueid = useruniqueid;
  }

  EquipmentRequest.fromJson(dynamic json) {
    _field = json['field'];
    _accessToken = json['access_token'];
    _useruniqueid = json['useruniqueid'];
  }
  String? _field;
  String? _accessToken;

  set field(String? value) {
    _field = value;
  }

  String? _useruniqueid;
  EquipmentRequest copyWith({
    String? field,
    String? accessToken,
    String? useruniqueid,
  }) =>
      EquipmentRequest(
        field: field ?? _field,
        accessToken: accessToken ?? _accessToken,
        useruniqueid: useruniqueid ?? _useruniqueid,
      );
  String? get field => _field;
  String? get accessToken => _accessToken;
  String? get useruniqueid => _useruniqueid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['field'] = _field;
    map['access_token'] = _accessToken;
    map['useruniqueid'] = _useruniqueid;
    return map;
  }

  set accessToken(String? value) {
    _accessToken = value;
  }

  set useruniqueid(String? value) {
    _useruniqueid = value;
  }
}
