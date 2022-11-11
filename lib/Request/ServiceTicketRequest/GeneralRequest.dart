import 'dart:convert';

GeneralRequest generalRequestFromJson(String str) =>
    GeneralRequest.fromJson(json.decode(str));
String generalRequestToJson(GeneralRequest data) => json.encode(data.toJson());

class GeneralRequest {
  GeneralRequest({
    String? purpose,
    String? srEquipModel,
    String? manualEquSer,
    String? kilometerReading,
    String? hmr,
    String? equipStatus,
    String? equipmentIdDisplay,
    String? imagename,
    String? preAddress,
    String? srDepSystem,
    String? equipmentId,
    String? pincode,
    String? city,
    String? state,
    String? oppName,
    String? phone,
    String? telePhone,
    String? district,
    String? funcLocId,
    String? description,
    String? nearestRailway,
    String? assignedUserId,
    String? ticketType,
  }) {
    _purpose = purpose;
    _srEquipModel = srEquipModel;
    _manualEquSer = manualEquSer;
    _kilometerReading = kilometerReading;
    _hmr = hmr;
    _funcLocId = funcLocId;
    _equipStatus = equipStatus;
    _equipmentIdDisplay = equipmentIdDisplay;
    _imagename = imagename;
    _preAddress = preAddress;
    _srDepSystem = srDepSystem;
    _equipmentId = equipmentId;
    _pincode = pincode;
    _city = city;
    _state = state;
    _oppName = oppName;
    _phone = phone;
    _telePhone = telePhone;
    _district = district;
    _description = description;
    _nearestRailway = nearestRailway;
    _assignedUserId = assignedUserId;
    _ticketType = ticketType;
  }

  GeneralRequest.fromJson(dynamic json) {
    _purpose = json['purpose'];
    _srEquipModel = json['sr_equip_model'];
    _manualEquSer = json['manual_equ_ser'];
    _kilometerReading = json['kilometer_reading'];
    _hmr = json['hmr'];
    _equipStatus = json['equip_status'];
    _equipmentIdDisplay = json['equipment_id_display'];
    _imagename = json['imagename'];
    _funcLocId = json['func_loc_id'];
    _preAddress = json['pre_address'];
    _srDepSystem = json['sr_dep_system'];
    _equipmentId = json['equipment_id'];
    _pincode = json['pincode'];
    _city = json['city'];
    _state = json['state'];
    _oppName = json['opp_name'];
    _phone = json['phone'];
    _telePhone = json['tele_phone'];
    _district = json['district'];
    _description = json['description'];
    _nearestRailway = json['nearest_railway'];
    _assignedUserId = json['assigned_user_id'];
    _ticketType = json['ticket_type'];
  }
  String? _purpose;
  String? _srEquipModel;
  String? _manualEquSer;
  String? _kilometerReading;
  String? _hmr;
  String? _equipStatus;
  String? _equipmentIdDisplay;
  String? _imagename;
  String? _funcLocId;
  String? _preAddress;
  String? _srDepSystem;
  String? _equipmentId;
  String? _pincode;
  String? _city;
  String? _state;
  String? _oppName;
  String? _phone;
  String? _telePhone;
  String? _district;
  String? _description;
  String? _nearestRailway;
  String? _assignedUserId;
  String? _ticketType;
  GeneralRequest copyWith({
    String? purpose,
    String? srEquipModel,
    String? manualEquSer,
    String? kilometerReading,
    String? hmr,
    String? equipStatus,
    String? equipmentIdDisplay,
    String? imagename,
    String? preAddress,
    String? srDepSystem,
    String? equipmentId,
    String? funcLocId,
    String? pincode,
    String? city,
    String? state,
    String? oppName,
    String? phone,
    String? telePhone,
    String? district,
    String? description,
    String? nearestRailway,
    String? assignedUserId,
    String? ticketType,
  }) =>
      GeneralRequest(
        purpose: purpose ?? _purpose,
        srEquipModel: srEquipModel ?? _srEquipModel,
        manualEquSer: manualEquSer ?? _manualEquSer,
        kilometerReading: kilometerReading ?? _kilometerReading,
        hmr: hmr ?? _hmr,
        funcLocId: funcLocId ?? _funcLocId,
        equipStatus: equipStatus ?? _equipStatus,
        equipmentIdDisplay: equipmentIdDisplay ?? _equipmentIdDisplay,
        imagename: imagename ?? _imagename,
        preAddress: preAddress ?? _preAddress,
        srDepSystem: srDepSystem ?? _srDepSystem,
        equipmentId: equipmentId ?? _equipmentId,
        pincode: pincode ?? _pincode,
        city: city ?? _city,
        state: state ?? _state,
        oppName: oppName ?? _oppName,
        phone: phone ?? _phone,
        telePhone: telePhone ?? _telePhone,
        district: district ?? _district,
        description: description ?? _description,
        nearestRailway: nearestRailway ?? _nearestRailway,
        assignedUserId: assignedUserId ?? _assignedUserId,
        ticketType: ticketType ?? _ticketType,
      );
  String? get purpose => _purpose;
  String? get srEquipModel => _srEquipModel;
  String? get manualEquSer => _manualEquSer;
  String? get kilometerReading => _kilometerReading;
  String? get hmr => _hmr;
  String? get equipStatus => _equipStatus;
  String? get equipmentIdDisplay => _equipmentIdDisplay;
  String? get imagename => _imagename;
  String? get preAddress => _preAddress;
  String? get srDepSystem => _srDepSystem;
  String? get equipmentId => _equipmentId;
  String? get pincode => _pincode;
  String? get city => _city;
  String? get state => _state;
  String? get oppName => _oppName;
  String? get phone => _phone;
  String? get telePhone => _telePhone;
  String? get district => _district;
  String? get description => _description;
  String? get nearestRailway => _nearestRailway;
  String? get assignedUserId => _assignedUserId;

