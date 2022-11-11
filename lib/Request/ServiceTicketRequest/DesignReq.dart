import 'dart:convert';

DesignReq designReqFromJson(String str) => DesignReq.fromJson(json.decode(str));
String designReqToJson(DesignReq data) => json.encode(data.toJson());

class DesignReq {
  DesignReq({
    String? srEquipModel,
    String? equipmentId,
    String? hmr,
    String? kilometerReading,
    String? imagename,
    String? assignedUserId,
    String? ticketType,
    String? system_pros_mod,
    String? description,
    String? telePhone,
  }) {
    _srEquipModel = srEquipModel;
    _equipmentId = equipmentId;
    _hmr = hmr;
    _description = description;
    _kilometerReading = kilometerReading;
    _imagename = imagename;
    _assignedUserId = assignedUserId;
    _ticketType = ticketType;
    _telePhone = telePhone;
    system_pros_mod = system_pros_mod;
  }

  set srEquipModel(String? value) {
    _srEquipModel = value;
  }

  DesignReq.fromJson(dynamic json) {
    _srEquipModel = json['sr_equip_model'];
    _equipmentId = json['equipment_id'];
    _hmr = json['hmr'];
    _description = json['description'];
    _kilometerReading = json['kilometer_reading'];
    _imagename = json['imagename'];
    _assignedUserId = json['assigned_user_id'];
    _ticketType = json['ticket_type'];
    _telePhone = json['tele_phone'];
    system_pros_mod = json['system_pros_mod'];
  }
  String? _srEquipModel;
  String? _equipmentId;
  String? _hmr;
  String? _kilometerReading;
  String? _imagename;
  String? _assignedUserId;
  String? _description;
  String? _ticketType;
  String? _telePhone;
  String? system_pros_mod;
  DesignReq copyWith({
    String? srEquipModel,
    String? equipmentId,
    String? hmr,
    String? kilometerReading,
    String? imagename,
    String? system_pros_mod,
    String? description,
    String? assignedUserId,
    String? ticketType,
    String? telePhone,
  }) =>
      DesignReq(
        srEquipModel: srEquipModel ?? _srEquipModel,
        equipmentId: equipmentId ?? _equipmentId,
        hmr: hmr ?? _hmr,
        kilometerReading: kilometerReading ?? _kilometerReading,
        description: description ?? _description,
        imagename: imagename ?? _imagename,
        assignedUserId: assignedUserId ?? _assignedUserId,
        ticketType: ticketType ?? _ticketType,
        telePhone: telePhone ?? _telePhone,
        system_pros_mod: system_pros_mod ?? system_pros_mod,
      );
  String? get srEquipModel => _srEquipModel;
  String? get equipmentId => _equipmentId;
  String? get hmr => _hmr;
  String? get kilometerReading => _kilometerReading;
  String? get imagename => _imagename;
  String? get assignedUserId => _assignedUserId;
  String? get ticketType => _ticketType;
  String? get telePhone => _telePhone;
  String? get description => _description;
  String? get systemproposed => system_pros_mod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_equip_model'] = _srEquipModel;
    map['equipment_id'] = _equipmentId;
    map['hmr'] = _hmr;
    map['kilometer_reading'] = _kilometerReading;
    map['description'] = _description;
    map['imagename'] = _imagename;
    map['assigned_user_id'] = _assignedUserId;
    map['ticket_type'] = _ticketType;
    map['tele_phone'] = _telePhone;
    map['system_pros_mod'] = system_pros_mod;
    return map;
  }

  set equipmentId(String? value) {
    _equipmentId = value;
  }

  set hmr(String? value) {
    _hmr = value;
  }

  set kilometerReading(String? value) {
    _kilometerReading = value;
  }

  set imagename(String? value) {
    _imagename = value;
  }

  set assignedUserId(String? value) {
    _assignedUserId = value;
  }

  set ticketType(String? value) {
    _ticketType = value;
  }

  set telePhone(String? value) {
    _telePhone = value;
  }

  set description(String? value) {
    _description = value;
  }

  set syspro(String? value) {
    system_pros_mod = value;
  }
}
