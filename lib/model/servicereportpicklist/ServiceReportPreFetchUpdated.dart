import 'dart:convert';

/// statuscode : 1
/// data : {"recordValues":{"sr_system_affected":"Responsible Agency_._BEML - Bangalore","sr_hmr":"2022-10-01","symptoms":"testing predelivdry","dte_of_commissing":"","warranty_end_dte":"","sr_war_status":"","ticket_date":"2022-10-01","opp_name":"sumeeth","phone":"9945495089","reported_by":"","account_id":"","func_loc_id":"","area_name":"","sr_ticket_type":"PRE-DELIVERY","ticket_id":"17x607811","sr_equip_status":"On Road","eng_sl_no":"","trans_sl_no":"","motor_sl_no":"","date_of_failure":"","hmr":"1234","kilometer_reading":"1234","kilo_date":"2022-10-01","project_name":"","type_of_conrt":"","cont_start_date":"","cont_end_date":"","run_year_cont":"","sr_eq_warranty_terms":"","sr_transmission":"","sr_engine":"","sr_final_drive":"","sr_rear_axle":"","sr_chassis":"","equipment_id":"","eq_sr_equip_model":"KOEL-4R1040 (BE71)","badge_no":"12345","ser_eng_name":"QWERTY","sr_designaion":"Director(Mining &amp; Construction Business)","sr_regional_office":"","dist_off_or_act_cen":"","tck_det_purpose":"","td_symptoms":"testing predelivdry","sad_det_of_subasmb":"","manual_equ_ser":"0001020","war_claim_dte":"","sr_final_drive_wt":"","sr_engine_wt":"","sr_transmission_wt":"","sr_rear_axle_wt":"","sr_chassis_wt":"","ticket_id_Label":"TT346"}}
/// statusMessage : "Successfully Fetched Data"

ServiceReportPreFetchUpdated serviceReportPreFetchUpdatedFromJson(String str) =>
    ServiceReportPreFetchUpdated.fromJson(json.decode(str));
String serviceReportPreFetchUpdatedToJson(ServiceReportPreFetchUpdated data) =>
    json.encode(data.toJson());

