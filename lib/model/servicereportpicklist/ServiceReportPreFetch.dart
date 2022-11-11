import 'dart:convert';

ServiceReportPreFetch serviceReportPreFetchFromJson(String str) =>
    ServiceReportPreFetch.fromJson(json.decode(str));
String serviceReportPreFetchToJson(ServiceReportPreFetch data) =>
    json.encode(data.toJson());

class ServiceReportPreFetch {
  ServiceReportPreFetch({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  ServiceReportPreFetch.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  ServiceReportPreFetch copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      ServiceReportPreFetch(
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

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    RecordValues? recordValues,
  }) {
    _recordValues = recordValues;
  }

  Data.fromJson(dynamic json) {
    _recordValues = json['recordValues'] != null
        ? RecordValues.fromJson(json['recordValues'])
        : null;
  }
  RecordValues? _recordValues;
  Data copyWith({
    RecordValues? recordValues,
  }) =>
      Data(
        recordValues: recordValues ?? _recordValues,
      );
  RecordValues? get recordValues => _recordValues;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_recordValues != null) {
      map['recordValues'] = _recordValues?.toJson();
    }
    return map;
  }
}

RecordValues recordValuesFromJson(String str) =>
    RecordValues.fromJson(json.decode(str));
String recordValuesToJson(RecordValues data) => json.encode(data.toJson());

class RecordValues {
  RecordValues({
    String? srSystemAffected,
    String? srHmr,
    String? symptoms,
    String? dteOfCommissing,
    String? srWarStatus,
    String? ticketDate,
    String? oppName,
    String? phone,
    String? reportedBy,
    String? accountId,
    String? funcLocId,
    String? areaName,
    String? srTicketType,
    String? ticketId,
    String? srEquipStatus,
    String? dateOfFailure,
    String? hmr,
    String? kilometerReading,
    String? kiloDate,
    String? projectName,
    String? typeOfConrt,
    String? contStartDate,
    String? contEndDate,
    String? runYearCont,
    String? equipmentId,
    String? eqSrEquipModel,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
    String? srRegionalOffice,
    String? distOffOrActCen,
    String? tckDetPurpose,
    String? ticketIdLabel,
    String? reportedByLabel,
  }) {
    _srSystemAffected = srSystemAffected;
    _srHmr = srHmr;
    _symptoms = symptoms;
    _dteOfCommissing = dteOfCommissing;
    _srWarStatus = srWarStatus;
    _ticketDate = ticketDate;
    _oppName = oppName;
    _phone = phone;
    _reportedBy = reportedBy;
    _accountId = accountId;
    _funcLocId = funcLocId;
    _areaName = areaName;
    _srTicketType = srTicketType;
    _ticketId = ticketId;
    _srEquipStatus = srEquipStatus;
    _dateOfFailure = dateOfFailure;
    _hmr = hmr;
    _kilometerReading = kilometerReading;
    _kiloDate = kiloDate;
    _projectName = projectName;
    _typeOfConrt = typeOfConrt;
    _contStartDate = contStartDate;
    _contEndDate = contEndDate;
    _runYearCont = runYearCont;
    _equipmentId = equipmentId;
    _eqSrEquipModel = eqSrEquipModel;
    _badgeNo = badgeNo;
    _serEngName = serEngName;
    _srDesignaion = srDesignaion;
    _srRegionalOffice = srRegionalOffice;
    _distOffOrActCen = distOffOrActCen;
    _tckDetPurpose = tckDetPurpose;
    _ticketIdLabel = ticketIdLabel;
    _reportedByLabel = reportedByLabel;
  }

