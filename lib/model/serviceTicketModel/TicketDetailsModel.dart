import 'dart:convert';

TicketDetailsModel ticketDetailsModelFromJson(String str) =>
    TicketDetailsModel.fromJson(json.decode(str));
String ticketDetailsModelToJson(TicketDetailsModel data) =>
    json.encode(data.toJson());

class TicketDetailsModel {
  TicketDetailsModel({
    int? statuscode,
    String? statusMessage,
    Data? data,
  }) {
    _statuscode = statuscode;
    _statusMessage = statusMessage;
    _data = data;
  }

  TicketDetailsModel.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _statusMessage = json['statusMessage'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? _statuscode;
  String? _statusMessage;
  Data? _data;
  TicketDetailsModel copyWith({
    int? statuscode,
    String? statusMessage,
    Data? data,
  }) =>
      TicketDetailsModel(
        statuscode: statuscode ?? _statuscode,
        statusMessage: statusMessage ?? _statusMessage,
        data: data ?? _data,
      );
  int? get statuscode => _statuscode;
  String? get statusMessage => _statusMessage;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statuscode'] = _statuscode;
    map['statusMessage'] = _statusMessage;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    Record? record,
  }) {
    _record = record;
  }

  Data.fromJson(dynamic json) {
    _record = json['record'] != null ? Record.fromJson(json['record']) : null;
  }
  Record? _record;
  Data copyWith({
    Record? record,
  }) =>
      Data(
        record: record ?? _record,
      );
  Record? get record => _record;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_record != null) {
      map['record'] = _record?.toJson();
    }
    return map;
  }
}

Record recordFromJson(String str) => Record.fromJson(json.decode(str));
String recordToJson(Record data) => json.encode(data.toJson());

class Record {
  Record({
    String? ticketType,
    String? srEquipModel,
    String? manualEquSer,
    String? equipmentId,
    String? equip_id_da,
    String? det_of_sub_asmbl,
    String? war_claim_dte,
    String? purchase_ref,
    String? hmr,
    String? dateOfDelivery,
    String? dateOfFailure,
    String? equipStatus,
    String? kilometerReading,
    String? chgFuncLoc,
    String? funcLocId,
    String? pincode,
    String? nearestRailway,
    String? telePhone,
    String? city,
    String? preAddress,
    String? state,
    String? district,
    String? oppName,
    String? phone,
    String? description,
    String? systemAffected,
    String? purpose,
    List<Imagename>? imagename,
    String? externalAppNum,
    String? tketAccStatus,
    String? parentId,
    String? assignedUserId,
    String? ticketstatus,
    String? system_pros_mod,
  }) {
    _ticketType = ticketType;
    _srEquipModel = srEquipModel;
    _manualEquSer = manualEquSer;
    _equipmentId = equipmentId;
    equip_id_da = equip_id_da;
    det_of_sub_asmbl = det_of_sub_asmbl;
    war_claim_dte = war_claim_dte;
    purchase_ref = purchase_ref;
    system_pros_mod = system_pros_mod;
    _hmr = hmr;
    _dateOfDelivery = dateOfDelivery;
    _dateOfFailure = dateOfFailure;
    _equipStatus = equipStatus;
    _kilometerReading = kilometerReading;
    _chgFuncLoc = chgFuncLoc;
    _funcLocId = funcLocId;
    _pincode = pincode;
    _nearestRailway = nearestRailway;
    _telePhone = telePhone;
    _city = city;
    _preAddress = preAddress;
    _state = state;
    _district = district;
    _oppName = oppName;
    _phone = phone;
    _description = description;
    _systemAffected = systemAffected;
    _purpose = purpose;
    _imagename = imagename;
    _externalAppNum = externalAppNum;
    _tketAccStatus = tketAccStatus;
    _parentId = parentId;
    _assignedUserId = assignedUserId;
    _ticketstatus = ticketstatus;
  }

