import 'dart:convert';

// this is preventive maintenance instead of predelivery

PreDeliveryServiceReportModel preDeliveryServiceReportModelFromJson(
        String str) =>
    PreDeliveryServiceReportModel.fromJson(json.decode(str));
String preDeliveryServiceReportModelToJson(
        PreDeliveryServiceReportModel data) =>
    json.encode(data.toJson());

class PreDeliveryServiceReportModel {
  PreDeliveryServiceReportModel({
    List<LineItems>? lineItems,
    String? srHmr,
    String? assignedUserId,
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
    String? genchkEngine,
    String? genchkOilPressure,
    String? genchkOilTemperature,
    String? genchkCoolantTemperature,
    String? genchkTransmission,
    String? genchkBrake,
    String? genchkAirPressure,
    String? genchkElectrical,
    String? genchkMotor,
    String? genchkTransformer,
    String? genchkFieldSwitch,
    String? genchkAutoElectricalSystem,
    String? genchkBatteryVoltage,
    String? genchkHydraulic,
    String? genchkCylinders,
    String? genchkSuspension,
    String? genchkPumps,
    String? genchkOilCooler,
    String? genchkStructure,
    String? genchkAutoLubrication,
    String? genchkAirConditionn,
    String? genchkAutoFireProtection,
    String? visChkExternalDamages,
    String? visChkHydraulicAirLeakages,
    String? visChkLubrication,
    String? visChkOilLevels,
    String? genchkHiVoltEleSystem,
    String? visChkWorkLoseingHders,
    String? failDeSapNotiType,
    String? equipmentId,
    String? eqSrEquipModel,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
    String? srRegionalOffice,
    String? distOffOrActCen,
    String? imagename,
    String? visChkExtDam,
    String? visChkHydAir,
    String? visChkWrkLos,
    String? visChkLubRem,
    String? visChkOilRem,
    String? visChkExtDamImg,
    String? visHydAirDamImg,
    String? visHydWrkLosImg,
    String? visLubLosImg,
    String? visOilLevImg,
    String? actionTakenBlock,
    String? eqStaAftActTaken,
    String? atBrkdnSrReq,
    String? breackTicketId,
  }) {
    _lineItems = lineItems;
    _srHmr = srHmr;
    _assignedUserId = assignedUserId;
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
    _genchkEngine = genchkEngine;
    _genchkOilPressure = genchkOilPressure;
    _genchkOilTemperature = genchkOilTemperature;
    _genchkCoolantTemperature = genchkCoolantTemperature;
    _genchkTransmission = genchkTransmission;
    _genchkBrake = genchkBrake;
    _genchkAirPressure = genchkAirPressure;
    _genchkElectrical = genchkElectrical;
    _genchkMotor = genchkMotor;
    _genchkTransformer = genchkTransformer;
    _genchkFieldSwitch = genchkFieldSwitch;
    _genchkAutoElectricalSystem = genchkAutoElectricalSystem;
    _genchkBatteryVoltage = genchkBatteryVoltage;
    _genchkHydraulic = genchkHydraulic;
    _genchkCylinders = genchkCylinders;
    _genchkSuspension = genchkSuspension;
    _genchkPumps = genchkPumps;
    _genchkOilCooler = genchkOilCooler;
    _genchkStructure = genchkStructure;
    _genchkAutoLubrication = genchkAutoLubrication;
    _genchkAirConditionn = genchkAirConditionn;
    _genchkAutoFireProtection = genchkAutoFireProtection;
    _visChkExternalDamages = visChkExternalDamages;
    _visChkHydraulicAirLeakages = visChkHydraulicAirLeakages;
    _visChkLubrication = visChkLubrication;
    _visChkOilLevels = visChkOilLevels;
    _genchkHiVoltEleSystem = genchkHiVoltEleSystem;
    _visChkWorkLoseingHders = visChkWorkLoseingHders;
    _failDeSapNotiType = failDeSapNotiType;
    _equipmentId = equipmentId;
    _eqSrEquipModel = eqSrEquipModel;
    _badgeNo = badgeNo;
    _serEngName = serEngName;
    _srDesignaion = srDesignaion;
    _srRegionalOffice = srRegionalOffice;
    _distOffOrActCen = distOffOrActCen;
    _imagename = imagename;
    _visChkExtDam = visChkExtDam;
    _visChkHydAir = visChkHydAir;
    _visChkWrkLos = visChkWrkLos;
    _visChkLubRem = visChkLubRem;
    _visChkOilRem = visChkOilRem;
    _visChkExtDamImg = visChkExtDamImg;
    _visHydAirDamImg = visHydAirDamImg;
    _visHydWrkLosImg = visHydWrkLosImg;
    _visLubLosImg = visLubLosImg;
    _visOilLevImg = visOilLevImg;
    _actionTakenBlock = actionTakenBlock;
    _eqStaAftActTaken = eqStaAftActTaken;
    _atBrkdnSrReq = atBrkdnSrReq;
    _breackTicketId = breackTicketId;
  }

