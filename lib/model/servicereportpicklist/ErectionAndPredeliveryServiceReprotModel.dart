import 'dart:convert';

ErectionAndPredeliveryServiceReprotModel
    erectionAndPredeliveryServiceReprotModelFromJson(String str) =>
        ErectionAndPredeliveryServiceReprotModel.fromJson(json.decode(str));
String erectionAndPredeliveryServiceReprotModelToJson(
        ErectionAndPredeliveryServiceReprotModel data) =>
    json.encode(data.toJson());

class ErectionAndPredeliveryServiceReprotModel {
  ErectionAndPredeliveryServiceReprotModel({
    List<LineItems>? lineItems,
    List<LineItemsOther>? lineItemsOther,
    String? assignedUserId,
    String? srSystemAffected,
    String? srHmr,
    String? dteOfCommissing,
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
    String? hmr,
    String? kilometerReading,
    String? kiloDate,
    String? projectName,
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
    String? failDeFailureOnAccountOf,
    String? failDePartPertainsTo,
    String? fdAgWarAvl,
    String? fdObvservation,
    String? failDeSapNotiType,
    String? failDeFailureInvestigation,
    String? fdSubDiv,
    String? vendorId,
    String? fdSerId,
    String? equipmentId,
    String? eqSrEquipModel,
    String? fdEqStaBsr,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
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
    String? failDeTypeOfDamage,
    String? failDeSystemAffected,
    String? failDePartsAffected,
    String? tckDetPurpose,
    String? tdSymptoms,
    String? lidRemarks,
    String? chassisSlNo,
    String? chassisManufacturer,
    String? engineLhRhSlNo,
    String? engineLhRhMfd,
    String? transmissionSlNo,
    String? transmissionManufacturer,
    String? sadLineStatus,
    String? sadLineEvent,
    String? sadLineDnsoc,
    String? rearAxleSlNo,
    String? rearAxleManufacturer,
    String? tandemAssemblySlNo,
    String? tandemAssemblyManufacturer,
    String? rhFinalDriveSlNo,
    String? rhFinalDriveManu,
    String? frontAxleManu,
    String? lhFinalDriveSlNo,
    String? lhFinalDriveManufacturer,
    String? inductionMotorSlNo,
    String? inductionMotorManuf,
    String? trackDriveSlNo,
    String? trackDriveManuf,
    String? ecdCanBeCom,
    String? frontAxleManufact,
    String? equip_id_da_sr,
  }) {
    _lineItems = lineItems;
    _lineItemsOther = lineItemsOther;
    _assignedUserId = assignedUserId;
    _srSystemAffected = srSystemAffected;
    _srHmr = srHmr;
    _dteOfCommissing = dteOfCommissing;
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
    _hmr = hmr;
    _kilometerReading = kilometerReading;
    _kiloDate = kiloDate;
    _projectName = projectName;
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
    _failDeFailureOnAccountOf = failDeFailureOnAccountOf;
    _failDePartPertainsTo = failDePartPertainsTo;
    _fdAgWarAvl = fdAgWarAvl;
    _fdObvservation = fdObvservation;
    _failDeSapNotiType = failDeSapNotiType;
    _failDeFailureInvestigation = failDeFailureInvestigation;
    _fdSubDiv = fdSubDiv;
    _vendorId = vendorId;
    _fdSerId = fdSerId;
    _equipmentId = equipmentId;
    _eqSrEquipModel = eqSrEquipModel;
    _fdEqStaBsr = fdEqStaBsr;
    _badgeNo = badgeNo;
    _serEngName = serEngName;
    _srDesignaion = srDesignaion;
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
    _failDeTypeOfDamage = failDeTypeOfDamage;
    _failDeSystemAffected = failDeSystemAffected;
    _failDePartsAffected = failDePartsAffected;
    _tckDetPurpose = tckDetPurpose;
    _tdSymptoms = tdSymptoms;
    _lidRemarks = lidRemarks;
    _chassisSlNo = chassisSlNo;
    _chassisManufacturer = chassisManufacturer;
    _engineLhRhSlNo = engineLhRhSlNo;
    _engineLhRhMfd = engineLhRhMfd;
    _transmissionSlNo = transmissionSlNo;
    _transmissionManufacturer = transmissionManufacturer;
    _sadLineStatus = sadLineStatus;
    _sadLineEvent = sadLineEvent;
    _sadLineDnsoc = sadLineDnsoc;
    _rearAxleSlNo = rearAxleSlNo;
    _rearAxleManufacturer = rearAxleManufacturer;
    _tandemAssemblySlNo = tandemAssemblySlNo;
    _tandemAssemblyManufacturer = tandemAssemblyManufacturer;
    _rhFinalDriveSlNo = rhFinalDriveSlNo;
    _rhFinalDriveManu = rhFinalDriveManu;
    _frontAxleManu = frontAxleManu;
    _lhFinalDriveSlNo = lhFinalDriveSlNo;
    _lhFinalDriveManufacturer = lhFinalDriveManufacturer;
    _inductionMotorSlNo = inductionMotorSlNo;
    _inductionMotorManuf = inductionMotorManuf;
    _trackDriveSlNo = trackDriveSlNo;
    _trackDriveManuf = trackDriveManuf;
    _ecdCanBeCom = ecdCanBeCom;
    _frontAxleManufact = frontAxleManufact;
    equip_id_da_sr = equip_id_da_sr;
  }

