import 'dart:convert';

GeneralInspectionServiceReportModel generalInspectionServiceReportModelFromJson(
        String str) =>
    GeneralInspectionServiceReportModel.fromJson(json.decode(str));
String generalInspectionServiceReportModelToJson(
        GeneralInspectionServiceReportModel data) =>
    json.encode(data.toJson());

class GeneralInspectionServiceReportModel {
  GeneralInspectionServiceReportModel({
    List<LineItems>? lineItems,
    dynamic equipmentId,
    String? eqStaAftActTaken,
    String? failDeSapNotiType,
    String? srTicketType,
    String? srWarStatus,
    String? assignedUserId,
    dynamic hdnGrandTotal,
    dynamic hdnTaxType,
    dynamic hdnSubTotal,
    dynamic currencyId,
    dynamic conversionRate,
    dynamic preTaxTotal,
    dynamic source,
    dynamic creditnoteNo,
    String? srHmr,
    String? dteOfCommissing,
    String? warrantyEndDte,
    String? ticketDate,
    String? oppName,
    String? phone,
    String? reportedBy,
    String? accountId,
    String? funcLocId,
    String? areaName,
    String? ticketId,
    dynamic srActionOne,
    String? srEquipStatus,
    String? engSlNo,
    String? transSlNo,
    String? motorSlNo,
    String? hmr,
    String? kilometerReading,
    String? kiloDate,
    String? projectName,
    String? typeOfConrt,
    String? contStartDate,
    String? contEndDate,
    String? runYearCont,
    String? srEqWarrantyTerms,
    dynamic genchkEngine,
    dynamic genchkOilPressure,
    dynamic genchkOilTemperature,
    dynamic genchkCoolantTemperature,
    dynamic genchkTransmission,
    dynamic genchkBrake,
    dynamic genchkAirPressure,
    dynamic genchkElectrical,
    dynamic genchkMotor,
    dynamic genchkTransformer,
    dynamic genchkFieldSwitch,
    dynamic genchkAutoElectricalSystem,
    dynamic genchkBatteryVoltage,
    dynamic genchkHydraulic,
    dynamic genchkCylinders,
    dynamic genchkSuspension,
    dynamic genchkPumps,
    dynamic genchkOilCooler,
    dynamic genchkStructure,
    dynamic genchkAutoLubrication,
    dynamic genchkAirConditionn,
    dynamic genchkAutoFireProtection,
    dynamic visChkExternalDamages,
    dynamic visChkHydraulicAirLeakages,
    dynamic visChkLubrication,
    dynamic visChkOilLevels,
    dynamic genchkHiVoltEleSystem,
    dynamic visChkWorkLoseingHders,
    String? eqSrEquipModel,
    String? badgeNo,
    dynamic serEngName,
    String? srDesignaion,
    String? srRegionalOffice,
    String? distOffOrActCen,
    dynamic imagename,
    dynamic visChkExtDam,
    dynamic visChkHydAir,
    dynamic visChkWrkLos,
    dynamic visChkLubRem,
    dynamic visChkOilRem,
    dynamic visChkExtDamImg,
    dynamic visHydAirDamImg,
    dynamic visHydWrkLosImg,
    dynamic visLubLosImg,
    dynamic visOilLevImg,
    String? actionTakenBlock,
    String? tckDetPurpose,
    String? actionTakenBlockSeo,
  }) {
    _lineItems = lineItems;
    _equipmentId = equipmentId;
    _eqStaAftActTaken = eqStaAftActTaken;
    _failDeSapNotiType = failDeSapNotiType;
    _srTicketType = srTicketType;
    _srWarStatus = srWarStatus;
    _assignedUserId = assignedUserId;
    _hdnGrandTotal = hdnGrandTotal;
    _hdnTaxType = hdnTaxType;
    _hdnSubTotal = hdnSubTotal;
    _currencyId = currencyId;
    _conversionRate = conversionRate;
    _preTaxTotal = preTaxTotal;
    _source = source;
    _creditnoteNo = creditnoteNo;
    _srHmr = srHmr;
    _dteOfCommissing = dteOfCommissing;
    _warrantyEndDte = warrantyEndDte;
    _ticketDate = ticketDate;
    _oppName = oppName;
    _phone = phone;
    _reportedBy = reportedBy;
    _accountId = accountId;
    _funcLocId = funcLocId;
    _areaName = areaName;
    _ticketId = ticketId;
    _srActionOne = srActionOne;
    _srEquipStatus = srEquipStatus;
    _engSlNo = engSlNo;
    _transSlNo = transSlNo;
    _motorSlNo = motorSlNo;
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

    _tckDetPurpose = tckDetPurpose;
    _actionTakenBlockSeo = actionTakenBlockSeo;
  }

