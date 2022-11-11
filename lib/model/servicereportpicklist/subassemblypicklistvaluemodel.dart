import 'dart:convert';

/// statuscode : 1
/// data : {"ticketpriorities":[{"ticketpriorities":"Low"},{"ticketpriorities":"Normal"},{"ticketpriorities":"High"},{"ticketpriorities":"Urgent"}],"ticketstatus":[{"ticketstatus":"Open"},{"ticketstatus":"Engineer Assigned"},{"ticketstatus":"In Progress"},{"ticketstatus":"Closed"}],"ticket_type":[{"ticket_type":"PRE-DELIVERY"},{"ticket_type":"ERECTION AND COMMISSIONING"},{"ticket_type":"PERIODICAL MAINTENANCE"},{"ticket_type":"PREVENTIVE MAINTENANCE"},{"ticket_type":"BREAKDOWN"},{"ticket_type":"GENERAL INSPECTION"},{"ticket_type":"INSTALLATION OF SUB ASSEMBLY FITMENT"},{"ticket_type":"SERVICE FOR SPARES PURCHASED"},{"ticket_type":"DESIGN MODIFICATION"}],"purpose":[{"purpose":"REHABILITATION"},{"purpose":"OVERHAUL"},{"purpose":"UPGRADTION"},{"purpose":"PARTS REQUIREMNT"},{"purpose":"EQUIPMENT HEALTH CHECK UP"},{"purpose":"WARRANTY CLAIM FOR SUB ASSEMBLY / OTHER SPARE PARTS"},{"purpose":"INSPECTION OF REJECTED SPARES"}],"system_affected":[{"system_affected":"Responsible Agency_._BEML - Bangalore"}],"equip_status":[{"equip_status":"operational"},{"equip_status":"in limited operation"},{"equip_status":"out of order"}],"sub_assembly":[{"sub_assembly":"Engine"},{"sub_assembly":"Transmission"},{"sub_assembly":"Final Drive"},{"sub_assembly":"Hydraulic Pump"},{"sub_assembly":"Motor"}],"war_claim_dte":[{"war_claim_dte":"DATE OF SUPPLY"},{"war_claim_dte":"DATE OF FITMENT"},{"war_claim_dte":"DATE OF SUPPLY"},{"war_claim_dte":"DATE OF FITMENT"}],"sr_dep_system":[{"sr_dep_system":"test value"}],"tket_acc_status":[{"tket_acc_status":"Pending"},{"tket_acc_status":"Accepted"},{"tket_acc_status":"Rejected"}],"sr_equip_model":[{"sr_equip_model":"BG8251"},{"sr_equip_model":"BH100"},{"sr_equip_model":"BWS70"},{"sr_equip_model":"BG825"}]}
/// statusMessage : "Successfully Fetched Data"

Subassemblypicklistvaluemodel subassemblypicklistvaluemodelFromJson(
        String str) =>
    Subassemblypicklistvaluemodel.fromJson(json.decode(str));
String subassemblypicklistvaluemodelToJson(
        Subassemblypicklistvaluemodel data) =>
    json.encode(data.toJson());