  ErectionAndPredeliveryServiceReprotModel.fromJson(dynamic json) {
    if (json['LineItems'] != null) {
      _lineItems = [];
      json['LineItems'].forEach((v) {
        _lineItems?.add(LineItems.fromJson(v));
      });
    }

    if (json['LineItemsOther'] != null) {
      _lineItemsOther = [];
      json['LineItemsOther'].forEach((v) {
        _lineItemsOther?.add(LineItemsOther.fromJson(v));
      });
    }

    _equipmentId = json['equipment_id'];

    _srEquipStatus = json['sr_equip_status'];
    _assignedUserId = json['assigned_user_id'];
    _srSystemAffected = json['sr_system_affected'];
    _srHmr = json['sr_hmr'];
    _dteOfCommissing = json['dte_of_commissing'];
    _ticketDate = json['ticket_date'];
    _oppName = json['opp_name'];
    _phone = json['phone'];
    _reportedBy = json['reported_by'];
    _accountId = json['account_id'];
    _funcLocId = json['func_loc_id'];
    _areaName = json['area_name'];
    _srTicketType = json['sr_ticket_type'];
    _ticketId = json['ticket_id'];
    _engSlNo = json['eng_sl_no'];
    _transSlNo = json['trans_sl_no'];
    _motorSlNo = json['motor_sl_no'];
    _hmr = json['hmr'];
    _kilometerReading = json['kilometer_reading'];
    _kiloDate = json['kilo_date'];
    _projectName = json['project_name'];
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
    _failDeFailureOnAccountOf = json['fail_de_failure_on_account_of'];
    _failDePartPertainsTo = json['fail_de_part_pertains_to'];
    _fdAgWarAvl = json['fd_ag_war_avl'];
    _fdObvservation = json['fd_obvservation'];
    _failDeSapNotiType = json['fail_de_sap_noti_type'];
    _failDeFailureInvestigation = json['fail_de_failure_investigation'];
    _fdSubDiv = json['fd_sub_div'];
    _vendorId = json['vendor_id'];
    _fdSerId = json['fd_ser_id'];
    _eqSrEquipModel = json['eq_sr_equip_model'];
    _fdEqStaBsr = json['fd_eq_sta_bsr'];
    _badgeNo = json['badge_no'];
    _serEngName = json['ser_eng_name'];
    _srDesignaion = json['sr_designaion'];
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
    _failDeTypeOfDamage = json['fail_de_type_of_damage'];
    _failDeSystemAffected = json['fail_de_system_affected'];
    _failDePartsAffected = json['fail_de_parts_affected'];
    _tckDetPurpose = json['tck_det_purpose'];
    _tdSymptoms = json['td_symptoms'];
    _lidRemarks = json['lid_remarks'];
    _chassisSlNo = json['chassis_sl_no'];
    _chassisManufacturer = json['chassis_manufacturer'];
    _engineLhRhSlNo = json['engine_lh_rh_sl_no'];
    _engineLhRhMfd = json['engine_lh_rh_mfd'];
    _transmissionSlNo = json['transmission_sl_no'];
    _transmissionManufacturer = json['transmission_manufacturer'];
    _sadLineStatus = json['sad_line_status'];
    _sadLineEvent = json['sad_line_event'];
    _sadLineDnsoc = json['sad_line_dnsoc'];
    _rearAxleSlNo = json['rear_axle_sl_no'];
    _rearAxleManufacturer = json['rear_axle_manufacturer'];
    _tandemAssemblySlNo = json['tandem_assembly_sl_no'];
    _tandemAssemblyManufacturer = json['tandem_assembly_manufacturer'];
    _rhFinalDriveSlNo = json['rh_final_drive_sl_no'];
    _rhFinalDriveManu = json['rh_final_drive_manu'];
    _frontAxleManu = json['front_axle_manu'];
    _lhFinalDriveSlNo = json['lh_final_drive_sl_no'];
    _lhFinalDriveManufacturer = json['lh_final_drive_manufacturer'];
    _inductionMotorSlNo = json['induction_motor_sl_no'];
    _inductionMotorManuf = json['induction_motor_manuf'];
    _trackDriveSlNo = json['track_drive_sl_no'];
    _trackDriveManuf = json['track_drive_manuf'];
    _ecdCanBeCom = json['ecd_can_be_com'];
    _frontAxleManufact = json['front_axle_manufact'];
    equip_id_da_sr = json['equip_id_da_sr'];
  }