  set lineItems(List<LineItems>? value) {
    _lineItems = value;
  }

  PreDeliveryServiceReportModel.fromJson(dynamic json) {
    if (json['LineItems'] != null) {
      _lineItems = [];
      json['LineItems'].forEach((v) {
        _lineItems?.add(LineItems.fromJson(v));
      });
    }
    _srHmr = json['sr_hmr'];
    _assignedUserId = json['assigned_user_id'];
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
    _genchkEngine = json['genchk_engine'];
    _genchkOilPressure = json['genchk_oil_pressure'];
    _genchkOilTemperature = json['genchk_oil_temperature'];
    _genchkCoolantTemperature = json['genchk_coolant_temperature'];
    _genchkTransmission = json['genchk_transmission'];
    _genchkBrake = json['genchk_brake'];
    _genchkAirPressure = json['genchk_air_pressure'];
    _genchkElectrical = json['genchk_electrical'];
    _genchkMotor = json['genchk_motor'];
    _genchkTransformer = json['genchk_transformer'];
    _genchkFieldSwitch = json['genchk_field_switch'];
    _genchkAutoElectricalSystem = json['genchk_auto_electrical_system'];
    _genchkBatteryVoltage = json['genchk_battery_voltage'];
    _genchkHydraulic = json['genchk_hydraulic'];
    _genchkCylinders = json['genchk_cylinders'];
    _genchkSuspension = json['genchk_suspension'];
    _genchkPumps = json['genchk_pumps'];
    _genchkOilCooler = json['genchk_oil_cooler'];
    _genchkStructure = json['genchk_structure'];
    _genchkAutoLubrication = json['genchk_auto_lubrication'];
    _genchkAirConditionn = json['genchk_air_conditionn'];
    _genchkAutoFireProtection = json['genchk_auto_fire_protection'];
    _visChkExternalDamages = json['vis_chk_external_damages'];
    _visChkHydraulicAirLeakages = json['vis_chk_hydraulic_air_leakages'];
    _visChkLubrication = json['vis_chk_lubrication'];
    _visChkOilLevels = json['vis_chk_oil_levels'];
    _genchkHiVoltEleSystem = json['genchk_hi_volt_ele_system'];
    _visChkWorkLoseingHders = json['vis_chk_work_loseing_hders'];
    _failDeSapNotiType = json['fail_de_sap_noti_type'];
    _equipmentId = json['equipment_id'];
    _eqSrEquipModel = json['eq_sr_equip_model'];
    _badgeNo = json['badge_no'];
    _serEngName = json['ser_eng_name'];
    _srDesignaion = json['sr_designaion'];
    _srRegionalOffice = json['sr_regional_office'];
    _distOffOrActCen = json['dist_off_or_act_cen'];
    _imagename = json['imagename'];
    _visChkExtDam = json['vis_chk_ext_dam'];
    _visChkHydAir = json['vis_chk_hyd_air'];
    _visChkWrkLos = json['vis_chk_wrk_los'];
    _visChkLubRem = json['vis_chk_lub_rem'];
    _visChkOilRem = json['vis_chk_oil_rem'];
    _visChkExtDamImg = json['vis_chk_ext_dam_img'];
    _visHydAirDamImg = json['vis_hyd_air_dam_img'];
    _visHydWrkLosImg = json['vis_hyd_wrk_los_img'];
    _visLubLosImg = json['vis_lub_los_img'];
    _visOilLevImg = json['vis_oil_lev_img'];
    _actionTakenBlock = json['action_taken_block'];
    _eqStaAftActTaken = json['eq_sta_aft_act_taken'];
    _atBrkdnSrReq = json['at_brkdn_sr_req'];
    _breackTicketId = json['breack_ticket_id'];
  }
  List<LineItems>? _lineItems;
  String? _srHmr;
  String? _assignedUserId;
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
  String? _genchkEngine;
  String? _genchkOilPressure;
  String? _genchkOilTemperature;
  String? _genchkCoolantTemperature;
  String? _genchkTransmission;
  String? _genchkBrake;
  String? _genchkAirPressure;
  String? _genchkElectrical;
  String? _genchkMotor;
  String? _genchkTransformer;
  String? _genchkFieldSwitch;
  String? _genchkAutoElectricalSystem;
  String? _genchkBatteryVoltage;
  String? _genchkHydraulic;
  String? _genchkCylinders;
  String? _genchkSuspension;
  String? _genchkPumps;
  String? _genchkOilCooler;
  String? _genchkStructure;
  String? _genchkAutoLubrication;
  String? _genchkAirConditionn;
  String? _genchkAutoFireProtection;
  String? _visChkExternalDamages;
  String? _visChkHydraulicAirLeakages;
  String? _visChkLubrication;
  String? _visChkOilLevels;
  String? _genchkHiVoltEleSystem;
  String? _visChkWorkLoseingHders;
  String? _failDeSapNotiType;
  String? _equipmentId;
  String? _eqSrEquipModel;
  String? _badgeNo;
  String? _serEngName;
  String? _srDesignaion;
  String? _srRegionalOffice;
  String? _distOffOrActCen;
  String? _imagename;
  String? _visChkExtDam;
  String? _visChkHydAir;
  String? _visChkWrkLos;
  String? _visChkLubRem;
  String? _visChkOilRem;
  String? _visChkExtDamImg;
  String? _visHydAirDamImg;
  String? _visHydWrkLosImg;
  String? _visLubLosImg;
  String? _visOilLevImg;
  String? _actionTakenBlock;
  String? _eqStaAftActTaken;
  String? _atBrkdnSrReq;
  String? _breackTicketId;