class ServiceReportPreFetchUpdated {
  ServiceReportPreFetchUpdated({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  ServiceReportPreFetchUpdated.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  ServiceReportPreFetchUpdated copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      ServiceReportPreFetchUpdated(
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

/// recordValues : {"sr_system_affected":"Responsible Agency_._BEML - Bangalore","sr_hmr":"2022-10-01","symptoms":"testing predelivdry","dte_of_commissing":"","warranty_end_dte":"","sr_war_status":"","ticket_date":"2022-10-01","opp_name":"sumeeth","phone":"9945495089","reported_by":"","account_id":"","func_loc_id":"","area_name":"","sr_ticket_type":"PRE-DELIVERY","ticket_id":"17x607811","sr_equip_status":"On Road","eng_sl_no":"","trans_sl_no":"","motor_sl_no":"","date_of_failure":"","hmr":"1234","kilometer_reading":"1234","kilo_date":"2022-10-01","project_name":"","type_of_conrt":"","cont_start_date":"","cont_end_date":"","run_year_cont":"","sr_eq_warranty_terms":"","sr_transmission":"","sr_engine":"","sr_final_drive":"","sr_rear_axle":"","sr_chassis":"","equipment_id":"","eq_sr_equip_model":"KOEL-4R1040 (BE71)","badge_no":"12345","ser_eng_name":"QWERTY","sr_designaion":"Director(Mining &amp; Construction Business)","sr_regional_office":"","dist_off_or_act_cen":"","tck_det_purpose":"","td_symptoms":"testing predelivdry","sad_det_of_subasmb":"","manual_equ_ser":"0001020","war_claim_dte":"","sr_final_drive_wt":"","sr_engine_wt":"","sr_transmission_wt":"","sr_rear_axle_wt":"","sr_chassis_wt":"","ticket_id_Label":"TT346"}

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

/// sr_system_affected : "Responsible Agency_._BEML - Bangalore"
/// sr_hmr : "2022-10-01"
/// symptoms : "testing predelivdry"
/// dte_of_commissing : ""
/// warranty_end_dte : ""
/// sr_war_status : ""
/// ticket_date : "2022-10-01"
/// opp_name : "sumeeth"
/// phone : "9945495089"
/// reported_by : ""
/// account_id : ""
/// func_loc_id : ""
/// area_name : ""
/// sr_ticket_type : "PRE-DELIVERY"
/// ticket_id : "17x607811"
/// sr_equip_status : "On Road"
/// eng_sl_no : ""
/// trans_sl_no : ""
/// motor_sl_no : ""
/// date_of_failure : ""
/// hmr : "1234"
/// kilometer_reading : "1234"
/// kilo_date : "2022-10-01"
/// project_name : ""
/// type_of_conrt : ""
/// cont_start_date : ""
/// cont_end_date : ""
/// run_year_cont : ""
/// sr_eq_warranty_terms : ""
/// sr_transmission : ""
/// sr_engine : ""
/// sr_final_drive : ""
/// sr_rear_axle : ""
/// sr_chassis : ""
/// equipment_id : ""
/// eq_sr_equip_model : "KOEL-4R1040 (BE71)"
/// badge_no : "12345"
/// ser_eng_name : "QWERTY"
/// sr_designaion : "Director(Mining &amp; Construction Business)"
/// sr_regional_office : ""
/// dist_off_or_act_cen : ""
/// tck_det_purpose : ""
/// td_symptoms : "testing predelivdry"
/// sad_det_of_subasmb : ""
/// manual_equ_ser : "0001020"
/// war_claim_dte : ""
/// sr_final_drive_wt : ""
/// sr_engine_wt : ""
/// sr_transmission_wt : ""
/// sr_rear_axle_wt : ""
/// sr_chassis_wt : ""
/// ticket_id_Label : "TT346"

RecordValues recordValuesFromJson(String str) =>
    RecordValues.fromJson(json.decode(str));
String recordValuesToJson(RecordValues data) => json.encode(data.toJson());

class RecordValues {
  RecordValues({
    String? srSystemAffected,
    String? srHmr,
    String? symptoms,
    String? dteOfCommissing,
    String? warrantyEndDte,
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
    String? engSlNo,
    String? transSlNo,
    String? motorSlNo,
    String? dateOfFailure,
    String? hmr,
    String? kilometerReading,
    String? kiloDate,
    String? projectName,
    String? typeOfConrt,
    String? contStartDate,
    String? contEndDate,
    String? runYearCont,
    String? srEqWarrantyTerms,
    String? srTransmission,
    String? srEngine,
    String? srFinalDrive,
    String? srRearAxle,
    String? srChassis,
    String? equipmentId,
    String? eqSrEquipModel,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
    String? srRegionalOffice,
    String? distOffOrActCen,
    String? tckDetPurpose,
    String? tdSymptoms,
    String? sadDetOfSubasmb,
    String? manualEquSer,
    String? warClaimDte,
    String? srFinalDriveWt,
    String? srEngineWt,
    String? srTransmissionWt,
    String? srRearAxleWt,
    String? srChassisWt,
    String? ticketIdLabel,
    String? func_loc_id_Label,
    List<Imagename>? imagename,
    String? equipment_id_Label,
    String? equip_id_da_sr_display,
    String? equip_id_da_sr,
    List<ModelAggregates>? modelAggregates,
    String? account_id_Label,
  }) {
    _srSystemAffected = srSystemAffected;
    _srHmr = srHmr;
    _symptoms = symptoms;
    _dteOfCommissing = dteOfCommissing;
    _warrantyEndDte = warrantyEndDte;
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
    _engSlNo = engSlNo;
    _transSlNo = transSlNo;
    _motorSlNo = motorSlNo;
    _dateOfFailure = dateOfFailure;
    _hmr = hmr;
    _kilometerReading = kilometerReading;
    _kiloDate = kiloDate;
    _projectName = projectName;
    _typeOfConrt = typeOfConrt;
    _contStartDate = contStartDate;
    _contEndDate = contEndDate;
    _runYearCont = runYearCont;
    _srEqWarrantyTerms = srEqWarrantyTerms;
    _srTransmission = srTransmission;
    _srEngine = srEngine;
    _srFinalDrive = srFinalDrive;
    _srRearAxle = srRearAxle;
    _srChassis = srChassis;
    _equipmentId = equipmentId;
    _eqSrEquipModel = eqSrEquipModel;
    _badgeNo = badgeNo;
    _serEngName = serEngName;
    _srDesignaion = srDesignaion;
    _srRegionalOffice = srRegionalOffice;
    _distOffOrActCen = distOffOrActCen;
    _tckDetPurpose = tckDetPurpose;
    _tdSymptoms = tdSymptoms;
    _sadDetOfSubasmb = sadDetOfSubasmb;
    _manualEquSer = manualEquSer;
    _warClaimDte = warClaimDte;
    _srFinalDriveWt = srFinalDriveWt;
    _srEngineWt = srEngineWt;
    _srTransmissionWt = srTransmissionWt;
    _srRearAxleWt = srRearAxleWt;
    _srChassisWt = srChassisWt;
    _ticketIdLabel = ticketIdLabel;
    func_loc_id_Label = func_loc_id_Label;
    _imagename = imagename;
    equipment_id_Label = equipment_id_Label;
    equip_id_da_sr_display = equip_id_da_sr_display;
    equip_id_da_sr = equip_id_da_sr;
    _modelAggregates = modelAggregates;
    account_id_Label = account_id_Label;
  }

  RecordValues.fromJson(dynamic json) {
    _srSystemAffected = json['sr_system_affected'];
    _srHmr = json['sr_hmr'];
    _symptoms = json['symptoms'];
    _dteOfCommissing = json['dte_of_commissing'];
    _warrantyEndDte = json['warranty_end_dte'];
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
    _engSlNo = json['eng_sl_no'];
    _transSlNo = json['trans_sl_no'];
    _motorSlNo = json['motor_sl_no'];
    _dateOfFailure = json['date_of_failure'];
    _hmr = json['hmr'];
    _kilometerReading = json['kilometer_reading'];
    _kiloDate = json['kilo_date'];
    _projectName = json['project_name'];
    _typeOfConrt = json['type_of_conrt'];
    _contStartDate = json['cont_start_date'];
    _contEndDate = json['cont_end_date'];
    _runYearCont = json['run_year_cont'];
    _srEqWarrantyTerms = json['sr_eq_warranty_terms'];
    _srTransmission = json['sr_transmission'];
    _srEngine = json['sr_engine'];
    _srFinalDrive = json['sr_final_drive'];
    _srRearAxle = json['sr_rear_axle'];
    _srChassis = json['sr_chassis'];
    _equipmentId = json['equipment_id'];
    _eqSrEquipModel = json['eq_sr_equip_model'];
    _badgeNo = json['badge_no'];
    _serEngName = json['ser_eng_name'];
    _srDesignaion = json['sr_designaion'];
    _srRegionalOffice = json['sr_regional_office'];
    _distOffOrActCen = json['dist_off_or_act_cen'];
    _tckDetPurpose = json['tck_det_purpose'];
    _tdSymptoms = json['td_symptoms'];
    _sadDetOfSubasmb = json['sad_det_of_subasmb'];
    _manualEquSer = json['manual_equ_ser'];
    _warClaimDte = json['war_claim_dte'];
    _srFinalDriveWt = json['sr_final_drive_wt'];
    _srEngineWt = json['sr_engine_wt'];
    _srTransmissionWt = json['sr_transmission_wt'];
    _srRearAxleWt = json['sr_rear_axle_wt'];
    _srChassisWt = json['sr_chassis_wt'];
    _ticketIdLabel = json['ticket_id_Label'];
    func_loc_id_Label = json['func_loc_id_Label'];
    account_id_Label = json['account_id_Label'];
    if (json['imagename'] != null) {
      _imagename = [];
      json['imagename'].forEach((v) {
        _imagename?.add(Imagename.fromJson(v));
      });
    }
    equipment_id_Label = json['equipment_id_Label'];
    equip_id_da_sr_display = json['equip_id_da_sr_Label'];
    equip_id_da_sr = json['equip_id_da_sr'];

    if (json['modelAggregates'] != null) {
      _modelAggregates = [];
      json['modelAggregates'].forEach((v) {
        _modelAggregates?.add(ModelAggregates.fromJson(v));
      });
    }
  }
  String? _srSystemAffected;
  String? _srHmr;
  String? _symptoms;
  String? _dteOfCommissing;
  String? _warrantyEndDte;
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
  String? _engSlNo;
  String? _transSlNo;
  String? _motorSlNo;
  String? _dateOfFailure;
  String? _hmr;
  String? _kilometerReading;
  String? _kiloDate;
  String? _projectName;
  String? _typeOfConrt;
  String? _contStartDate;
  String? _contEndDate;
  String? _runYearCont;
  String? _srEqWarrantyTerms;
  String? _srTransmission;
  String? _srEngine;
  String? _srFinalDrive;
  String? _srRearAxle;
  String? _srChassis;
  String? _equipmentId;
  String? _eqSrEquipModel;
  String? _badgeNo;
  String? _serEngName;
  String? _srDesignaion;
  String? _srRegionalOffice;
  String? _distOffOrActCen;
  String? _tckDetPurpose;
  String? _tdSymptoms;
  String? _sadDetOfSubasmb;
  String? _manualEquSer;
  String? _warClaimDte;
  String? _srFinalDriveWt;
  String? _srEngineWt;
  String? _srTransmissionWt;
  String? _srRearAxleWt;
  String? _srChassisWt;
  String? _ticketIdLabel;
  String? func_loc_id_Label;
  List<Imagename>? _imagename;
  String? equipment_id_Label;
  String? equip_id_da_sr_display;
  String? equip_id_da_sr;
  List<ModelAggregates>? _modelAggregates;
  String? account_id_Label;

  RecordValues copyWith({
    String? srSystemAffected,
    String? srHmr,
    String? symptoms,
    String? dteOfCommissing,
    String? warrantyEndDte,
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
    String? engSlNo,
    String? transSlNo,
    String? motorSlNo,
    String? dateOfFailure,
    String? hmr,
    String? kilometerReading,
    String? kiloDate,
    String? projectName,
    String? typeOfConrt,
    String? contStartDate,
    String? contEndDate,
    String? runYearCont,
    String? srEqWarrantyTerms,
    String? srTransmission,
    String? srEngine,
    String? srFinalDrive,
    String? srRearAxle,
    String? srChassis,
    String? equipmentId,
    String? eqSrEquipModel,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
    String? srRegionalOffice,
    String? distOffOrActCen,
    String? tckDetPurpose,
    String? tdSymptoms,
    String? sadDetOfSubasmb,
    String? manualEquSer,
    String? warClaimDte,
    String? srFinalDriveWt,
    String? srEngineWt,
    String? srTransmissionWt,
    String? srRearAxleWt,
    String? srChassisWt,
    String? ticketIdLabel,
    String? func_loc_id_Label,
    String? equipment_id_Label,
    List<Imagename>? imagename,
  }) =>
      RecordValues(
        srSystemAffected: srSystemAffected ?? _srSystemAffected,
        srHmr: srHmr ?? _srHmr,
        symptoms: symptoms ?? _symptoms,
        dteOfCommissing: dteOfCommissing ?? _dteOfCommissing,
        warrantyEndDte: warrantyEndDte ?? _warrantyEndDte,
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
        engSlNo: engSlNo ?? _engSlNo,
        transSlNo: transSlNo ?? _transSlNo,
        motorSlNo: motorSlNo ?? _motorSlNo,
        dateOfFailure: dateOfFailure ?? _dateOfFailure,
        hmr: hmr ?? _hmr,
        kilometerReading: kilometerReading ?? _kilometerReading,
        kiloDate: kiloDate ?? _kiloDate,
        projectName: projectName ?? _projectName,
        typeOfConrt: typeOfConrt ?? _typeOfConrt,
        contStartDate: contStartDate ?? _contStartDate,
        contEndDate: contEndDate ?? _contEndDate,
        runYearCont: runYearCont ?? _runYearCont,
        srEqWarrantyTerms: srEqWarrantyTerms ?? _srEqWarrantyTerms,
        srTransmission: srTransmission ?? _srTransmission,
        srEngine: srEngine ?? _srEngine,
        srFinalDrive: srFinalDrive ?? _srFinalDrive,
        srRearAxle: srRearAxle ?? _srRearAxle,
        srChassis: srChassis ?? _srChassis,
        equipmentId: equipmentId ?? _equipmentId,
        eqSrEquipModel: eqSrEquipModel ?? _eqSrEquipModel,
        badgeNo: badgeNo ?? _badgeNo,
        serEngName: serEngName ?? _serEngName,
        srDesignaion: srDesignaion ?? _srDesignaion,
        srRegionalOffice: srRegionalOffice ?? _srRegionalOffice,
        distOffOrActCen: distOffOrActCen ?? _distOffOrActCen,
        tckDetPurpose: tckDetPurpose ?? _tckDetPurpose,
        tdSymptoms: tdSymptoms ?? _tdSymptoms,
        sadDetOfSubasmb: sadDetOfSubasmb ?? _sadDetOfSubasmb,
        manualEquSer: manualEquSer ?? _manualEquSer,
        warClaimDte: warClaimDte ?? _warClaimDte,
        srFinalDriveWt: srFinalDriveWt ?? _srFinalDriveWt,
        srEngineWt: srEngineWt ?? _srEngineWt,
        srTransmissionWt: srTransmissionWt ?? _srTransmissionWt,
        srRearAxleWt: srRearAxleWt ?? _srRearAxleWt,
        srChassisWt: srChassisWt ?? _srChassisWt,
        ticketIdLabel: ticketIdLabel ?? _ticketIdLabel,
        func_loc_id_Label: func_loc_id_Label ?? func_loc_id_Label,
        imagename: imagename ?? _imagename,
        equipment_id_Label: equipment_id_Label ?? equipment_id_Label,
      );
  String? get srSystemAffected => _srSystemAffected;
  String? get srHmr => _srHmr;
  String? get symptoms => _symptoms;
  String? get dteOfCommissing => _dteOfCommissing;
  String? get warrantyEndDte => _warrantyEndDte;
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
  String? get engSlNo => _engSlNo;
  String? get transSlNo => _transSlNo;
  String? get motorSlNo => _motorSlNo;
  String? get dateOfFailure => _dateOfFailure;
  String? get hmr => _hmr;
  String? get kilometerReading => _kilometerReading;
  String? get kiloDate => _kiloDate;
  String? get projectName => _projectName;
  String? get typeOfConrt => _typeOfConrt;
  String? get contStartDate => _contStartDate;
  String? get contEndDate => _contEndDate;
  String? get runYearCont => _runYearCont;
  String? get srEqWarrantyTerms => _srEqWarrantyTerms;
  String? get srTransmission => _srTransmission;
  String? get srEngine => _srEngine;
  String? get srFinalDrive => _srFinalDrive;
  String? get srRearAxle => _srRearAxle;
  String? get srChassis => _srChassis;
  String? get equipmentId => _equipmentId;
  String? get eqSrEquipModel => _eqSrEquipModel;
  String? get badgeNo => _badgeNo;
  String? get serEngName => _serEngName;
  String? get srDesignaion => _srDesignaion;
  String? get srRegionalOffice => _srRegionalOffice;
  String? get distOffOrActCen => _distOffOrActCen;
  String? get tckDetPurpose => _tckDetPurpose;
  String? get tdSymptoms => _tdSymptoms;
  String? get sadDetOfSubasmb => _sadDetOfSubasmb;
  String? get manualEquSer => _manualEquSer;
  String? get warClaimDte => _warClaimDte;
  String? get srFinalDriveWt => _srFinalDriveWt;
  String? get srEngineWt => _srEngineWt;
  String? get srTransmissionWt => _srTransmissionWt;
  String? get srRearAxleWt => _srRearAxleWt;
  String? get srChassisWt => _srChassisWt;
  String? get ticketIdLabel => _ticketIdLabel;
  String? get organisationname => func_loc_id_Label;
  List<Imagename>? get imagename => _imagename;
  String? get equipmentlable => equipment_id_Label;
  String? get newequipmentlable => equip_id_da_sr_display;
  String? get newequid => equip_id_da_sr;

  List<ModelAggregates>? get modelAggregates => _modelAggregates;
  String? get organisationNewName => account_id_Label;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sr_system_affected'] = _srSystemAffected;
    map['sr_hmr'] = _srHmr;
    map['symptoms'] = _symptoms;
    map['dte_of_commissing'] = _dteOfCommissing;
    map['warranty_end_dte'] = _warrantyEndDte;
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
    map['eng_sl_no'] = _engSlNo;
    map['trans_sl_no'] = _transSlNo;
    map['motor_sl_no'] = _motorSlNo;
    map['date_of_failure'] = _dateOfFailure;
    map['hmr'] = _hmr;
    map['kilometer_reading'] = _kilometerReading;
    map['kilo_date'] = _kiloDate;
    map['project_name'] = _projectName;
    map['type_of_conrt'] = _typeOfConrt;
    map['cont_start_date'] = _contStartDate;
    map['cont_end_date'] = _contEndDate;
    map['run_year_cont'] = _runYearCont;
    map['sr_eq_warranty_terms'] = _srEqWarrantyTerms;
    map['sr_transmission'] = _srTransmission;
    map['sr_engine'] = _srEngine;
    map['sr_final_drive'] = _srFinalDrive;
    map['sr_rear_axle'] = _srRearAxle;
    map['sr_chassis'] = _srChassis;
    map['equipment_id'] = _equipmentId;
    map['eq_sr_equip_model'] = _eqSrEquipModel;
    map['badge_no'] = _badgeNo;
    map['ser_eng_name'] = _serEngName;
    map['sr_designaion'] = _srDesignaion;
    map['sr_regional_office'] = _srRegionalOffice;
    map['dist_off_or_act_cen'] = _distOffOrActCen;
    map['tck_det_purpose'] = _tckDetPurpose;
    map['td_symptoms'] = _tdSymptoms;
    map['sad_det_of_subasmb'] = _sadDetOfSubasmb;
    map['manual_equ_ser'] = _manualEquSer;
    map['war_claim_dte'] = _warClaimDte;
    map['sr_final_drive_wt'] = _srFinalDriveWt;
    map['sr_engine_wt'] = _srEngineWt;
    map['sr_transmission_wt'] = _srTransmissionWt;
    map['sr_rear_axle_wt'] = _srRearAxleWt;
    map['sr_chassis_wt'] = _srChassisWt;
    map['ticket_id_Label'] = _ticketIdLabel;
    map['func_loc_id_Label'] = func_loc_id_Label;
    map['equipment_id_Label'] = equipment_id_Label;
    map['equip_id_da_sr_Label'] = equip_id_da_sr_display;
    map['equip_id_da_sr'] = equip_id_da_sr;
    map['account_id_Label'] = account_id_Label;
    if (_imagename != null) {
      map['imagename'] = _imagename?.map((v) => v.toJson()).toList();
    }
    if (_modelAggregates != null) {
      map['modelAggregates'] =
          _modelAggregates?.map((v) => v.toJson()).toList();
    }
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

/// aggregate : "Engine"
/// aggregateManufacture : ["BEML","OTHERS","ASHOK LEYLAND","CUMMINS","KIRLOSKAR","MAHINDRA","MTU","DEUTZ"]

ModelAggregates modelAggregatesFromJson(String str) =>
    ModelAggregates.fromJson(json.decode(str));
String modelAggregatesToJson(ModelAggregates data) =>
    json.encode(data.toJson());

class ModelAggregates {
  ModelAggregates({
    String? aggregate,
    List<String>? aggregateManufacture,
  }) {
    _aggregate = aggregate;
    _aggregateManufacture = aggregateManufacture;
  }

  ModelAggregates.fromJson(dynamic json) {
    _aggregate = json['aggregate'];
    _aggregateManufacture = json['aggregateManufacture'] != null
        ? json['aggregateManufacture'].cast<String>()
        : [];
  }
  String? _aggregate;
  List<String>? _aggregateManufacture;

  String? get aggregate => _aggregate;
  List<String>? get aggregateManufacture => _aggregateManufacture;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['aggregate'] = _aggregate;
    map['aggregateManufacture'] = _aggregateManufacture;
    return map;
  }
}