  RecordValues.fromJson(dynamic json) {
    _srSystemAffected = json['sr_system_affected'];
    _srHmr = json['sr_hmr'];
    _symptoms = json['symptoms'];
    _dteOfCommissing = json['dte_of_commissing'];
    _srWarStatus = json['sr_war_status'];
    _ticketDate = json['ticket_date'];
    _oppName = json['opp_name'];
    _phone = json['phone'];
    _reportedBy = json['reported_by'];
    _accountId = json['account_id'];
    _funcLocId = json['func_loc_id'];
    _areaName = json['area_name'];
    _srTicketType = json['sr_ticket_type'];
    _ticketId = json['ticket_id'];
    _srEquipStatus = json['sr_equip_status'];
    _dateOfFailure = json['date_of_failure'];
    _hmr = json['hmr'];
    _kilometerReading = json['kilometer_reading'];
    _kiloDate = json['kilo_date'];
    _projectName = json['project_name'];
    _typeOfConrt = json['type_of_conrt'];
    _contStartDate = json['cont_start_date'];
    _contEndDate = json['cont_end_date'];
    _runYearCont = json['run_year_cont'];
    _equipmentId = json['equipment_id'];
    _eqSrEquipModel = json['eq_sr_equip_model'];
    _badgeNo = json['badge_no'];
    _serEngName = json['ser_eng_name'];
    _srDesignaion = json['sr_designaion'];
    _srRegionalOffice = json['sr_regional_office'];
    _distOffOrActCen = json['dist_off_or_act_cen'];
    _tckDetPurpose = json['tck_det_purpose'];
    _ticketIdLabel = json['ticket_id_Label'];
    _reportedByLabel = json['reported_by_Label'];
  }
  String? _srSystemAffected;
  String? _srHmr;
  String? _symptoms;
  String? _dteOfCommissing;
  String? _srWarStatus;
  String? _ticketDate;
  String? _oppName;
  String? _phone;
  String? _reportedBy;
  String? _accountId;
  String? _funcLocId;
  String? _areaName;
  String? _srTicketType;
  String? _ticketId;
  String? _srEquipStatus;
  String? _dateOfFailure;
  String? _hmr;
  String? _kilometerReading;
  String? _kiloDate;
  String? _projectName;
  String? _typeOfConrt;
  String? _contStartDate;
  String? _contEndDate;
  String? _runYearCont;
  String? _equipmentId;
  String? _eqSrEquipModel;
  String? _badgeNo;
  String? _serEngName;
  String? _srDesignaion;
  String? _srRegionalOffice;
  String? _distOffOrActCen;
  String? _tckDetPurpose;
  String? _ticketIdLabel;
  String? _reportedByLabel;
  RecordValues copyWith({
    String? srSystemAffected,
    String? srHmr,
    String? symptoms,
    String? dteOfCommissing,
    String? srWarStatus,
    String? ticketDate,
    String? oppName,
    String? phone,
    String? reportedBy,
    String? accountId,
    String? funcLocId,
    String? areaName,
    String? srTicketType,
    String? ticketId,
    String? srEquipStatus,
    String? dateOfFailure,
    String? hmr,
    String? kilometerReading,
    String? kiloDate,
    String? projectName,
    String? typeOfConrt,
    String? contStartDate,
    String? contEndDate,
    String? runYearCont,
    String? equipmentId,
    String? eqSrEquipModel,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
    String? srRegionalOffice,
    String? distOffOrActCen,
    String? tckDetPurpose,
    String? ticketIdLabel,
    String? reportedByLabel,
  }) =>
      RecordValues(
        srSystemAffected: srSystemAffected ?? _srSystemAffected,
        srHmr: srHmr ?? _srHmr,
        symptoms: symptoms ?? _symptoms,
        dteOfCommissing: dteOfCommissing ?? _dteOfCommissing,
        srWarStatus: srWarStatus ?? _srWarStatus,
        ticketDate: ticketDate ?? _ticketDate,
        oppName: oppName ?? _oppName,
        phone: phone ?? _phone,
        reportedBy: reportedBy ?? _reportedBy,
        accountId: accountId ?? _accountId,
        funcLocId: funcLocId ?? _funcLocId,
        areaName: areaName ?? _areaName,
        srTicketType: srTicketType ?? _srTicketType,
        ticketId: ticketId ?? _ticketId,
        srEquipStatus: srEquipStatus ?? _srEquipStatus,
        dateOfFailure: dateOfFailure ?? _dateOfFailure,
        hmr: hmr ?? _hmr,
        kilometerReading: kilometerReading ?? _kilometerReading,
        kiloDate: kiloDate ?? _kiloDate,
        projectName: projectName ?? _projectName,
        typeOfConrt: typeOfConrt ?? _typeOfConrt,
        contStartDate: contStartDate ?? _contStartDate,
        contEndDate: contEndDate ?? _contEndDate,
        runYearCont: runYearCont ?? _runYearCont,
        equipmentId: equipmentId ?? _equipmentId,
        eqSrEquipModel: eqSrEquipModel ?? _eqSrEquipModel,
        badgeNo: badgeNo ?? _badgeNo,
        serEngName: serEngName ?? _serEngName,
        srDesignaion: srDesignaion ?? _srDesignaion,
        srRegionalOffice: srRegionalOffice ?? _srRegionalOffice,
        distOffOrActCen: distOffOrActCen ?? _distOffOrActCen,
        tckDetPurpose: tckDetPurpose ?? _tckDetPurpose,
        ticketIdLabel: ticketIdLabel ?? _ticketIdLabel,
        reportedByLabel: reportedByLabel ?? _reportedByLabel,
      );
  String? get srSystemAffected => _srSystemAffected;
  String? get srHmr => _srHmr;
  String? get symptoms => _symptoms;
  String? get dteOfCommissing => _dteOfCommissing;
  String? get srWarStatus => _srWarStatus;
  String? get ticketDate => _ticketDate;
  String? get oppName => _oppName;
  String? get phone => _phone;
  String? get reportedBy => _reportedBy;
  String? get accountId => _accountId;
  String? get funcLocId => _funcLocId;
  String? get areaName => _areaName;
  String? get srTicketType => _srTicketType;
  String? get ticketId => _ticketId;
  String? get srEquipStatus => _srEquipStatus;
  String? get dateOfFailure => _dateOfFailure;
  String? get hmr => _hmr;
  String? get kilometerReading => _kilometerReading;
  String? get kiloDate => _kiloDate;
  String? get projectName => _projectName;
  String? get typeOfConrt => _typeOfConrt;
  String? get contStartDate => _contStartDate;
  String? get contEndDate => _contEndDate;
  String? get runYearCont => _runYearCont;
  String? get equipmentId => _equipmentId;
  String? get eqSrEquipModel => _eqSrEquipModel;
  String? get badgeNo => _badgeNo;
  String? get serEngName => _serEngName;
  String? get srDesignaion => _srDesignaion;
  String? get srRegionalOffice => _srRegionalOffice;
  String? get distOffOrActCen => _distOffOrActCen;
  String? get tckDetPurpose => _tckDetPurpose;
  String? get ticketIdLabel => _ticketIdLabel;
  String? get reportedByLabel => _reportedByLabel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_system_affected'] = _srSystemAffected;
    map['sr_hmr'] = _srHmr;
    map['symptoms'] = _symptoms;
    map['dte_of_commissing'] = _dteOfCommissing;
    map['sr_war_status'] = _srWarStatus;
    map['ticket_date'] = _ticketDate;
    map['opp_name'] = _oppName;
    map['phone'] = _phone;
    map['reported_by'] = _reportedBy;
    map['account_id'] = _accountId;
    map['func_loc_id'] = _funcLocId;
    map['area_name'] = _areaName;
    map['sr_ticket_type'] = _srTicketType;
    map['ticket_id'] = _ticketId;
    map['sr_equip_status'] = _srEquipStatus;
    map['date_of_failure'] = _dateOfFailure;
    map['hmr'] = _hmr;
    map['kilometer_reading'] = _kilometerReading;
    map['kilo_date'] = _kiloDate;
    map['project_name'] = _projectName;
    map['type_of_conrt'] = _typeOfConrt;
    map['cont_start_date'] = _contStartDate;
    map['cont_end_date'] = _contEndDate;
    map['run_year_cont'] = _runYearCont;
    map['equipment_id'] = _equipmentId;
    map['eq_sr_equip_model'] = _eqSrEquipModel;
    map['badge_no'] = _badgeNo;
    map['ser_eng_name'] = _serEngName;
    map['sr_designaion'] = _srDesignaion;
    map['sr_regional_office'] = _srRegionalOffice;
    map['dist_off_or_act_cen'] = _distOffOrActCen;
    map['tck_det_purpose'] = _tckDetPurpose;
    map['ticket_id_Label'] = _ticketIdLabel;
    map['reported_by_Label'] = _reportedByLabel;
    return map;
  }
}