class Subassemblypicklistvaluemodel {
  Subassemblypicklistvaluemodel({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  Subassemblypicklistvaluemodel.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  Subassemblypicklistvaluemodel copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      Subassemblypicklistvaluemodel(
        statuscode: statuscode ?? _statuscode,
        data: data ?? _data,
        statusMessage: statusMessage ?? _statusMessage,
      );
  int? get statuscode => _statuscode;
  Data? get data => _data;
  String? get statusMessage => _statusMessage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statuscode'] = _statuscode;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['statusMessage'] = _statusMessage;
    return map;
  }
}

/// ticketpriorities : [{"ticketpriorities":"Low"},{"ticketpriorities":"Normal"},{"ticketpriorities":"High"},{"ticketpriorities":"Urgent"}]
/// ticketstatus : [{"ticketstatus":"Open"},{"ticketstatus":"Engineer Assigned"},{"ticketstatus":"In Progress"},{"ticketstatus":"Closed"}]
/// ticket_type : [{"ticket_type":"PRE-DELIVERY"},{"ticket_type":"ERECTION AND COMMISSIONING"},{"ticket_type":"PERIODICAL MAINTENANCE"},{"ticket_type":"PREVENTIVE MAINTENANCE"},{"ticket_type":"BREAKDOWN"},{"ticket_type":"GENERAL INSPECTION"},{"ticket_type":"INSTALLATION OF SUB ASSEMBLY FITMENT"},{"ticket_type":"SERVICE FOR SPARES PURCHASED"},{"ticket_type":"DESIGN MODIFICATION"}]
/// purpose : [{"purpose":"REHABILITATION"},{"purpose":"OVERHAUL"},{"purpose":"UPGRADTION"},{"purpose":"PARTS REQUIREMNT"},{"purpose":"EQUIPMENT HEALTH CHECK UP"},{"purpose":"WARRANTY CLAIM FOR SUB ASSEMBLY / OTHER SPARE PARTS"},{"purpose":"INSPECTION OF REJECTED SPARES"}]
/// system_affected : [{"system_affected":"Responsible Agency_._BEML - Bangalore"}]
/// equip_status : [{"equip_status":"operational"},{"equip_status":"in limited operation"},{"equip_status":"out of order"}]
/// sub_assembly : [{"sub_assembly":"Engine"},{"sub_assembly":"Transmission"},{"sub_assembly":"Final Drive"},{"sub_assembly":"Hydraulic Pump"},{"sub_assembly":"Motor"}]
/// war_claim_dte : [{"war_claim_dte":"DATE OF SUPPLY"},{"war_claim_dte":"DATE OF FITMENT"},{"war_claim_dte":"DATE OF SUPPLY"},{"war_claim_dte":"DATE OF FITMENT"}]
/// sr_dep_system : [{"sr_dep_system":"test value"}]
/// tket_acc_status : [{"tket_acc_status":"Pending"},{"tket_acc_status":"Accepted"},{"tket_acc_status":"Rejected"}]
/// sr_equip_model : [{"sr_equip_model":"BG8251"},{"sr_equip_model":"BH100"},{"sr_equip_model":"BWS70"},{"sr_equip_model":"BG825"}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<Ticketpriorities>? ticketpriorities,
    List<Ticketstatus>? ticketstatus,
    List<TicketType>? ticketType,
    List<Purpose>? purpose,
    List<SystemAffected>? systemAffected,
    List<EquipStatus>? equipStatus,
    List<SubAssembly>? subAssembly,
    List<WarClaimDte>? warClaimDte,
    List<SrDepSystem>? srDepSystem,
    List<TketAccStatus>? tketAccStatus,
    List<SrEquipModel>? srEquipModel,
  }) {
    _ticketpriorities = ticketpriorities;
    _ticketstatus = ticketstatus;
    _ticketType = ticketType;
    _purpose = purpose;
    _systemAffected = systemAffected;
    _equipStatus = equipStatus;
    _subAssembly = subAssembly;
    _warClaimDte = warClaimDte;
    _srDepSystem = srDepSystem;
    _tketAccStatus = tketAccStatus;
    _srEquipModel = srEquipModel;
  }

  Data.fromJson(dynamic json) {
    if (json['ticketpriorities'] != null) {
      _ticketpriorities = [];
      json['ticketpriorities'].forEach((v) {
        _ticketpriorities?.add(Ticketpriorities.fromJson(v));
      });
    }
    if (json['ticketstatus'] != null) {
      _ticketstatus = [];
      json['ticketstatus'].forEach((v) {
        _ticketstatus?.add(Ticketstatus.fromJson(v));
      });
    }
    if (json['ticket_type'] != null) {
      _ticketType = [];
      json['ticket_type'].forEach((v) {
        _ticketType?.add(TicketType.fromJson(v));
      });
    }
    if (json['purpose'] != null) {
      _purpose = [];
      json['purpose'].forEach((v) {
        _purpose?.add(Purpose.fromJson(v));
      });
    }
    if (json['system_affected'] != null) {
      _systemAffected = [];
      json['system_affected'].forEach((v) {
        _systemAffected?.add(SystemAffected.fromJson(v));
      });
    }
    if (json['equip_status'] != null) {
      _equipStatus = [];
      json['equip_status'].forEach((v) {
        _equipStatus?.add(EquipStatus.fromJson(v));
      });
    }
    if (json['sub_assembly'] != null) {
      _subAssembly = [];
      json['sub_assembly'].forEach((v) {
        _subAssembly?.add(SubAssembly.fromJson(v));
      });
    }
    if (json['war_claim_dte'] != null) {
      _warClaimDte = [];
      json['war_claim_dte'].forEach((v) {
        _warClaimDte?.add(WarClaimDte.fromJson(v));
      });
    }
    if (json['sr_dep_system'] != null) {
      _srDepSystem = [];
      json['sr_dep_system'].forEach((v) {
        _srDepSystem?.add(SrDepSystem.fromJson(v));
      });
    }
    if (json['tket_acc_status'] != null) {
      _tketAccStatus = [];
      json['tket_acc_status'].forEach((v) {
        _tketAccStatus?.add(TketAccStatus.fromJson(v));
      });
    }
    if (json['sr_equip_model'] != null) {
      _srEquipModel = [];
      json['sr_equip_model'].forEach((v) {
        _srEquipModel?.add(SrEquipModel.fromJson(v));
      });
    }
  }
  List<Ticketpriorities>? _ticketpriorities;
  List<Ticketstatus>? _ticketstatus;
  List<TicketType>? _ticketType;
  List<Purpose>? _purpose;
  List<SystemAffected>? _systemAffected;
  List<EquipStatus>? _equipStatus;
  List<SubAssembly>? _subAssembly;
  List<WarClaimDte>? _warClaimDte;
  List<SrDepSystem>? _srDepSystem;
  List<TketAccStatus>? _tketAccStatus;
  List<SrEquipModel>? _srEquipModel;
  Data copyWith({
    List<Ticketpriorities>? ticketpriorities,
    List<Ticketstatus>? ticketstatus,
    List<TicketType>? ticketType,
    List<Purpose>? purpose,
    List<SystemAffected>? systemAffected,
    List<EquipStatus>? equipStatus,
    List<SubAssembly>? subAssembly,
    List<WarClaimDte>? warClaimDte,
    List<SrDepSystem>? srDepSystem,
    List<TketAccStatus>? tketAccStatus,
    List<SrEquipModel>? srEquipModel,
  }) =>
      Data(
        ticketpriorities: ticketpriorities ?? _ticketpriorities,
        ticketstatus: ticketstatus ?? _ticketstatus,
        ticketType: ticketType ?? _ticketType,
        purpose: purpose ?? _purpose,
        systemAffected: systemAffected ?? _systemAffected,
        equipStatus: equipStatus ?? _equipStatus,
        subAssembly: subAssembly ?? _subAssembly,
        warClaimDte: warClaimDte ?? _warClaimDte,
        srDepSystem: srDepSystem ?? _srDepSystem,
        tketAccStatus: tketAccStatus ?? _tketAccStatus,
        srEquipModel: srEquipModel ?? _srEquipModel,
      );
  List<Ticketpriorities>? get ticketpriorities => _ticketpriorities;
  List<Ticketstatus>? get ticketstatus => _ticketstatus;
  List<TicketType>? get ticketType => _ticketType;
  List<Purpose>? get purpose => _purpose;
  List<SystemAffected>? get systemAffected => _systemAffected;
  List<EquipStatus>? get equipStatus => _equipStatus;
  List<SubAssembly>? get subAssembly => _subAssembly;
  List<WarClaimDte>? get warClaimDte => _warClaimDte;
  List<SrDepSystem>? get srDepSystem => _srDepSystem;
  List<TketAccStatus>? get tketAccStatus => _tketAccStatus;
  List<SrEquipModel>? get srEquipModel => _srEquipModel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_ticketpriorities != null) {
      map['ticketpriorities'] =
          _ticketpriorities?.map((v) => v.toJson()).toList();
    }
    if (_ticketstatus != null) {
      map['ticketstatus'] = _ticketstatus?.map((v) => v.toJson()).toList();
    }
    if (_ticketType != null) {
      map['ticket_type'] = _ticketType?.map((v) => v.toJson()).toList();
    }
    if (_purpose != null) {
      map['purpose'] = _purpose?.map((v) => v.toJson()).toList();
    }
    if (_systemAffected != null) {
      map['system_affected'] = _systemAffected?.map((v) => v.toJson()).toList();
    }
    if (_equipStatus != null) {
      map['equip_status'] = _equipStatus?.map((v) => v.toJson()).toList();
    }
    if (_subAssembly != null) {
      map['sub_assembly'] = _subAssembly?.map((v) => v.toJson()).toList();
    }
    if (_warClaimDte != null) {
      map['war_claim_dte'] = _warClaimDte?.map((v) => v.toJson()).toList();
    }
    if (_srDepSystem != null) {
      map['sr_dep_system'] = _srDepSystem?.map((v) => v.toJson()).toList();
    }
    if (_tketAccStatus != null) {
      map['tket_acc_status'] = _tketAccStatus?.map((v) => v.toJson()).toList();
    }
    if (_srEquipModel != null) {
      map['sr_equip_model'] = _srEquipModel?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// sr_equip_model : "BG8251"

SrEquipModel srEquipModelFromJson(String str) =>
    SrEquipModel.fromJson(json.decode(str));
String srEquipModelToJson(SrEquipModel data) => json.encode(data.toJson());

class SrEquipModel {
  SrEquipModel({
    String? srEquipModel,
  }) {
    _srEquipModel = srEquipModel;
  }

  SrEquipModel.fromJson(dynamic json) {
    _srEquipModel = json['sr_equip_model'];
  }
  String? _srEquipModel;
  SrEquipModel copyWith({
    String? srEquipModel,
  }) =>
      SrEquipModel(
        srEquipModel: srEquipModel ?? _srEquipModel,
      );
  String? get srEquipModel => _srEquipModel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_equip_model'] = _srEquipModel;
    return map;
  }
}

