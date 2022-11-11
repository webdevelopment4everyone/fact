import 'dart:convert';

SparePartReq sparePartReqFromJson(String str) =>
    SparePartReq.fromJson(json.decode(str));
String sparePartReqToJson(SparePartReq data) => json.encode(data.toJson());

class SparePartReq {
  SparePartReq({
    String? purpose,
    String? srEquipModel,
    String? manualEquSer,
    String? kilometerReading,
    String? hmr,
    String? equipStatus,
    String? detOfSubAsmbl,
    String? warClaimDte,
    String? purchaseRef,
    String? dateOfDelivery,
    String? dateOfFailure,
    String? telePhone,
    String? district,
    String? imagename,
    String? preAddress,
    String? pincode,
    String? city,
    String? state,
    String? oppName,
    String? phone,
    String? nearest_railway,
    String? description,
    String? assignedUserId,
    String? ticketType,
  }) {
    _purpose = purpose;
    _srEquipModel = srEquipModel;
    _manualEquSer = manualEquSer;
    _kilometerReading = kilometerReading;
    _hmr = hmr;
    _equipStatus = equipStatus;
    _detOfSubAsmbl = detOfSubAsmbl;
    _warClaimDte = warClaimDte;
    _purchaseRef = purchaseRef;
    nearest_railway = nearest_railway;
    _dateOfDelivery = dateOfDelivery;
    _dateOfFailure = dateOfFailure;
    _telePhone = telePhone;
    _district = district;
    _imagename = imagename;
    _preAddress = preAddress;
    _pincode = pincode;
    _city = city;
    _state = state;
    _oppName = oppName;
    _phone = phone;
    _description = description;
    _assignedUserId = assignedUserId;
    _ticketType = ticketType;
  }