  Record.fromJson(dynamic json) {
    _ticketType = json['ticket_type'];
    _srEquipModel = json['sr_equip_model'];
    _manualEquSer = json['manual_equ_ser'];
    _equipmentId = json['equipment_id'];
    equip_id_da = json['equip_id_da'];
    det_of_sub_asmbl = json['det_of_sub_asmbl'];
    war_claim_dte = json['war_claim_dte'];
    _hmr = json['hmr'];
    purchase_ref = json['purchase_ref'];
    _dateOfDelivery = json['date_of_delivery'];
    _dateOfFailure = json['date_of_failure'];
    _equipStatus = json['equip_status'];
    _kilometerReading = json['kilometer_reading'];
    _chgFuncLoc = json['chg_func_loc'];
    _funcLocId = json['func_loc_id'];
    _pincode = json['pincode'];
    _nearestRailway = json['nearest_railway'];
    _telePhone = json['tele_phone'];
    _city = json['city'];
    _preAddress = json['pre_address'];
    _state = json['state'];
    _district = json['district'];
    _oppName = json['opp_name'];
    _phone = json['phone'];
    _description = json['description'];
    _systemAffected = json['system_affected'];
    _purpose = json['purpose'];
    if (json['imagename'] != null) {
      _imagename = [];
      json['imagename'].forEach((v) {
        _imagename?.add(Imagename.fromJson(v));
      });
    }
    _externalAppNum = json['external_app_num'];
    _tketAccStatus = json['tket_acc_status'];
    _parentId = json['parent_id'];
    _assignedUserId = json['assigned_user_id'];
    _ticketstatus = json['ticketstatus'];
    system_pros_mod = json['system_pros_mod'];
  }
  String? _ticketType;
  String? _srEquipModel;
  String? _manualEquSer;
  String? _equipmentId;
  String? _hmr;
  String? _dateOfDelivery;
  String? _dateOfFailure;
  String? _equipStatus;
  String? _kilometerReading;
  String? _chgFuncLoc;
  String? _funcLocId;
  String? _pincode;
  String? equip_id_da;
  String? det_of_sub_asmbl;
  String? war_claim_dte;
  String? purchase_ref;
  String? system_pros_mod;
  String? _nearestRailway;
  String? _telePhone;
  String? _city;
  String? _preAddress;
  String? _state;
  String? _district;
  String? _oppName;
  String? _phone;
  String? _description;
  String? _systemAffected;
  String? _purpose;
  List<Imagename>? _imagename;
  String? _externalAppNum;
  String? _tketAccStatus;
  String? _parentId;
  String? _assignedUserId;
  String? _ticketstatus;
  Record copyWith({
    String? ticketType,
    String? srEquipModel,
    String? manualEquSer,
    String? equipmentId,
    String? hmr,
    String? dateOfDelivery,
    String? dateOfFailure,
    String? equipStatus,
    String? kilometerReading,
    String? chgFuncLoc,
    String? funcLocId,
    String? pincode,
    String? nearestRailway,
    String? telePhone,
    String? city,
    String? preAddress,
    String? state,
    String? district,
    String? equip_id_da,
    String? det_of_sub_asmbl,
    String? war_claim_dte,
    String? purchase_ref,
    String? system_pros_mod,
    String? oppName,
    String? phone,
    String? description,
    String? systemAffected,
    String? purpose,
    List<Imagename>? imagename,
    String? externalAppNum,
    String? tketAccStatus,
    String? parentId,
    String? assignedUserId,
    String? ticketstatus,
  }) =>
      Record(
        ticketType: ticketType ?? _ticketType,
        srEquipModel: srEquipModel ?? _srEquipModel,
        manualEquSer: manualEquSer ?? _manualEquSer,
        equipmentId: equipmentId ?? _equipmentId,
        hmr: hmr ?? _hmr,
        equip_id_da: equip_id_da ?? equip_id_da,
        det_of_sub_asmbl: det_of_sub_asmbl ?? det_of_sub_asmbl,
        war_claim_dte: war_claim_dte ?? war_claim_dte,
        purchase_ref: purchase_ref ?? purchase_ref,
        dateOfDelivery: dateOfDelivery ?? _dateOfDelivery,
        dateOfFailure: dateOfFailure ?? _dateOfFailure,
        equipStatus: equipStatus ?? _equipStatus,
        kilometerReading: kilometerReading ?? _kilometerReading,
        chgFuncLoc: chgFuncLoc ?? _chgFuncLoc,
        funcLocId: funcLocId ?? _funcLocId,
        pincode: pincode ?? _pincode,
        nearestRailway: nearestRailway ?? _nearestRailway,
        telePhone: telePhone ?? _telePhone,
        city: city ?? _city,
        preAddress: preAddress ?? _preAddress,
        state: state ?? _state,
        district: district ?? _district,
        oppName: oppName ?? _oppName,
        phone: phone ?? _phone,
        description: description ?? _description,
        systemAffected: systemAffected ?? _systemAffected,
        purpose: purpose ?? _purpose,
        imagename: imagename ?? _imagename,
        externalAppNum: externalAppNum ?? _externalAppNum,
        tketAccStatus: tketAccStatus ?? _tketAccStatus,
        parentId: parentId ?? _parentId,
        assignedUserId: assignedUserId ?? _assignedUserId,
        ticketstatus: ticketstatus ?? _ticketstatus,
        system_pros_mod: system_pros_mod ?? system_pros_mod,
      );
  String? get ticketType => _ticketType;
  String? get srEquipModel => _srEquipModel;
  String? get manualEquSer => _manualEquSer;
  String? get equipmentId => _equipmentId;
  String? get hmr => _hmr;
  String? get dateOfDelivery => _dateOfDelivery;
  String? get dateOfFailure => _dateOfFailure;
  String? get equipStatus => _equipStatus;
  String? get kilometerReading => _kilometerReading;
  String? get chgFuncLoc => _chgFuncLoc;
  String? get funcLocId => _funcLocId;
  String? get pincode => _pincode;
  String? get nearestRailway => _nearestRailway;
  String? get telePhone => _telePhone;
  String? get city => _city;
  String? get preAddress => _preAddress;
  String? get state => _state;
  String? get district => _district;
  String? get oppName => _oppName;
  String? get phone => _phone;
  String? get description => _description;
  String? get systemAffected => _systemAffected;
  String? get purpose => _purpose;
  List<Imagename>? get imagename => _imagename;
  String? get externalAppNum => _externalAppNum;
  String? get tketAccStatus => _tketAccStatus;
  String? get parentId => _parentId;
  String? get assignedUserId => _assignedUserId;
  String? get ticketstatus => _ticketstatus;
  String? get eqid => equip_id_da;
  String? get detsubassembyl => det_of_sub_asmbl;
  String? get selectdatewarranty => war_claim_dte;
  String? get purchased => purchase_ref;
  String? get systemproposed => system_pros_mod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ticket_type'] = _ticketType;
    map['sr_equip_model'] = _srEquipModel;
    map['manual_equ_ser'] = _manualEquSer;
    map['equipment_id'] = _equipmentId;
    map['hmr'] = _hmr;
    map['equip_id_da'] = equip_id_da;
    map['det_of_sub_asmbl'] = det_of_sub_asmbl;
    map['war_claim_dte'] = war_claim_dte;
    map['purchase_ref'] = purchase_ref;
    map['date_of_delivery'] = _dateOfDelivery;
    map['date_of_failure'] = _dateOfFailure;
    map['equip_status'] = _equipStatus;
    map['kilometer_reading'] = _kilometerReading;
    map['chg_func_loc'] = _chgFuncLoc;
    map['func_loc_id'] = _funcLocId;
    map['pincode'] = _pincode;
    map['nearest_railway'] = _nearestRailway;
    map['tele_phone'] = _telePhone;
    map['city'] = _city;
    map['pre_address'] = _preAddress;
    map['state'] = _state;
    map['district'] = _district;
    map['opp_name'] = _oppName;
    map['phone'] = _phone;
    map['description'] = _description;
    map['system_affected'] = _systemAffected;
    map['purpose'] = _purpose;
    if (_imagename != null) {
      map['imagename'] = _imagename?.map((v) => v.toJson()).toList();
    }
    map['external_app_num'] = _externalAppNum;
    map['tket_acc_status'] = _tketAccStatus;
    map['parent_id'] = _parentId;
    map['assigned_user_id'] = _assignedUserId;
    map['ticketstatus'] = _ticketstatus;
    map['system_pros_mod'] = system_pros_mod;
    return map;
  }
}

Imagename imagenameFromJson(String str) => Imagename.fromJson(json.decode(str));
String imagenameToJson(Imagename data) => json.encode(data.toJson());

class Imagename {
  Imagename({
    String? urlpath,
    String? loadimage,
  }) {
    _urlpath = urlpath;
    _loadimage = loadimage;
  }

  Imagename.fromJson(dynamic json) {
    _urlpath = json['urlpath'];
    _loadimage = json['loadimage'];
  }
  String? _urlpath;
  String? _loadimage;
  Imagename copyWith({
    String? urlpath,
    String? loadimage,
  }) =>
      Imagename(
        urlpath: urlpath ?? _urlpath,
        loadimage: loadimage ?? _loadimage,
      );
  String? get urlpath => _urlpath;
  String? get loadimage => _loadimage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['urlpath'] = _urlpath;
    map['loadimage'] = _loadimage;
    return map;
  }
}