/// tket_acc_status : "Pending"

TketAccStatus tketAccStatusFromJson(String str) =>
    TketAccStatus.fromJson(json.decode(str));
String tketAccStatusToJson(TketAccStatus data) => json.encode(data.toJson());

class TketAccStatus {
  TketAccStatus({
    String? tketAccStatus,
  }) {
    _tketAccStatus = tketAccStatus;
  }

  TketAccStatus.fromJson(dynamic json) {
    _tketAccStatus = json['tket_acc_status'];
  }
  String? _tketAccStatus;
  TketAccStatus copyWith({
    String? tketAccStatus,
  }) =>
      TketAccStatus(
        tketAccStatus: tketAccStatus ?? _tketAccStatus,
      );
  String? get tketAccStatus => _tketAccStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tket_acc_status'] = _tketAccStatus;
    return map;
  }
}

/// sr_dep_system : "test value"

SrDepSystem srDepSystemFromJson(String str) =>
    SrDepSystem.fromJson(json.decode(str));
String srDepSystemToJson(SrDepSystem data) => json.encode(data.toJson());

class SrDepSystem {
  SrDepSystem({
    String? srDepSystem,
  }) {
    _srDepSystem = srDepSystem;
  }

  SrDepSystem.fromJson(dynamic json) {
    _srDepSystem = json['sr_dep_system'];
  }
  String? _srDepSystem;
  SrDepSystem copyWith({
    String? srDepSystem,
  }) =>
      SrDepSystem(
        srDepSystem: srDepSystem ?? _srDepSystem,
      );
  String? get srDepSystem => _srDepSystem;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_dep_system'] = _srDepSystem;
    return map;
  }
}