  set lineItems(List<LineItems>? value) {
    _lineItems = value;
  }

  GeneralInspectionServiceReportModel.fromJson(dynamic json) {
    if (json['LineItems'] != null) {
      _lineItems = [];
      json['LineItems'].forEach((v) {
        _lineItems?.add(LineItems.fromJson(v));
      });
    }
    _eqStaAftActTaken = json['eq_sta_aft_act_taken'];
    _equipmentId = json['equipment_id'];
    _failDeSapNotiType = json['fail_de_sap_noti_type'];
    _srTicketType = json['sr_ticket_type'];
    _srWarStatus = json['sr_war_status '];
    _assignedUserId = json['assigned_user_id'];
    _hdnGrandTotal = json['hdnGrandTotal'];
    _hdnTaxType = json['hdnTaxType'];
    _hdnSubTotal = json['hdnSubTotal'];
    _currencyId = json['currency_id'];
    _conversionRate = json['conversion_rate'];
    _preTaxTotal = json['pre_tax_total'];
    _source = json['source'];
    _creditnoteNo = json['creditnote_no'];
    _srHmr = json['sr_hmr'];
    _dteOfCommissing = json['dte_of_commissing'];
    _warrantyEndDte = json['warranty_end_dte'];
    _ticketDate = json['ticket_date'];
    _oppName = json['opp_name'];
    _phone = json['phone'];
    _reportedBy = json['reported_by'];
    _accountId = json['account_id'];
    _funcLocId = json['func_loc_id'];
    _areaName = json['area_name'];
    _ticketId = json['ticket_id'];
    _srActionOne = json['sr_action_one'];
    _srEquipStatus = json['sr_equip_status']; //sr_equip_status
    _engSlNo = json['eng_sl_no'];
    _transSlNo = json['trans_sl_no'];
    _motorSlNo = json['motor_sl_no'];
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

    _tckDetPurpose = json['tck_det_purpose'];
    _actionTakenBlockSeo = json['action_taken_block_seo'];
  }
  List<LineItems>? _lineItems;
  String? _failDeSapNotiType;
  String? _srTicketType;
  String? _srWarStatus;
  String? _assignedUserId;
  dynamic _hdnGrandTotal;
  dynamic _hdnTaxType;
  dynamic _hdnSubTotal;
  dynamic _currencyId;
  dynamic _conversionRate;
  dynamic _preTaxTotal;
  dynamic _source;
  dynamic _creditnoteNo;
  String? _srHmr;
  String? _dteOfCommissing;
  String? _warrantyEndDte;
  String? _ticketDate;
  String? _oppName;
  String? _phone;
  String? _reportedBy;
  String? _accountId;
  String? _funcLocId;
  String? _areaName;
  String? _ticketId;
  dynamic _srActionOne;
  String? _srEquipStatus;
  String? _engSlNo;
  String? _transSlNo;
  String? _motorSlNo;
  String? _hmr;
  String? _kilometerReading;
  String? _kiloDate;
  String? _projectName;
  String? _typeOfConrt;
  String? _contStartDate;
  String? _contEndDate;
  String? _runYearCont;
  String? _srEqWarrantyTerms;
  dynamic _genchkEngine;
  dynamic _genchkOilPressure;
  dynamic _genchkOilTemperature;
  dynamic _genchkCoolantTemperature;
  dynamic _genchkTransmission;
  dynamic _genchkBrake;
  dynamic _genchkAirPressure;
  dynamic _genchkElectrical;
  dynamic _genchkMotor;
  dynamic _genchkTransformer;
  dynamic _genchkFieldSwitch;
  dynamic _genchkAutoElectricalSystem;
  dynamic _genchkBatteryVoltage;
  dynamic _genchkHydraulic;
  dynamic _genchkCylinders;
  dynamic _genchkSuspension;
  dynamic _genchkPumps;
  dynamic _genchkOilCooler;
  dynamic _genchkStructure;
  dynamic _genchkAutoLubrication;
  dynamic _genchkAirConditionn;
  dynamic _genchkAutoFireProtection;
  dynamic _visChkExternalDamages;
  dynamic _visChkHydraulicAirLeakages;
  dynamic _visChkLubrication;
  dynamic _visChkOilLevels;
  dynamic _genchkHiVoltEleSystem;
  dynamic _visChkWorkLoseingHders;
  dynamic _equipmentId;
  String? _eqSrEquipModel;
  String? _badgeNo;
  dynamic _serEngName;
  String? _srDesignaion;
  String? _srRegionalOffice;
  String? _distOffOrActCen;
  dynamic _imagename;
  dynamic _visChkExtDam;
  dynamic _visChkHydAir;
  dynamic _visChkWrkLos;
  dynamic _visChkLubRem;
  dynamic _visChkOilRem;
  dynamic _visChkExtDamImg;
  dynamic _visHydAirDamImg;
  dynamic _visHydWrkLosImg;
  dynamic _visLubLosImg;
  dynamic _visOilLevImg;
  String? _actionTakenBlock;
  String? _eqStaAftActTaken;
  String? _tckDetPurpose;
  String? _actionTakenBlockSeo;