  set lineItems(List<LineItems>? value) {
    _lineItems = value;
  }

  List<LineItemsOther>? _lineItemsOther;

  set lineItemsOther(List<LineItemsOther>? value) {
    _lineItemsOther = value;
  }

  List<LineItemsOther>? get lineItemsOther => _lineItemsOther;

  List<LineItems>? _lineItems;
  String? _assignedUserId;
  String? _srSystemAffected;
  String? _srHmr;
  String? _dteOfCommissing;
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
  String? _hmr;
  String? _kilometerReading;
  String? _kiloDate;
  String? _projectName;
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
  String? _genchkHiVoltEleSystem;

  String? _visChkExternalDamages;
  String? _visChkHydraulicAirLeakages;
  String? _visChkLubrication;
  String? _visChkOilLevels;

  String? _visChkWorkLoseingHders;
  String? _failDeFailureOnAccountOf;
  String? _failDePartPertainsTo;
  String? _fdAgWarAvl;
  String? _fdObvservation;
  String? _failDeSapNotiType;
  String? _failDeFailureInvestigation;
  String? _fdSubDiv;
  String? _vendorId;
  String? _fdSerId;
  String? _equipmentId;
  String? _eqSrEquipModel;
  String? _fdEqStaBsr;
  String? _badgeNo;
  String? _serEngName;
  String? _srDesignaion;
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
  String? _failDeTypeOfDamage;
  String? _failDeSystemAffected;
  String? _failDePartsAffected;
  String? _tckDetPurpose;
  String? _tdSymptoms;
  String? _lidRemarks;
  String? _chassisSlNo;
  String? _chassisManufacturer;
  String? _engineLhRhSlNo;
  String? _engineLhRhMfd;
  String? _transmissionSlNo;
  String? _transmissionManufacturer;
  String? _sadLineStatus;
  String? _sadLineEvent;
  String? _sadLineDnsoc;
  String? _rearAxleSlNo;
  String? _rearAxleManufacturer;
  String? _tandemAssemblySlNo;
  String? _tandemAssemblyManufacturer;
  String? _rhFinalDriveSlNo;
  String? _rhFinalDriveManu;
  String? _frontAxleManu;
  String? _lhFinalDriveSlNo;
  String? _lhFinalDriveManufacturer;
  String? _inductionMotorSlNo;
  String? _inductionMotorManuf;
  String? _trackDriveSlNo;
  String? _trackDriveManuf;
  String? _ecdCanBeCom;
  String? _frontAxleManufact;
  String? equip_id_da_sr;