  set funcLocId(String? value) {
    _funcLocId = value;
  }

  String? get funcLocId => _funcLocId;

  set purpose(String? value) {
    _purpose = value;
  }

  String? get ticketType => _ticketType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['purpose'] = _purpose;
    map['sr_equip_model'] = _srEquipModel;
    map['manual_equ_ser'] = _manualEquSer;
    map['kilometer_reading'] = _kilometerReading;
    map['hmr'] = _hmr;
    map['equip_status'] = _equipStatus;
    map['equipment_id_display'] = _equipmentIdDisplay;
    map['imagename'] = _imagename;
    map['pre_address'] = _preAddress;
    map['func_loc_id'] = _funcLocId;
    map['sr_dep_system'] = _srDepSystem;
    map['equipment_id'] = _equipmentId;
    map['pincode'] = _pincode;
    map['city'] = _city;
    map['state'] = _state;
    map['opp_name'] = _oppName;
    map['phone'] = _phone;
    map['tele_phone'] = _telePhone;
    map['district'] = _district;
    map['description'] = _description;
    map['nearest_railway'] = _nearestRailway;
    map['assigned_user_id'] = _assignedUserId;
    map['ticket_type'] = _ticketType;
    return map;
  }

  set srEquipModel(String? value) {
    _srEquipModel = value;
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

  set equipmentIdDisplay(String? value) {
    _equipmentIdDisplay = value;
  }

  set imagename(String? value) {
    _imagename = value;
  }

  set preAddress(String? value) {
    _preAddress = value;
  }

  set srDepSystem(String? value) {
    _srDepSystem = value;
  }

  set equipmentId(String? value) {
    _equipmentId = value;
  }

  set pincode(String? value) {
    _pincode = value;
  }

  set city(String? value) {
    _city = value;
  }

  set state(String? value) {
    _state = value;
  }

  set oppName(String? value) {
    _oppName = value;
  }

  set phone(String? value) {
    _phone = value;
  }

  set telePhone(String? value) {
    _telePhone = value;
  }

  set district(String? value) {
    _district = value;
  }

  set description(String? value) {
    _description = value;
  }

  set nearestRailway(String? value) {
    _nearestRailway = value;
  }

  set assignedUserId(String? value) {
    _assignedUserId = value;
  }

  set ticketType(String? value) {
    _ticketType = value;
  }
}