  List<LineItems>? get lineItems => _lineItems;
  String? get failDeSapNotiType => _failDeSapNotiType;
  String? get srTicketType => _srTicketType;
  String? get srWarStatus => _srWarStatus;
  String? get assignedUserId => _assignedUserId;
  dynamic get hdnGrandTotal => _hdnGrandTotal;
  dynamic get hdnTaxType => _hdnTaxType;
  dynamic get hdnSubTotal => _hdnSubTotal;
  dynamic get currencyId => _currencyId;
  dynamic get conversionRate => _conversionRate;
  dynamic get preTaxTotal => _preTaxTotal;
  dynamic get source => _source;
  dynamic get creditnoteNo => _creditnoteNo;
  String? get srHmr => _srHmr;
  String? get dteOfCommissing => _dteOfCommissing;
  String? get warrantyEndDte => _warrantyEndDte;
  String? get ticketDate => _ticketDate;
  String? get oppName => _oppName;
  String? get phone => _phone;
  String? get reportedBy => _reportedBy;
  String? get accountId => _accountId;
  String? get funcLocId => _funcLocId;
  String? get areaName => _areaName;
  String? get ticketId => _ticketId;
  dynamic get srActionOne => _srActionOne;
  String? get srEquipStatus => _srEquipStatus;
  String? get engSlNo => _engSlNo;
  String? get transSlNo => _transSlNo;
  String? get motorSlNo => _motorSlNo;
  String? get hmr => _hmr;
  String? get kilometerReading => _kilometerReading;
  String? get kiloDate => _kiloDate;
  String? get projectName => _projectName;
  String? get typeOfConrt => _typeOfConrt;
  String? get contStartDate => _contStartDate;
  String? get contEndDate => _contEndDate;
  String? get runYearCont => _runYearCont;
  String? get srEqWarrantyTerms => _srEqWarrantyTerms;
  dynamic get genchkEngine => _genchkEngine;
  dynamic get genchkOilPressure => _genchkOilPressure;
  dynamic get genchkOilTemperature => _genchkOilTemperature;
  dynamic get genchkCoolantTemperature => _genchkCoolantTemperature;
  dynamic get genchkTransmission => _genchkTransmission;
  dynamic get genchkBrake => _genchkBrake;
  dynamic get genchkAirPressure => _genchkAirPressure;
  dynamic get genchkElectrical => _genchkElectrical;
  dynamic get genchkMotor => _genchkMotor;
  dynamic get genchkTransformer => _genchkTransformer;
  dynamic get genchkFieldSwitch => _genchkFieldSwitch;
  dynamic get genchkAutoElectricalSystem => _genchkAutoElectricalSystem;
  dynamic get genchkBatteryVoltage => _genchkBatteryVoltage;
  dynamic get genchkHydraulic => _genchkHydraulic;
  dynamic get genchkCylinders => _genchkCylinders;
  dynamic get genchkSuspension => _genchkSuspension;
  dynamic get genchkPumps => _genchkPumps;
  dynamic get genchkOilCooler => _genchkOilCooler;
  dynamic get genchkStructure => _genchkStructure;
  dynamic get genchkAutoLubrication => _genchkAutoLubrication;
  dynamic get genchkAirConditionn => _genchkAirConditionn;
  dynamic get genchkAutoFireProtection => _genchkAutoFireProtection;
  dynamic get visChkExternalDamages => _visChkExternalDamages;
  dynamic get visChkHydraulicAirLeakages => _visChkHydraulicAirLeakages;
  dynamic get visChkLubrication => _visChkLubrication;
  dynamic get visChkOilLevels => _visChkOilLevels;
  dynamic get genchkHiVoltEleSystem => _genchkHiVoltEleSystem;
  dynamic get visChkWorkLoseingHders => _visChkWorkLoseingHders;
  dynamic get equipmentId => _equipmentId;
  String? get eqSrEquipModel => _eqSrEquipModel;
  String? get badgeNo => _badgeNo;
  dynamic get serEngName => _serEngName;
  String? get srDesignaion => _srDesignaion;
  String? get srRegionalOffice => _srRegionalOffice;
  String? get distOffOrActCen => _distOffOrActCen;
  dynamic get imagename => _imagename;
  dynamic get visChkExtDam => _visChkExtDam;
  dynamic get visChkHydAir => _visChkHydAir;
  dynamic get visChkWrkLos => _visChkWrkLos;
  dynamic get visChkLubRem => _visChkLubRem;
  dynamic get visChkOilRem => _visChkOilRem;
  dynamic get visChkExtDamImg => _visChkExtDamImg;
  dynamic get visHydAirDamImg => _visHydAirDamImg;
  dynamic get visHydWrkLosImg => _visHydWrkLosImg;
  dynamic get visLubLosImg => _visLubLosImg;
  dynamic get visOilLevImg => _visOilLevImg;
  String? get actionTakenBlock => _actionTakenBlock;
  String? get eqStaAftActTaken => _eqStaAftActTaken;
  String? get tckDetPurpose => _tckDetPurpose;
  String? get actionTakenBlockSeo => _actionTakenBlockSeo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_lineItems != null) {
      map['LineItems'] = _lineItems?.map((v) => v.toJson()).toList();
    }
    map['fail_de_sap_noti_type'] = _failDeSapNotiType;
    map['equipment_id'] = _equipmentId;
    map['eq_sta_aft_act_taken'] = _eqStaAftActTaken;
    map['sr_ticket_type'] = _srTicketType;
    map['sr_war_status '] = _srWarStatus;
    map['assigned_user_id'] = _assignedUserId;
    map['hdnGrandTotal'] = _hdnGrandTotal;
    map['hdnTaxType'] = _hdnTaxType;
    map['hdnSubTotal'] = _hdnSubTotal;
    map['currency_id'] = _currencyId;
    map['conversion_rate'] = _conversionRate;
    map['pre_tax_total'] = _preTaxTotal;
    map['source'] = _source;
    map['creditnote_no'] = _creditnoteNo;
    map['sr_hmr'] = _srHmr;
    map['dte_of_commissing'] = _dteOfCommissing;
    map['warranty_end_dte'] = _warrantyEndDte;
    map['ticket_date'] = _ticketDate;
    map['opp_name'] = _oppName;
    map['phone'] = _phone;
    map['reported_by'] = _reportedBy;
    map['account_id'] = _accountId;
    map['func_loc_id'] = _funcLocId;
    map['area_name'] = _areaName;
    map['ticket_id'] = _ticketId;
    map['sr_action_one'] = _srActionOne;
    map['sr_equip_status'] = _srEquipStatus;
    map['eng_sl_no'] = _engSlNo;
    map['trans_sl_no'] = _transSlNo;
    map['motor_sl_no'] = _motorSlNo;
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

    map['tck_det_purpose'] = _tckDetPurpose;
    map['action_taken_block_seo'] = _actionTakenBlockSeo;
    return map;
  }

  set failDeSapNotiType(String? value) {
    _failDeSapNotiType = value;
  }

  set srTicketType(String? value) {
    _srTicketType = value;
  }

  set srWarStatus(String? value) {
    _srWarStatus = value;
  }

  set assignedUserId(String? value) {
    _assignedUserId = value;
  }

  set hdnGrandTotal(dynamic value) {
    _hdnGrandTotal = value;
  }

  set hdnTaxType(dynamic value) {
    _hdnTaxType = value;
  }

  set hdnSubTotal(dynamic value) {
    _hdnSubTotal = value;
  }

  set currencyId(dynamic value) {
    _currencyId = value;
  }

  set conversionRate(dynamic value) {
    _conversionRate = value;
  }

  set preTaxTotal(dynamic value) {
    _preTaxTotal = value;
  }

  set source(dynamic value) {
    _source = value;
  }

  set creditnoteNo(dynamic value) {
    _creditnoteNo = value;
  }

  set srHmr(String? value) {
    _srHmr = value;
  }

  set dteOfCommissing(String? value) {
    _dteOfCommissing = value;
  }

  set warrantyEndDte(String? value) {
    _warrantyEndDte = value;
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

  set ticketId(String? value) {
    _ticketId = value;
  }

  set srActionOne(dynamic value) {
    _srActionOne = value;
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

  set genchkEngine(dynamic value) {
    _genchkEngine = value;
  }

  set genchkOilPressure(dynamic value) {
    _genchkOilPressure = value;
  }

  set genchkOilTemperature(dynamic value) {
    _genchkOilTemperature = value;
  }

  set genchkCoolantTemperature(dynamic value) {
    _genchkCoolantTemperature = value;
  }

  set genchkTransmission(dynamic value) {
    _genchkTransmission = value;
  }

  set genchkBrake(dynamic value) {
    _genchkBrake = value;
  }

  set genchkAirPressure(dynamic value) {
    _genchkAirPressure = value;
  }

  set genchkElectrical(dynamic value) {
    _genchkElectrical = value;
  }

  set genchkMotor(dynamic value) {
    _genchkMotor = value;
  }

  set genchkTransformer(dynamic value) {
    _genchkTransformer = value;
  }

  set genchkFieldSwitch(dynamic value) {
    _genchkFieldSwitch = value;
  }

  set genchkAutoElectricalSystem(dynamic value) {
    _genchkAutoElectricalSystem = value;
  }

  set genchkBatteryVoltage(dynamic value) {
    _genchkBatteryVoltage = value;
  }

  set genchkHydraulic(dynamic value) {
    _genchkHydraulic = value;
  }

  set genchkCylinders(dynamic value) {
    _genchkCylinders = value;
  }

  set genchkSuspension(dynamic value) {
    _genchkSuspension = value;
  }

  set genchkPumps(dynamic value) {
    _genchkPumps = value;
  }

  set genchkOilCooler(dynamic value) {
    _genchkOilCooler = value;
  }

  set genchkStructure(dynamic value) {
    _genchkStructure = value;
  }

  set genchkAutoLubrication(dynamic value) {
    _genchkAutoLubrication = value;
  }

  set genchkAirConditionn(dynamic value) {
    _genchkAirConditionn = value;
  }

  set genchkAutoFireProtection(dynamic value) {
    _genchkAutoFireProtection = value;
  }

  set visChkExternalDamages(dynamic value) {
    _visChkExternalDamages = value;
  }

  set visChkHydraulicAirLeakages(dynamic value) {
    _visChkHydraulicAirLeakages = value;
  }

  set visChkLubrication(dynamic value) {
    _visChkLubrication = value;
  }

  set visChkOilLevels(dynamic value) {
    _visChkOilLevels = value;
  }

  set genchkHiVoltEleSystem(dynamic value) {
    _genchkHiVoltEleSystem = value;
  }

  set visChkWorkLoseingHders(dynamic value) {
    _visChkWorkLoseingHders = value;
  }

  set equipmentId(dynamic value) {
    _equipmentId = value;
  }

  set eqSrEquipModel(String? value) {
    _eqSrEquipModel = value;
  }

  set badgeNo(String? value) {
    _badgeNo = value;
  }

  set serEngName(dynamic value) {
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

  set imagename(dynamic value) {
    _imagename = value;
  }

  set visChkExtDam(dynamic value) {
    _visChkExtDam = value;
  }

  set visChkHydAir(dynamic value) {
    _visChkHydAir = value;
  }

  set visChkWrkLos(dynamic value) {
    _visChkWrkLos = value;
  }

  set visChkLubRem(dynamic value) {
    _visChkLubRem = value;
  }

  set visChkOilRem(dynamic value) {
    _visChkOilRem = value;
  }

  set visChkExtDamImg(dynamic value) {
    _visChkExtDamImg = value;
  }

  set visHydAirDamImg(dynamic value) {
    _visHydAirDamImg = value;
  }

  set visHydWrkLosImg(dynamic value) {
    _visHydWrkLosImg = value;
  }

  set visLubLosImg(dynamic value) {
    _visLubLosImg = value;
  }

  set visOilLevImg(dynamic value) {
    _visOilLevImg = value;
  }

  set actionTakenBlock(String? value) {
    _actionTakenBlock = value;
  }

  set eqStaAftActTaken(String? value) {
    _eqStaAftActTaken = value;
  }

  set tckDetPurpose(String? value) {
    _tckDetPurpose = value;
  }

  set actionTakenBlockSeo(String? value) {
    _actionTakenBlockSeo = value;
  }
}

LineItems lineItemsFromJson(String str) => LineItems.fromJson(json.decode(str));
String lineItemsToJson(LineItems data) => json.encode(data.toJson());

class LineItems {
  LineItems({
    String? productname,
    String? quantity,
    String? productid,
    String? comment,
    String? srActionOne,
  }) {
    _productname = productname;
    _quantity = quantity;
    _productid = productid;
    _comment = comment;
    _srActionOne = srActionOne;
  }

  LineItems.fromJson(dynamic json) {
    _productname = json['productname'];
    _quantity = json['quantity'];
    _productid = json['productid'];
    _comment = json['comment'];
    _srActionOne = json['sr_action_one'];
  }
  String? _productname;
  String? _quantity;
  String? _productid;
  String? _comment;
  String? _srActionOne;

  String? get productname => _productname;
  String? get quantity => _quantity;
  String? get productid => _productid;

  set productname(String? value) {
    _productname = value;
  }

  String? get comment => _comment;
  String? get srActionOne => _srActionOne;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productname'] = _productname;
    map['quantity'] = _quantity;
    map['productid'] = _productid;
    map['comment'] = _comment;
    map['sr_action_one'] = _srActionOne;
    return map;
  }

  set quantity(String? value) {
    _quantity = value;
  }

  set productid(String? value) {
    _productid = value;
  }

  set comment(String? value) {
    _comment = value;
  }

  set srActionOne(String? value) {
    _srActionOne = value;
  }
}