  List<LineItems>? get lineItems => _lineItems;
  String? get assignedUserId => _assignedUserId;
  String? get srSystemAffected => _srSystemAffected;
  String? get srHmr => _srHmr;
  String? get dteOfCommissing => _dteOfCommissing;
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
  String? get hmr => _hmr;
  String? get kilometerReading => _kilometerReading;
  String? get kiloDate => _kiloDate;
  String? get projectName => _projectName;
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
  String? get failDeFailureOnAccountOf => _failDeFailureOnAccountOf;
  String? get failDePartPertainsTo => _failDePartPertainsTo;
  String? get fdAgWarAvl => _fdAgWarAvl;
  String? get fdObvservation => _fdObvservation;
  String? get failDeSapNotiType => _failDeSapNotiType;
  String? get failDeFailureInvestigation => _failDeFailureInvestigation;
  String? get fdSubDiv => _fdSubDiv;
  String? get vendorId => _vendorId;
  String? get fdSerId => _fdSerId;
  String? get equipmentId => _equipmentId;
  String? get eqSrEquipModel => _eqSrEquipModel;
  String? get fdEqStaBsr => _fdEqStaBsr;
  String? get badgeNo => _badgeNo;
  String? get serEngName => _serEngName;
  String? get srDesignaion => _srDesignaion;
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
  String? get failDeTypeOfDamage => _failDeTypeOfDamage;
  String? get failDeSystemAffected => _failDeSystemAffected;
  String? get failDePartsAffected => _failDePartsAffected;
  String? get tckDetPurpose => _tckDetPurpose;
  String? get tdSymptoms => _tdSymptoms;
  String? get lidRemarks => _lidRemarks;
  String? get chassisSlNo => _chassisSlNo;
  String? get chassisManufacturer => _chassisManufacturer;
  String? get engineLhRhSlNo => _engineLhRhSlNo;
  String? get engineLhRhMfd => _engineLhRhMfd;
  String? get transmissionSlNo => _transmissionSlNo;
  String? get transmissionManufacturer => _transmissionManufacturer;
  String? get sadLineStatus => _sadLineStatus;
  String? get sadLineEvent => _sadLineEvent;
  String? get sadLineDnsoc => _sadLineDnsoc;
  String? get rearAxleSlNo => _rearAxleSlNo;
  String? get rearAxleManufacturer => _rearAxleManufacturer;
  String? get tandemAssemblySlNo => _tandemAssemblySlNo;
  String? get tandemAssemblyManufacturer => _tandemAssemblyManufacturer;
  String? get rhFinalDriveSlNo => _rhFinalDriveSlNo;
  String? get rhFinalDriveManu => _rhFinalDriveManu;
  String? get frontAxleManu => _frontAxleManu;
  String? get lhFinalDriveSlNo => _lhFinalDriveSlNo;
  String? get lhFinalDriveManufacturer => _lhFinalDriveManufacturer;
  String? get inductionMotorSlNo => _inductionMotorSlNo;
  String? get inductionMotorManuf => _inductionMotorManuf;
  String? get trackDriveSlNo => _trackDriveSlNo;
  String? get trackDriveManuf => _trackDriveManuf;
  String? get ecdCanBeCom => _ecdCanBeCom;
  String? get frontAxleManufact => _frontAxleManufact;
  String? get newequid => equip_id_da_sr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_lineItems != null) {
      map['LineItems'] = _lineItems?.map((v) => v.toJson()).toList();
    }

    if (_lineItemsOther != null) {
      map['LineItemsOther'] = _lineItemsOther?.map((v) => v.toJson()).toList();
    }

    map['equipment_id'] = _equipmentId;

    map['sr_equip_status'] = _srEquipStatus;
    map['assigned_user_id'] = _assignedUserId;
    map['sr_system_affected'] = _srSystemAffected;
    map['sr_hmr'] = _srHmr;
    map['dte_of_commissing'] = _dteOfCommissing;
    map['ticket_date'] = _ticketDate;
    map['opp_name'] = _oppName;
    map['phone'] = _phone;
    map['reported_by'] = _reportedBy;
    map['account_id'] = _accountId;
    map['func_loc_id'] = _funcLocId;
    map['area_name'] = _areaName;
    map['sr_ticket_type'] = _srTicketType;
    map['ticket_id'] = _ticketId;
    map['eng_sl_no'] = _engSlNo;
    map['trans_sl_no'] = _transSlNo;
    map['motor_sl_no'] = _motorSlNo;
    map['hmr'] = _hmr;
    map['kilometer_reading'] = _kilometerReading;
    map['kilo_date'] = _kiloDate;
    map['project_name'] = _projectName;
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
    map['fail_de_failure_on_account_of'] = _failDeFailureOnAccountOf;
    map['fail_de_part_pertains_to'] = _failDePartPertainsTo;
    map['fd_ag_war_avl'] = _fdAgWarAvl;
    map['fd_obvservation'] = _fdObvservation;
    map['fail_de_sap_noti_type'] = _failDeSapNotiType;
    map['fail_de_failure_investigation'] = _failDeFailureInvestigation;
    map['fd_sub_div'] = _fdSubDiv;
    map['vendor_id'] = _vendorId;
    map['fd_ser_id'] = _fdSerId;
    map['eq_sr_equip_model'] = _eqSrEquipModel;
    map['fd_eq_sta_bsr'] = _fdEqStaBsr;
    map['badge_no'] = _badgeNo;
    map['ser_eng_name'] = _serEngName;
    map['sr_designaion'] = _srDesignaion;
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
    map['fail_de_type_of_damage'] = _failDeTypeOfDamage;
    map['fail_de_system_affected'] = _failDeSystemAffected;
    map['fail_de_parts_affected'] = _failDePartsAffected;
    map['tck_det_purpose'] = _tckDetPurpose;
    map['td_symptoms'] = _tdSymptoms;
    map['lid_remarks'] = _lidRemarks;
    map['chassis_sl_no'] = _chassisSlNo;
    map['chassis_manufacturer'] = _chassisManufacturer;
    map['engine_lh_rh_sl_no'] = _engineLhRhSlNo;
    map['engine_lh_rh_mfd'] = _engineLhRhMfd;
    map['transmission_sl_no'] = _transmissionSlNo;
    map['transmission_manufacturer'] = _transmissionManufacturer;
    map['sad_line_status'] = _sadLineStatus;
    map['sad_line_event'] = _sadLineEvent;
    map['sad_line_dnsoc'] = _sadLineDnsoc;
    map['rear_axle_sl_no'] = _rearAxleSlNo;
    map['rear_axle_manufacturer'] = _rearAxleManufacturer;
    map['tandem_assembly_sl_no'] = _tandemAssemblySlNo;
    map['tandem_assembly_manufacturer'] = _tandemAssemblyManufacturer;
    map['rh_final_drive_sl_no'] = _rhFinalDriveSlNo;
    map['rh_final_drive_manu'] = _rhFinalDriveManu;
    map['front_axle_manu'] = _frontAxleManu;
    map['lh_final_drive_sl_no'] = _lhFinalDriveSlNo;
    map['lh_final_drive_manufacturer'] = _lhFinalDriveManufacturer;
    map['induction_motor_sl_no'] = _inductionMotorSlNo;
    map['induction_motor_manuf'] = _inductionMotorManuf;
    map['track_drive_sl_no'] = _trackDriveSlNo;
    map['track_drive_manuf'] = _trackDriveManuf;
    map['ecd_can_be_com'] = _ecdCanBeCom;
    map['front_axle_manufact'] = _frontAxleManufact;
    map['equip_id_da_sr'] = equip_id_da_sr;
    return map;
  }

  set assignedUserId(String? value) {
    _assignedUserId = value;
  }

  set srSystemAffected(String? value) {
    _srSystemAffected = value;
  }

  set srHmr(String? value) {
    _srHmr = value;
  }

  set dteOfCommissing(String? value) {
    _dteOfCommissing = value;
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

  set failDeFailureOnAccountOf(String? value) {
    _failDeFailureOnAccountOf = value;
  }

  set failDePartPertainsTo(String? value) {
    _failDePartPertainsTo = value;
  }

  set fdAgWarAvl(String? value) {
    _fdAgWarAvl = value;
  }

  set fdObvservation(String? value) {
    _fdObvservation = value;
  }

  set failDeSapNotiType(String? value) {
    _failDeSapNotiType = value;
  }

  set failDeFailureInvestigation(String? value) {
    _failDeFailureInvestigation = value;
  }

  set fdSubDiv(String? value) {
    _fdSubDiv = value;
  }

  set vendorId(String? value) {
    _vendorId = value;
  }

  set fdSerId(String? value) {
    _fdSerId = value;
  }

  set equipmentId(String? value) {
    _equipmentId = value;
  }

  set eqSrEquipModel(String? value) {
    _eqSrEquipModel = value;
  }

  set fdEqStaBsr(String? value) {
    _fdEqStaBsr = value;
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

  set failDeTypeOfDamage(String? value) {
    _failDeTypeOfDamage = value;
  }

  set failDeSystemAffected(String? value) {
    _failDeSystemAffected = value;
  }

  set failDePartsAffected(String? value) {
    _failDePartsAffected = value;
  }

  set tckDetPurpose(String? value) {
    _tckDetPurpose = value;
  }

  set tdSymptoms(String? value) {
    _tdSymptoms = value;
  }

  set lidRemarks(String? value) {
    _lidRemarks = value;
  }

  set chassisSlNo(String? value) {
    _chassisSlNo = value;
  }

  set chassisManufacturer(String? value) {
    _chassisManufacturer = value;
  }

  set engineLhRhSlNo(String? value) {
    _engineLhRhSlNo = value;
  }

  set engineLhRhMfd(String? value) {
    _engineLhRhMfd = value;
  }

  set transmissionSlNo(String? value) {
    _transmissionSlNo = value;
  }

  set transmissionManufacturer(String? value) {
    _transmissionManufacturer = value;
  }

  set sadLineStatus(String? value) {
    _sadLineStatus = value;
  }

  set sadLineEvent(String? value) {
    _sadLineEvent = value;
  }

  set sadLineDnsoc(String? value) {
    _sadLineDnsoc = value;
  }

  set rearAxleSlNo(String? value) {
    _rearAxleSlNo = value;
  }

  set rearAxleManufacturer(String? value) {
    _rearAxleManufacturer = value;
  }

  set tandemAssemblySlNo(String? value) {
    _tandemAssemblySlNo = value;
  }

  set tandemAssemblyManufacturer(String? value) {
    _tandemAssemblyManufacturer = value;
  }

  set rhFinalDriveSlNo(String? value) {
    _rhFinalDriveSlNo = value;
  }

  set rhFinalDriveManu(String? value) {
    _rhFinalDriveManu = value;
  }

  set frontAxleManu(String? value) {
    _frontAxleManu = value;
  }

  set lhFinalDriveSlNo(String? value) {
    _lhFinalDriveSlNo = value;
  }

  set lhFinalDriveManufacturer(String? value) {
    _lhFinalDriveManufacturer = value;
  }

  set inductionMotorSlNo(String? value) {
    _inductionMotorSlNo = value;
  }

  set inductionMotorManuf(String? value) {
    _inductionMotorManuf = value;
  }

  set trackDriveSlNo(String? value) {
    _trackDriveSlNo = value;
  }

  set trackDriveManuf(String? value) {
    _trackDriveManuf = value;
  }

  set ecdCanBeCom(String? value) {
    _ecdCanBeCom = value;
  }

  set frontAxleManufact(String? value) {
    _frontAxleManufact = value;
  }

  set newequsetid(String? value) {
    equip_id_da_sr = value;
  }
}

//// this is parts line time .

LineItems lineItemsFromJson(String str) => LineItems.fromJson(json.decode(str));
String lineItemsToJson(LineItems data) => json.encode(data.toJson());

class LineItems {
  LineItems({
    String? productname,
    String? quantity,
    String? productid,
    String? comment,
    String? srActionOne,
    String? srActionTwo,
    String? srReplaceAction,
    String? vendorItem,
    String? remarks,
  }) {
    _productname = productname;
    _quantity = quantity;
    _productid = productid;
    _comment = comment;
    _srActionOne = srActionOne;
    _srActionTwo = srActionTwo;
    _srReplaceAction = srReplaceAction;
    _vendorItem = vendorItem;
    _remarks = remarks;
  }

  LineItems.fromJson(dynamic json) {
    _productname = json['productname'];
    _quantity = json['quantity'];
    _productid = json['productid'];
    _comment = json['comment'];
    _srActionOne = json['sr_action_one'];
    _srActionTwo = json['sr_action_two'];
    _srReplaceAction = json['sr_replace_action'];
    _vendorItem = json['vendor_item'];
    _remarks = json['remarks'];
  }
  String? _productname;
  String? _quantity;
  String? _productid;
  String? _comment;
  String? _srActionOne;
  String? _srActionTwo;
  String? _srReplaceAction;
  String? _vendorItem;
  String? _remarks;

  String? get productname => _productname;
  String? get quantity => _quantity;
  String? get productid => _productid;
  String? get comment => _comment;
  String? get srActionOne => _srActionOne;
  String? get srActionTwo => _srActionTwo;
  String? get srReplaceAction => _srReplaceAction;
  String? get vendorItem => _vendorItem;
  String? get remarks => _remarks;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productname'] = _productname;
    map['quantity'] = _quantity;
    map['productid'] = _productid;
    map['comment'] = _comment;
    map['sr_action_one'] = _srActionOne;
    map['sr_action_two'] = _srActionTwo;
    map['sr_replace_action'] = _srReplaceAction;
    map['vendor_item'] = _vendorItem;
    map['remarks'] = _remarks;
    return map;
  }

  set remarks(String? value) {
    _remarks = value;
  }

  set vendorItem(String? value) {
    _vendorItem = value;
  }

  set srReplaceAction(String? value) {
    _srReplaceAction = value;
  }

  set srActionTwo(String? value) {
    _srActionTwo = value;
  }

  set srActionOne(String? value) {
    _srActionOne = value;
  }

  set comment(String? value) {
    _comment = value;
  }

  set productid(String? value) {
    _productid = value;
  }

  set quantity(String? value) {
    _quantity = value;
  }

  set productname(String? value) {
    _productname = value;
  }

  /// shortages and damages
  ///
  ///

}