/// war_claim_dte : "DATE OF SUPPLY"

WarClaimDte warClaimDteFromJson(String str) =>
    WarClaimDte.fromJson(json.decode(str));
String warClaimDteToJson(WarClaimDte data) => json.encode(data.toJson());

class WarClaimDte {
  WarClaimDte({
    String? warClaimDte,
  }) {
    _warClaimDte = warClaimDte;
  }

  WarClaimDte.fromJson(dynamic json) {
    _warClaimDte = json['war_claim_dte'];
  }
  String? _warClaimDte;
  WarClaimDte copyWith({
    String? warClaimDte,
  }) =>
      WarClaimDte(
        warClaimDte: warClaimDte ?? _warClaimDte,
      );
  String? get warClaimDte => _warClaimDte;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['war_claim_dte'] = _warClaimDte;
    return map;
  }
}

/// sub_assembly : "Engine"

SubAssembly subAssemblyFromJson(String str) =>
    SubAssembly.fromJson(json.decode(str));
String subAssemblyToJson(SubAssembly data) => json.encode(data.toJson());

class SubAssembly {
  SubAssembly({
    String? subAssembly,
  }) {
    _subAssembly = subAssembly;
  }

  SubAssembly.fromJson(dynamic json) {
    _subAssembly = json['sub_assembly'];
  }
  String? _subAssembly;
  SubAssembly copyWith({
    String? subAssembly,
  }) =>
      SubAssembly(
        subAssembly: subAssembly ?? _subAssembly,
      );
  String? get subAssembly => _subAssembly;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sub_assembly'] = _subAssembly;
    return map;
  }

  @override
  String toString() {
    return '${_subAssembly}';
  }
}

/// equip_status : "operational"

EquipStatus equipStatusFromJson(String str) =>
    EquipStatus.fromJson(json.decode(str));