  List<LineItems>? get lineItems => _lineItems;
  String? get srHmr => _srHmr;
  String? get assignedUserId => _assignedUserId;
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
  String? get genchkEngine => _genchkEngine;
  String? get genchkOilPressure => _genchkOilPressure;
  String? get genchkOilTemperature => _genchkOilTemperature;
  String? get genchkCoolantTemperature => _genchkCoolantTemperature;
  String? get genchkTransmission => _genchkTransmission;
  String? get genchkBrake => _genchkBrake;
  String? get genchkAirPressure => _genchkAirPressure;
  String? get genchkElectrical => _genchkElectrical;
  String? get genchkMotor => _genchkMotor;
  String? get genchkTransformer => _genchkTransformer;
  String? get genchkFieldSwitch => _genchkFieldSwitch;
  String? get genchkAutoElectricalSystem => _genchkAutoElectricalSystem;
  String? get genchkBatteryVoltage => _genchkBatteryVoltage;
  String? get genchkHydraulic => _genchkHydraulic;
  String? get genchkCylinders => _genchkCylinders;
  String? get genchkSuspension => _genchkSuspension;
  String? get genchkPumps => _genchkPumps;
  String? get genchkOilCooler => _genchkOilCooler;
  String? get genchkStructure => _genchkStructure;
  String? get genchkAutoLubrication => _genchkAutoLubrication;
  String? get genchkAirConditionn => _genchkAirConditionn;
  String? get genchkAutoFireProtection => _genchkAutoFireProtection;
  String? get visChkExternalDamages => _visChkExternalDamages;
  String? get visChkHydraulicAirLeakages => _visChkHydraulicAirLeakages;
  String? get visChkLubrication => _visChkLubrication;
  String? get visChkOilLevels => _visChkOilLevels;
  String? get genchkHiVoltEleSystem => _genchkHiVoltEleSystem;
  String? get visChkWorkLoseingHders => _visChkWorkLoseingHders;
  String? get failDeSapNotiType => _failDeSapNotiType;
  String? get equipmentId => _equipmentId;
  String? get eqSrEquipModel => _eqSrEquipModel;
  String? get badgeNo => _badgeNo;
  String? get serEngName => _serEngName;
  String? get srDesignaion => _srDesignaion;
  String? get srRegionalOffice => _srRegionalOffice;
  String? get distOffOrActCen => _distOffOrActCen;
  String? get imagename => _imagename;
  String? get visChkExtDam => _visChkExtDam;
  String? get visChkHydAir => _visChkHydAir;
  String? get visChkWrkLos => _visChkWrkLos;
  String? get visChkLubRem => _visChkLubRem;
  String? get visChkOilRem => _visChkOilRem;
  String? get visChkExtDamImg => _visChkExtDamImg;
  String? get visHydAirDamImg => _visHydAirDamImg;
  String? get visHydWrkLosImg => _visHydWrkLosImg;
  String? get visLubLosImg => _visLubLosImg;
  String? get visOilLevImg => _visOilLevImg;
  String? get actionTakenBlock => _actionTakenBlock;
  String? get eqStaAftActTaken => _eqStaAftActTaken;
  String? get atBrkdnSrReq => _atBrkdnSrReq;
  String? get breackTicketId => _breackTicketId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_lineItems != null) {
      map['LineItems'] = _lineItems?.map((v) => v.toJson()).toList();
    }
    map['sr_hmr'] = _srHmr;
    map['assigned_user_id'] = _assignedUserId;
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
    map['genchk_engine'] = _genchkEngine;
    map['genchk_oil_pressure'] = _genchkOilPressure;
    map['genchk_oil_temperature'] = _genchkOilTemperature;
    map['genchk_coolant_temperature'] = _genchkCoolantTemperature;
    map['genchk_transmission'] = _genchkTransmission;
    map['genchk_brake'] = _genchkBrake;
    map['genchk_air_pressure'] = _genchkAirPressure;
    map['genchk_electrical'] = _genchkElectrical;
    map['genchk_motor'] = _genchkMotor;
    map['genchk_transformer'] = _genchkTransformer;
    map['genchk_field_switch'] = _genchkFieldSwitch;
    map['genchk_auto_electrical_system'] = _genchkAutoElectricalSystem;
    map['genchk_battery_voltage'] = _genchkBatteryVoltage;
    map['genchk_hydraulic'] = _genchkHydraulic;
    map['genchk_cylinders'] = _genchkCylinders;
    map['genchk_suspension'] = _genchkSuspension;
    map['genchk_pumps'] = _genchkPumps;
    map['genchk_oil_cooler'] = _genchkOilCooler;
    map['genchk_structure'] = _genchkStructure;
    map['genchk_auto_lubrication'] = _genchkAutoLubrication;
    map['genchk_air_conditionn'] = _genchkAirConditionn;
    map['genchk_auto_fire_protection'] = _genchkAutoFireProtection;
    map['vis_chk_external_damages'] = _visChkExternalDamages;
    map['vis_chk_hydraulic_air_leakages'] = _visChkHydraulicAirLeakages;
    map['vis_chk_lubrication'] = _visChkLubrication;
    map['vis_chk_oil_levels'] = _visChkOilLevels;
    map['genchk_hi_volt_ele_system'] = _genchkHiVoltEleSystem;
    map['vis_chk_work_loseing_hders'] = _visChkWorkLoseingHders;
    map['fail_de_sap_noti_type'] = _failDeSapNotiType;
    map['equipment_id'] = _equipmentId;
    map['eq_sr_equip_model'] = _eqSrEquipModel;
    map['badge_no'] = _badgeNo;
    map['ser_eng_name'] = _serEngName;
    map['sr_designaion'] = _srDesignaion;
    map['sr_regional_office'] = _srRegionalOffice;
    map['dist_off_or_act_cen'] = _distOffOrActCen;
    map['imagename'] = _imagename;
    map['vis_chk_ext_dam'] = _visChkExtDam;
    map['vis_chk_hyd_air'] = _visChkHydAir;
    map['vis_chk_wrk_los'] = _visChkWrkLos;
    map['vis_chk_lub_rem'] = _visChkLubRem;
    map['vis_chk_oil_rem'] = _visChkOilRem;
    map['vis_chk_ext_dam_img'] = _visChkExtDamImg;
    map['vis_hyd_air_dam_img'] = _visHydAirDamImg;
    map['vis_hyd_wrk_los_img'] = _visHydWrkLosImg;
    map['vis_lub_los_img'] = _visLubLosImg;
    map['vis_oil_lev_img'] = _visOilLevImg;
    map['action_taken_block'] = _actionTakenBlock;
    map['eq_sta_aft_act_taken'] = _eqStaAftActTaken;
    map['at_brkdn_sr_req'] = _atBrkdnSrReq;
    map['breack_ticket_id'] = _breackTicketId;
    return map;
  }

  set srHmr(String? value) {
    _srHmr = value;
  }

  set assignedUserId(String? value) {
    _assignedUserId = value;
  }

  set dteOfCommissing(String? value) {
    _dteOfCommissing = value;
  }

  set warrantyEndDte(String? value) {
    _warrantyEndDte = value;
  }

  set srWarStatus(String? value) {
    _srWarStatus = value;
  }

  set ticketDate(String? value) {
    _ticketDate = value;
  }

  set oppName(String? value) {
    _oppName = value;
  }

  set phone(String? value) {
    _phone = value;
  }

  set reportedBy(String? value) {
    _reportedBy = value;
  }

  set accountId(String? value) {
    _accountId = value;
  }

  set funcLocId(String? value) {
    _funcLocId = value;
  }

  set areaName(String? value) {
    _areaName = value;
  }

  set srTicketType(String? value) {
    _srTicketType = value;
  }

  set ticketId(String? value) {
    _ticketId = value;
  }

  set srEquipStatus(String? value) {
    _srEquipStatus = value;
  }

  set engSlNo(String? value) {
    _engSlNo = value;
  }

  set transSlNo(String? value) {
    _transSlNo = value;
  }

  set motorSlNo(String? value) {
    _motorSlNo = value;
  }

  set dateOfFailure(String? value) {
    _dateOfFailure = value;
  }

  set hmr(String? value) {
    _hmr = value;
  }

  set kilometerReading(String? value) {
    _kilometerReading = value;
  }

  set kiloDate(String? value) {
    _kiloDate = value;
  }

  set projectName(String? value) {
    _projectName = value;
  }

  set typeOfConrt(String? value) {
    _typeOfConrt = value;
  }

  set contStartDate(String? value) {
    _contStartDate = value;
  }

  set contEndDate(String? value) {
    _contEndDate = value;
  }

  set runYearCont(String? value) {
    _runYearCont = value;
  }

  set srEqWarrantyTerms(String? value) {
    _srEqWarrantyTerms = value;
  }

  set genchkEngine(String? value) {
    _genchkEngine = value;
  }

  set genchkOilPressure(String? value) {
    _genchkOilPressure = value;
  }

  set genchkOilTemperature(String? value) {
    _genchkOilTemperature = value;
  }

  set genchkCoolantTemperature(String? value) {
    _genchkCoolantTemperature = value;
  }

  set genchkTransmission(String? value) {
    _genchkTransmission = value;
  }

  set genchkBrake(String? value) {
    _genchkBrake = value;
  }

  set genchkAirPressure(String? value) {
    _genchkAirPressure = value;
  }

  set genchkElectrical(String? value) {
    _genchkElectrical = value;
  }

  set genchkMotor(String? value) {
    _genchkMotor = value;
  }

  set genchkTransformer(String? value) {
    _genchkTransformer = value;
  }

  set genchkFieldSwitch(String? value) {
    _genchkFieldSwitch = value;
  }

  set genchkAutoElectricalSystem(String? value) {
    _genchkAutoElectricalSystem = value;
  }

  set genchkBatteryVoltage(String? value) {
    _genchkBatteryVoltage = value;
  }

  set genchkHydraulic(String? value) {
    _genchkHydraulic = value;
  }

  set genchkCylinders(String? value) {
    _genchkCylinders = value;
  }

  set genchkSuspension(String? value) {
    _genchkSuspension = value;
  }

  set genchkPumps(String? value) {
    _genchkPumps = value;
  }

  set genchkOilCooler(String? value) {
    _genchkOilCooler = value;
  }

  set genchkStructure(String? value) {
    _genchkStructure = value;
  }

  set genchkAutoLubrication(String? value) {
    _genchkAutoLubrication = value;
  }

  set genchkAirConditionn(String? value) {
    _genchkAirConditionn = value;
  }

  set genchkAutoFireProtection(String? value) {
    _genchkAutoFireProtection = value;
  }

  set visChkExternalDamages(String? value) {
    _visChkExternalDamages = value;
  }

  set visChkHydraulicAirLeakages(String? value) {
    _visChkHydraulicAirLeakages = value;
  }

  set visChkLubrication(String? value) {
    _visChkLubrication = value;
  }

  set visChkOilLevels(String? value) {
    _visChkOilLevels = value;
  }

  set genchkHiVoltEleSystem(String? value) {
    _genchkHiVoltEleSystem = value;
  }

  set visChkWorkLoseingHders(String? value) {
    _visChkWorkLoseingHders = value;
  }

  set failDeSapNotiType(String? value) {
    _failDeSapNotiType = value;
  }

  set equipmentId(String? value) {
    _equipmentId = value;
  }

  set eqSrEquipModel(String? value) {
    _eqSrEquipModel = value;
  }

  set badgeNo(String? value) {
    _badgeNo = value;
  }

  set serEngName(String? value) {
    _serEngName = value;
  }

  set srDesignaion(String? value) {
    _srDesignaion = value;
  }

  set srRegionalOffice(String? value) {
    _srRegionalOffice = value;
  }

  set distOffOrActCen(String? value) {
    _distOffOrActCen = value;
  }

  set imagename(String? value) {
    _imagename = value;
  }

  set visChkExtDam(String? value) {
    _visChkExtDam = value;
  }

  set visChkHydAir(String? value) {
    _visChkHydAir = value;
  }

  set visChkWrkLos(String? value) {
    _visChkWrkLos = value;
  }

  set visChkLubRem(String? value) {
    _visChkLubRem = value;
  }

  set visChkOilRem(String? value) {
    _visChkOilRem = value;
  }

  set visChkExtDamImg(String? value) {
    _visChkExtDamImg = value;
  }

  set visHydAirDamImg(String? value) {
    _visHydAirDamImg = value;
  }

  set visHydWrkLosImg(String? value) {
    _visHydWrkLosImg = value;
  }

  set visLubLosImg(String? value) {
    _visLubLosImg = value;
  }

  set visOilLevImg(String? value) {
    _visOilLevImg = value;
  }

  set actionTakenBlock(String? value) {
    _actionTakenBlock = value;
  }

  set eqStaAftActTaken(String? value) {
    _eqStaAftActTaken = value;
  }

  set atBrkdnSrReq(String? value) {
    _atBrkdnSrReq = value;
  }

  set breackTicketId(String? value) {
    _breackTicketId = value;
  }
}