///

/// sad_line_status : ""
/// sad_line_event : ""
/// sad_line_dnsoc : ""
/// productid : ""
/// quantity : ""
/// comment : ""

LineItemsOther lineItemsOtherFromJson(String str) =>
    LineItemsOther.fromJson(json.decode(str));
String lineItemsOtherToJson(LineItemsOther data) => json.encode(data.toJson());

class LineItemsOther {
  LineItemsOther({
    String? sadLineStatus,
    String? sadLineEvent,
    String? sadLineDnsoc,
    String? productid,
    String? quantity,
    String? comment,
  }) {
    _sadLineStatus = sadLineStatus;
    _sadLineEvent = sadLineEvent;
    _sadLineDnsoc = sadLineDnsoc;
    _productid = productid;
    _quantity = quantity;
    _comment = comment;
  }

  LineItemsOther.fromJson(dynamic json) {
    _sadLineStatus = json['sad_line_status'];
    _sadLineEvent = json['sad_line_event'];
    _sadLineDnsoc = json['sad_line_dnsoc'];
    _productid = json['productid'];
    _quantity = json['quantity'];
    _comment = json['comment'];
  }
  String? _sadLineStatus;
  String? _sadLineEvent;
  String? _sadLineDnsoc;
  String? _productid;

  set sadLineStatus(String? value) {
    _sadLineStatus = value;
  }

  String? _quantity;
  String? _comment;

  String? get sadLineStatus => _sadLineStatus;
  String? get sadLineEvent => _sadLineEvent;
  String? get sadLineDnsoc => _sadLineDnsoc;
  String? get productid => _productid;
  String? get quantity => _quantity;
  String? get comment => _comment;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sad_line_status'] = _sadLineStatus;
    map['sad_line_event'] = _sadLineEvent;
    map['sad_line_dnsoc'] = _sadLineDnsoc;
    map['productid'] = _productid;
    map['quantity'] = _quantity;
    map['comment'] = _comment;
    return map;
  }

  set sadLineEvent(String? value) {
    _sadLineEvent = value;
  }

  set sadLineDnsoc(String? value) {
    _sadLineDnsoc = value;
  }

  set productid(String? value) {
    _productid = value;
  }

  set quantity(String? value) {
    _quantity = value;
  }

  set comment(String? value) {
    _comment = value;
  }
}
