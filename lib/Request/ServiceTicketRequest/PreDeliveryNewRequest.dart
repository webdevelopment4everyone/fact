import 'dart:convert';

PreDeliveryNewRequest preDeliveryNewRequestFromJson(String str) =>
    PreDeliveryNewRequest.fromJson(json.decode(str));
String preDeliveryNewRequestToJson(PreDeliveryNewRequest data) =>
    json.encode(data.toJson());

class PreDeliveryNewRequest {
  PreDeliveryNewRequest({
    String? srEquipModel,
    String? manualEquSer,
    String? kilometerReading,
    String? hmr,
    String? equipStatus,
    String? systemAffected,
    String? nearestRailway,
    String? dateOfDelivery,
    String? pincode,
    String? city,
    String? preAddress,
    String? state,
    String? telePhone,
    String? district,
    String? oppName,
    String? phone,
    String? description,
    String? imagename,
    String? rejectionReason,
    String? contactId,
    String? assignedUserId,
    String? ticketType,
  }) {
    _srEquipModel = srEquipModel;
    _manualEquSer = manualEquSer;
    _kilometerReading = kilometerReading;
    _hmr = hmr;
    _equipStatus = equipStatus;
    _systemAffected = systemAffected;
    _nearestRailway = nearestRailway;
    _dateOfDelivery = dateOfDelivery;
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
    _rejectionReason = rejectionReason;
    _contactId = contactId;
    _assignedUserId = assignedUserId;
    _ticketType = ticketType;
  }

  set srEquipModel(String? value) {
    _srEquipModel = value;
  }

  PreDeliveryNewRequest.fromJson(dynamic json) {
    _srEquipModel = json['sr_equip_model'];
    _manualEquSer = json['equip_id_da'];
    _kilometerReading = json['kilometer_reading'];
    _hmr = json['hmr'];
    _equipStatus = json['equip_status'];
    _systemAffected = json['system_affected'];
    _nearestRailway = json['nearest_railway'];
    _dateOfDelivery = json['date_of_delivery'];
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
    _rejectionReason = json['rejection_reason'];
    _contactId = json['contact_id'];
    _assignedUserId = json['assigned_user_id'];
    _ticketType = json['ticket_type'];
  }
  String? _srEquipModel;
  String? _manualEquSer;
  String? _kilometerReading;
  String? _hmr;
  String? _equipStatus;
  String? _systemAffected;
  String? _nearestRailway;
  String? _dateOfDelivery;
  String? _pincode;
  String? _city;
  String? _preAddress;
  String? _state;
  String? _telePhone;
  String? _district;
  String? _oppName;
  String? _phone;
  String? _description;
  String? _imagename;
  String? _rejectionReason;
  String? _contactId;
  String? _assignedUserId;
  String? _ticketType;
  PreDeliveryNewRequest copyWith({
    String? srEquipModel,
    String? manualEquSer,
    String? kilometerReading,
    String? hmr,
    String? equipStatus,
    String? systemAffected,
    String? nearestRailway,
    String? dateOfDelivery,
    String? pincode,
    String? city,
    String? preAddress,
    String? state,
    String? telePhone,
    String? district,
    String? oppName,
    String? phone,
    String? description,
    String? imagename,
    String? rejectionReason,
    String? contactId,
    String? assignedUserId,
    String? ticketType,
  }) =>
      PreDeliveryNewRequest(
        srEquipModel: srEquipModel ?? _srEquipModel,
        manualEquSer: manualEquSer ?? _manualEquSer,
        kilometerReading: kilometerReading ?? _kilometerReading,
        hmr: hmr ?? _hmr,
        equipStatus: equipStatus ?? _equipStatus,
        systemAffected: systemAffected ?? _systemAffected,
        nearestRailway: nearestRailway ?? _nearestRailway,
        dateOfDelivery: dateOfDelivery ?? _dateOfDelivery,
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
        rejectionReason: rejectionReason ?? _rejectionReason,
        contactId: contactId ?? _contactId,
        assignedUserId: assignedUserId ?? _assignedUserId,
        ticketType: ticketType ?? _ticketType,
      );
  String? get srEquipModel => _srEquipModel;
  String? get manualEquSer => _manualEquSer;
  String? get kilometerReading => _kilometerReading;
  String? get hmr => _hmr;
  String? get equipStatus => _equipStatus;
  String? get systemAffected => _systemAffected;
  String? get nearestRailway => _nearestRailway;
  String? get dateOfDelivery => _dateOfDelivery;
  String? get pincode => _pincode;
  String? get city => _city;
  String? get preAddress => _preAddress;
  String? get state => _state;
  String? get telePhone => _telePhone;
  String? get district => _district;
  String? get oppName => _oppName;
  String? get phone => _phone;
  String? get description => _description;
  String? get imagename => _imagename;
  String? get rejectionReason => _rejectionReason;
  String? get contactId => _contactId;
  String? get assignedUserId => _assignedUserId;
  String? get ticketType => _ticketType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_equip_model'] = _srEquipModel;
    map['equip_id_da'] = _manualEquSer;
    map['kilometer_reading'] = _kilometerReading;
    map['hmr'] = _hmr;
    map['equip_status'] = _equipStatus;
    map['system_affected'] = _systemAffected;
    map['nearest_railway'] = _nearestRailway;
    map['date_of_delivery'] = _dateOfDelivery;
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
    map['rejection_reason'] = _rejectionReason;
    map['contact_id'] = _contactId;
    map['assigned_user_id'] = _assignedUserId;
    map['ticket_type'] = _ticketType;
    return map;
  }

  set manualEquSer(String? value) {
    _manualEquSer = value;
  }

  set kilometerReading(String? value) {
    _kilometerReading = value;
  }

  set hmr(String? value) {
    _hmr = value;
  }

  set equipStatus(String? value) {
    _equipStatus = value;
  }

  set systemAffected(String? value) {
    _systemAffected = value;
  }

  set nearestRailway(String? value) {
    _nearestRailway = value;
  }

  set dateOfDelivery(String? value) {
    _dateOfDelivery = value;
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

  set phone(String? value) {
    _phone = value;
  }

  set description(String? value) {
    _description = value;
  }

  set imagename(String? value) {
    _imagename = value;
  }

  set rejectionReason(String? value) {
    _rejectionReason = value;
  }

  set contactId(String? value) {
    _contactId = value;
  }

  set assignedUserId(String? value) {
    _assignedUserId = value;
  }

  set ticketType(String? value) {
    _ticketType = value;
  }
}