String equipStatusToJson(EquipStatus data) => json.encode(data.toJson());

class EquipStatus {
  EquipStatus({
    String? equipStatus,
  }) {
    _equipStatus = equipStatus;
  }

  EquipStatus.fromJson(dynamic json) {
    _equipStatus = json['equip_status'];
  }
  String? _equipStatus;
  EquipStatus copyWith({
    String? equipStatus,
  }) =>
      EquipStatus(
        equipStatus: equipStatus ?? _equipStatus,
      );
  String? get equipStatus => _equipStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['equip_status'] = _equipStatus;
    return map;
  }
}

/// system_affected : "Responsible Agency_._BEML - Bangalore"

SystemAffected systemAffectedFromJson(String str) =>
    SystemAffected.fromJson(json.decode(str));
String systemAffectedToJson(SystemAffected data) => json.encode(data.toJson());

class SystemAffected {
  SystemAffected({
    String? systemAffected,
  }) {
    _systemAffected = systemAffected;
  }

  SystemAffected.fromJson(dynamic json) {
    _systemAffected = json['system_affected'];
  }
  String? _systemAffected;
  SystemAffected copyWith({
    String? systemAffected,
  }) =>
      SystemAffected(
        systemAffected: systemAffected ?? _systemAffected,
      );
  String? get systemAffected => _systemAffected;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['system_affected'] = _systemAffected;
    return map;
  }
}

/// purpose : "REHABILITATION"

Purpose purposeFromJson(String str) => Purpose.fromJson(json.decode(str));
String purposeToJson(Purpose data) => json.encode(data.toJson());

class Purpose {
  Purpose({
    String? purpose,
  }) {
    _purpose = purpose;
  }

  Purpose.fromJson(dynamic json) {
    _purpose = json['purpose'];
  }
  String? _purpose;
  Purpose copyWith({
    String? purpose,
  }) =>
      Purpose(
        purpose: purpose ?? _purpose,
      );
  String? get purpose => _purpose;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['purpose'] = _purpose;
    return map;
  }
}

/// ticket_type : "PRE-DELIVERY"

TicketType ticketTypeFromJson(String str) =>
    TicketType.fromJson(json.decode(str));
String ticketTypeToJson(TicketType data) => json.encode(data.toJson());

class TicketType {
  TicketType({
    String? ticketType,
  }) {
    _ticketType = ticketType;
  }

  TicketType.fromJson(dynamic json) {
    _ticketType = json['ticket_type'];
  }
  String? _ticketType;
  TicketType copyWith({
    String? ticketType,
  }) =>
      TicketType(
        ticketType: ticketType ?? _ticketType,
      );
  String? get ticketType => _ticketType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ticket_type'] = _ticketType;
    return map;
  }
}

/// ticketstatus : "Open"

Ticketstatus ticketstatusFromJson(String str) =>
    Ticketstatus.fromJson(json.decode(str));
String ticketstatusToJson(Ticketstatus data) => json.encode(data.toJson());

class Ticketstatus {
  Ticketstatus({
    String? ticketstatus,
  }) {
    _ticketstatus = ticketstatus;
  }

  Ticketstatus.fromJson(dynamic json) {
    _ticketstatus = json['ticketstatus'];
  }
  String? _ticketstatus;
  Ticketstatus copyWith({
    String? ticketstatus,
  }) =>
      Ticketstatus(
        ticketstatus: ticketstatus ?? _ticketstatus,
      );
  String? get ticketstatus => _ticketstatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ticketstatus'] = _ticketstatus;
    return map;
  }
}

/// ticketpriorities : "Low"

Ticketpriorities ticketprioritiesFromJson(String str) =>
    Ticketpriorities.fromJson(json.decode(str));
String ticketprioritiesToJson(Ticketpriorities data) =>
    json.encode(data.toJson());

class Ticketpriorities {
  Ticketpriorities({
    String? ticketpriorities,
  }) {
    _ticketpriorities = ticketpriorities;
  }

  Ticketpriorities.fromJson(dynamic json) {
    _ticketpriorities = json['ticketpriorities'];
  }
  String? _ticketpriorities;
  Ticketpriorities copyWith({
    String? ticketpriorities,
  }) =>
      Ticketpriorities(
        ticketpriorities: ticketpriorities ?? _ticketpriorities,
      );
  String? get ticketpriorities => _ticketpriorities;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ticketpriorities'] = _ticketpriorities;
    return map;
  }
}
