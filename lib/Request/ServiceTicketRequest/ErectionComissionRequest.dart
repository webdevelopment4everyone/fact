import 'dart:convert';

ErectionComissionRequest erectionComissionRequestFromJson(String str) =>
    ErectionComissionRequest.fromJson(json.decode(str));
String erectionComissionRequestToJson(ErectionComissionRequest data) =>
    json.encode(data.toJson());

class ErectionComissionRequest {
  ErectionComissionRequest({
    String? srEquipModel,
    String? equipmentId,
    String? manualEquSer,
    String? nearestRailway,
    String? pincode,
    String? city,
    String? preAddress,
    String? state,
    String? telePhone,
    String? district,
    String? oppName,
    dynamic phone,
    String? description,
    dynamic imagename,
    dynamic contactId,
    dynamic assignedUserId,
    String? ticketType,
  }) {
    _srEquipModel = srEquipModel;
    _equipmentId = equipmentId;
    _manualEquSer = manualEquSer;
    _nearestRailway = nearestRailway;
    _pincode = pincode;
    _city = city;
    _preAddress = preAddress;
    _state = state;
    _telePhone = telePhone;
    _district = district;
    _oppName = oppName;
    _phone = phone;
    _description = description;
    _imagename = imagename;
    _contactId = contactId;
    _assignedUserId = assignedUserId;
    _ticketType = ticketType;
  }

  set srEquipModel(String? value) {
    _srEquipModel = value;
  }

  ErectionComissionRequest.fromJson(dynamic json) {
    _srEquipModel = json['sr_equip_model'];
    _equipmentId = json['equipment_id'];
    _manualEquSer = json['equip_id_da'];
    _nearestRailway = json['nearest_railway'];
    _pincode = json['pincode'];
    _city = json['city'];
    _preAddress = json['pre_address'];
    _state = json['state'];
    _telePhone = json['tele_phone'];
    _district = json['district'];
    _oppName = json['opp_name'];
    _phone = json['phone'];
    _description = json['description'];
    _imagename = json['imagename'];
    _contactId = json['contact_id'];
    _assignedUserId = json['assigned_user_id'];
    _ticketType = json['ticket_type'];
  }
  String? _srEquipModel;
  String? _equipmentId;
  String? _manualEquSer;
  String? _nearestRailway;
  String? _pincode;
  String? _city;
  String? _preAddress;
  String? _state;
  String? _telePhone;
  String? _district;
  String? _oppName;
  dynamic _phone;
  String? _description;
  dynamic _imagename;
  dynamic _contactId;
  dynamic _assignedUserId;
  String? _ticketType;
  ErectionComissionRequest copyWith({
    String? srEquipModel,
    String? equipmentId,
    String? manualEquSer,
    String? nearestRailway,
    String? pincode,
    String? city,
    String? preAddress,
    String? state,
    String? telePhone,
    String? district,
    String? oppName,
    dynamic phone,
    String? description,
    dynamic imagename,
    dynamic contactId,
    dynamic assignedUserId,
    String? ticketType,
  }) =>
      ErectionComissionRequest(
        srEquipModel: srEquipModel ?? _srEquipModel,
        equipmentId: equipmentId ?? _equipmentId,
        manualEquSer: manualEquSer ?? _manualEquSer,
        nearestRailway: nearestRailway ?? _nearestRailway,
        pincode: pincode ?? _pincode,
        city: city ?? _city,
        preAddress: preAddress ?? _preAddress,
        state: state ?? _state,
        telePhone: telePhone ?? _telePhone,
        district: district ?? _district,
        oppName: oppName ?? _oppName,
        phone: phone ?? _phone,
        description: description ?? _description,
        imagename: imagename ?? _imagename,
        contactId: contactId ?? _contactId,
        assignedUserId: assignedUserId ?? _assignedUserId,
        ticketType: ticketType ?? _ticketType,
      );
  String? get srEquipModel => _srEquipModel;
  String? get equipmentId => _equipmentId;
  String? get manualEquSer => _manualEquSer;
  String? get nearestRailway => _nearestRailway;
  String? get pincode => _pincode;
  String? get city => _city;
  String? get preAddress => _preAddress;
  String? get state => _state;
  String? get telePhone => _telePhone;
  String? get district => _district;
  String? get oppName => _oppName;
  dynamic get phone => _phone;
  String? get description => _description;
  dynamic get imagename => _imagename;
  dynamic get contactId => _contactId;
  dynamic get assignedUserId => _assignedUserId;
  String? get ticketType => _ticketType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_equip_model'] = _srEquipModel;
    map['equipment_id'] = _equipmentId;
    map['equip_id_da'] = _manualEquSer;
    map['nearest_railway'] = _nearestRailway;
    map['pincode'] = _pincode;
    map['city'] = _city;
    map['pre_address'] = _preAddress;
    map['state'] = _state;
    map['tele_phone'] = _telePhone;
    map['district'] = _district;
    map['opp_name'] = _oppName;
    map['phone'] = _phone;
    map['description'] = _description;
    map['imagename'] = _imagename;
    map['contact_id'] = _contactId;
    map['assigned_user_id'] = _assignedUserId;
    map['ticket_type'] = _ticketType;
    return map;
  }

  set equipmentId(String? value) {
    _equipmentId = value;
  }

  set manualEquSer(String? value) {
    _manualEquSer = value;
  }

  set nearestRailway(String? value) {
    _nearestRailway = value;
  }

  set pincode(String? value) {
    _pincode = value;
  }

  set city(String? value) {
    _city = value;
  }

  set preAddress(String? value) {
    _preAddress = value;
  }

  set state(String? value) {
    _state = value;
  }

  set telePhone(String? value) {
    _telePhone = value;
  }

  set district(String? value) {
    _district = value;
  }

  set oppName(String? value) {
    _oppName = value;
  }

  set phone(dynamic? value) {
    _phone = value;
  }

  set description(String? value) {
    _description = value;
  }

  set imagename(dynamic? value) {
    _imagename = value;
  }

  set contactId(dynamic? value) {
    _contactId = value;
  }

  set assignedUserId(dynamic? value) {
    _assignedUserId = value;
  }

  set ticketType(String? value) {
    _ticketType = value;
  }
}