LineItems lineItemsFromJson(String str) => LineItems.fromJson(json.decode(str));
String lineItemsToJson(LineItems data) => json.encode(data.toJson());

class LineItems {
  LineItems({
    String? productname,
    int? quantity,
    int? productid,
    String? comment,
    String? srActionOne,
    String? srActionTwo,
    String? srReplaceAction,
  }) {
    _productname = productname;
    _quantity = quantity;
    _productid = productid;
    _comment = comment;
    _srActionOne = srActionOne;
    _srActionTwo = srActionTwo;
    _srReplaceAction = srReplaceAction;
  }

  LineItems.fromJson(dynamic json) {
    _productname = json['productname'];
    _quantity = json['quantity'];
    _productid = json['productid'];
    _comment = json['comment'];
    _srActionOne = json['sr_action_one'];
    _srActionTwo = json['sr_action_two'];
    _srReplaceAction = json['sr_replace_action'];
  }

  set productname(String? value) {
    _productname = value;
  }

  String? _productname;
  int? _quantity;
  int? _productid;
  String? _comment;
  String? _srActionOne;
  String? _srActionTwo;
  String? _srReplaceAction;

  String? get productname => _productname;
  int? get quantity => _quantity;
  int? get productid => _productid;
  String? get comment => _comment;
  String? get srActionOne => _srActionOne;
  String? get srActionTwo => _srActionTwo;
  String? get srReplaceAction => _srReplaceAction;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productname'] = _productname;
    map['quantity'] = _quantity;
    map['productid'] = _productid;
    map['comment'] = _comment;
    map['sr_action_one'] = _srActionOne;
    map['sr_action_two'] = _srActionTwo;
    map['sr_replace_action'] = _srReplaceAction;
    return map;
  }

  set quantity(int? value) {
    _quantity = value;
  }

  set productid(int? value) {
    _productid = value;
  }

  set comment(String? value) {
    _comment = value;
  }

  set srActionOne(String? value) {
    _srActionOne = value;
  }

  set srActionTwo(String? value) {
    _srActionTwo = value;
  }

  set srReplaceAction(String? value) {
    _srReplaceAction = value;
  }
}