  SparePartReq.fromJson(dynamic json) {
    _purpose = json['purpose'];
    _srEquipModel = json['sr_equip_model'];
    _manualEquSer = json['manual_equ_ser'];
    _kilometerReading = json['kilometer_reading'];
    _hmr = json['hmr'];
    _equipStatus = json['equip_status'];
    _detOfSubAsmbl = json['det_of_sub_asmbl'];
    _warClaimDte = json['war_claim_dte'];
    _purchaseRef = json['purchase_ref'];
    _dateOfDelivery = json['date_of_delivery'];
    _dateOfFailure = json['date_of_failure'];
    _telePhone = json['tele_phone'];
    _district = json['district'];
    _imagename = json['imagename'];
    _preAddress = json['pre_address'];
    nearest_railway = json['nearest_railway'];
    _pincode = json['pincode'];
    _city = json['city'];
    _state = json['state'];
    _oppName = json['opp_name'];
    _phone = json['phone'];
    _description = json['description'];
    _assignedUserId = json['assigned_user_id'];
    _ticketType = json['ticket_type'];
  }
  String? _purpose;
  String? _srEquipModel;
  String? _manualEquSer;
  String? _kilometerReading;
  String? _hmr;
  String? _equipStatus;
  String? _detOfSubAsmbl;
  String? _warClaimDte;
  String? _purchaseRef;
  String? _dateOfDelivery;
  String? _dateOfFailure;
  String? nearest_railway;
  String? _telePhone;
  String? _district;
  String? _imagename;
  String? _preAddress;
  String? _pincode;
  String? _city;
  String? _state;
  String? _oppName;
  String? _phone;
  String? _description;
  String? _assignedUserId;
  String? _ticketType;
  SparePartReq copyWith({
    String? purpose,
    String? srEquipModel,
    String? manualEquSer,
    String? kilometerReading,
    String? hmr,
    String? equipStatus,
    String? detOfSubAsmbl,
    String? warClaimDte,
    String? purchaseRef,
    String? dateOfDelivery,
    String? dateOfFailure,
    String? telePhone,
    String? district,
    String? imagename,
    String? nearest_railway,
    String? preAddress,
    String? pincode,
    String? city,
    String? state,
    String? oppName,
    String? phone,
    String? description,
    String? assignedUserId,
    String? ticketType,
  }) =>
      SparePartReq(
        purpose: purpose ?? _purpose,
        srEquipModel: srEquipModel ?? _srEquipModel,
        manualEquSer: manualEquSer ?? _manualEquSer,
        kilometerReading: kilometerReading ?? _kilometerReading,
        hmr: hmr ?? _hmr,
        equipStatus: equipStatus ?? _equipStatus,
        detOfSubAsmbl: detOfSubAsmbl ?? _detOfSubAsmbl,
        warClaimDte: warClaimDte ?? _warClaimDte,
        purchaseRef: purchaseRef ?? _purchaseRef,
        dateOfDelivery: dateOfDelivery ?? _dateOfDelivery,
        dateOfFailure: dateOfFailure ?? _dateOfFailure,
        telePhone: telePhone ?? _telePhone,
        district: district ?? _district,
        imagename: imagename ?? _imagename,
        preAddress: preAddress ?? _preAddress,
        pincode: pincode ?? _pincode,
        city: city ?? _city,
        state: state ?? _state,
        oppName: oppName ?? _oppName,
        nearest_railway: nearest_railway ?? nearest_railway,
        phone: phone ?? _phone,
        description: description ?? _description,
        assignedUserId: assignedUserId ?? _assignedUserId,
        ticketType: ticketType ?? _ticketType,
      );
  String? get purpose => _purpose;
  String? get srEquipModel => _srEquipModel;
  String? get manualEquSer => _manualEquSer;
  String? get kilometerReading => _kilometerReading;
  String? get hmr => _hmr;
  String? get equipStatus => _equipStatus;
  String? get detOfSubAsmbl => _detOfSubAsmbl;
  String? get warClaimDte => _warClaimDte;
  String? get purchaseRef => _purchaseRef;
  String? get dateOfDelivery => _dateOfDelivery;
  String? get dateOfFailure => _dateOfFailure;
  String? get telePhone => _telePhone;
  String? get district => _district;
  String? get imagename => _imagename;
  String? get preAddress => _preAddress;
  String? get pincode => _pincode;
  String? get city => _city;
  String? get state => _state;
  String? get oppName => _oppName;
  String? get phone => _phone;
  String? get description => _description;
  String? get assignedUserId => _assignedUserId;
  String? get ticketType => _ticketType;
  String? get railway => nearest_railway;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['purpose'] = _purpose;
    map['sr_equip_model'] = _srEquipModel;
    map['manual_equ_ser'] = _manualEquSer;
    map['kilometer_reading'] = _kilometerReading;
    map['hmr'] = _hmr;
    map['equip_status'] = _equipStatus;
    map['det_of_sub_asmbl'] = _detOfSubAsmbl;
    map['war_claim_dte'] = _warClaimDte;
    map['purchase_ref'] = _purchaseRef;
    map['date_of_delivery'] = _dateOfDelivery;
    map['date_of_failure'] = _dateOfFailure;
    map['tele_phone'] = _telePhone;
    map['district'] = _district;
    map['imagename'] = _imagename;
    map['pre_address'] = _preAddress;
    map['pincode'] = _pincode;
    map['city'] = _city;
    map['state'] = _state;
    map['opp_name'] = _oppName;
    map['phone'] = _phone;
    map['nearest_railway'] = nearest_railway;
    map['description'] = _description;
    map['assigned_user_id'] = _assignedUserId;
    map['ticket_type'] = _ticketType;
    return map;
  }

  set ticketType(String? value) {
    _ticketType = value;
  }

  set assignedUserId(String? value) {
    _assignedUserId = value;
  }

  set description(String? value) {
    _description = value;
  }

  set phone(String? value) {
    _phone = value;
  }

  set oppName(String? value) {
    _oppName = value;
  }

  set state(String? value) {
    _state = value;
  }

  set city(String? value) {
    _city = value;
  }

  set pincode(String? value) {
    _pincode = value;
  }

  set preAddress(String? value) {
    _preAddress = value;
  }

  set imagename(String? value) {
    _imagename = value;
  }

  set district(String? value) {
    _district = value;
  }

  set telePhone(String? value) {
    _telePhone = value;
  }

  set dateOfFailure(String? value) {
    _dateOfFailure = value;
  }

  set dateOfDelivery(String? value) {
    _dateOfDelivery = value;
  }

  set purchaseRef(String? value) {
    _purchaseRef = value;
  }

  set warClaimDte(String? value) {
    _warClaimDte = value;
  }

  set detOfSubAsmbl(String? value) {
    _detOfSubAsmbl = value;
  }

  set equipStatus(String? value) {
    _equipStatus = value;
  }

  set hmr(String? value) {
    _hmr = value;
  }

  set kilometerReading(String? value) {
    _kilometerReading = value;
  }

  set manualEquSer(String? value) {
    _manualEquSer = value;
  }

  set srEquipModel(String? value) {
    _srEquipModel = value;
  }

  set purpose(String? value) {
    _purpose = value;
  }

  set railway(String? value) {
    nearest_railway = value;
  }
}
