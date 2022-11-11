import 'dart:convert';

DataServiceReport dataServiceReportFromJson(String str) =>
    DataServiceReport.fromJson(json.decode(str));
String dataServiceReportToJson(DataServiceReport data) =>
    json.encode(data.toJson());

class DataServiceReport {
  DataServiceReport({
    List<LineItems>? lineItems,
    String? netprice,
    String? productid,
    String? quantity,
    String? assignedUserId,
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
    String? ecdCanBeCom,
    String? eqStaAftActTaken,
    String? accountId,
    String? funcLocId,
    String? areaName,
    String? srTicketType,
    String? ticketId,
    dynamic srActionOne,
    dynamic srActionTwo,
    dynamic srReplaceAction,
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
    dynamic srTransmission,
    dynamic srEngine,
    dynamic srFinalDrive,
    dynamic srRearAxle,
    dynamic srChassis,
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
    String? failDeFailureOnAccountOf,
    String? failDePartPertainsTo,
    dynamic fdAgWarAvl,
    String? fdObvservation,
    String? failDeSapNotiType,
    String? failDeFailureInvestigation,
    String? fdSubDiv,
    dynamic vendorId,
    dynamic fdSerId,
    String? equipmentId,
    String? eqSrEquipModel,
    String? fdEqStaBsr,
    dynamic badgeNo,
    dynamic serEngName,
    dynamic srDesignaion,
    dynamic srRegionalOffice,
    dynamic distOffOrActCen,
    String? imagename,
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
    String? restorationDate,
    String? restorationTime,
    dynamic offOnAccountOf,
    dynamic remarksForOffroad,
    String? failDeTypeOfDamage,
    String? failDeSystemAffected,
    String? failDePartsAffected,
  }) {
    _lineItems = lineItems;
    _netprice = netprice;
    _productid = productid;
    _quantity = quantity;
    _assignedUserId = assignedUserId;
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
    _ecdCanBeCom = ecdCanBeCom;
    _eqStaAftActTaken = eqStaAftActTaken;
    _accountId = accountId;
    _funcLocId = funcLocId;
    _areaName = areaName;
    _srTicketType = srTicketType;
    _ticketId = ticketId;
    _srActionOne = srActionOne;
    _srActionTwo = srActionTwo;
    _srReplaceAction = srReplaceAction;
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
    _restorationDate = restorationDate;
    _restorationTime = restorationTime;
    _offOnAccountOf = offOnAccountOf;
    _remarksForOffroad = remarksForOffroad;
    _failDeTypeOfDamage = failDeTypeOfDamage;
    _failDeSystemAffected = failDeSystemAffected;
    _failDePartsAffected = failDePartsAffected;
  }

  DataServiceReport.fromJson(dynamic json) {
    if (json['LineItems'] != null) {
      _lineItems = [];
      json['LineItems'].forEach((v) {
        _lineItems?.add(LineItems.fromJson(v));
      });
    }

    _netprice = json['netprice'];
    _productid = json['productid'];
    _quantity = json['quantity'];
    _assignedUserId = json['assigned_user_id'];
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
    _ecdCanBeCom = json['ecd_can_be_com'];
    _eqStaAftActTaken = json['eq_sta_aft_act_taken'];
    _accountId = json['account_id'];
    _funcLocId = json['func_loc_id'];
    _areaName = json['area_name'];
    _srTicketType = json['sr_ticket_type'];
    _ticketId = json['ticket_id'];
    _srActionOne = json['sr_action_one'];
    _srActionTwo = json['sr_action_two'];
    _srReplaceAction = json['sr_replace_action'];
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
    _equipmentId = json['equipment_id'];
    _eqSrEquipModel = json['eq_sr_equip_model'];
    _fdEqStaBsr = json['fd_eq_sta_bsr'];
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
    _restorationDate = json['restoration_date'];
    _restorationTime = json['restoration_time'];
    _offOnAccountOf = json['off_on_account_of'];
    _remarksForOffroad = json['remarks_for_offroad'];
    _failDeTypeOfDamage = json['fail_de_type_of_damage'];
    _failDeSystemAffected = json['fail_de_system_affected'];
    _failDePartsAffected = json['fail_de_parts_affected'];
  }
  List<LineItems>? _lineItems;
  String? _netprice;
  String? _productid;
  String? _quantity;
  String? _assignedUserId;
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
  String? _ecdCanBeCom;
  String? _eqStaAftActTaken;
  String? _accountId;
  String? _funcLocId;
  String? _areaName;
  String? _srTicketType;
  String? _ticketId;
  dynamic _srActionOne;
  dynamic _srActionTwo;
  dynamic _srReplaceAction;
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
  dynamic _srTransmission;
  dynamic _srEngine;
  dynamic _srFinalDrive;
  dynamic _srRearAxle;
  dynamic _srChassis;
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
  String? _failDeFailureOnAccountOf;
  String? _failDePartPertainsTo;
  dynamic _fdAgWarAvl;
  String? _fdObvservation;
  String? _failDeSapNotiType;
  String? _failDeFailureInvestigation;
  String? _fdSubDiv;
  dynamic _vendorId;
  dynamic _fdSerId;
  String? _equipmentId;
  String? _eqSrEquipModel;
  String? _fdEqStaBsr;
  dynamic _badgeNo;
  dynamic _serEngName;
  dynamic _srDesignaion;
  dynamic _srRegionalOffice;
  dynamic _distOffOrActCen;
  String? _imagename;
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
  String? _restorationDate;
  String? _restorationTime;
  dynamic _offOnAccountOf;
  dynamic _remarksForOffroad;
  String? _failDeTypeOfDamage;
  String? _failDeSystemAffected;
  String? _failDePartsAffected;
  DataServiceReport copyWith({
    List<LineItems>? lineItems,
    String? netprice,
    String? productid,
    String? quantity,
    String? assignedUserId,
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
    String? ecdCanBeCom,
    String? eqStaAftActTaken,
    String? accountId,
    String? funcLocId,
    String? areaName,
    String? srTicketType,
    String? ticketId,
    dynamic srActionOne,
    dynamic srActionTwo,
    dynamic srReplaceAction,
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
    dynamic srTransmission,
    dynamic srEngine,
    dynamic srFinalDrive,
    dynamic srRearAxle,
    dynamic srChassis,
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
    String? failDeFailureOnAccountOf,
    String? failDePartPertainsTo,
    dynamic fdAgWarAvl,
    String? fdObvservation,
    String? failDeSapNotiType,
    String? failDeFailureInvestigation,
    String? fdSubDiv,
    dynamic vendorId,
    dynamic fdSerId,
    String? equipmentId,
    String? eqSrEquipModel,
    String? fdEqStaBsr,
    dynamic badgeNo,
    dynamic serEngName,
    dynamic srDesignaion,
    dynamic srRegionalOffice,
    dynamic distOffOrActCen,
    String? imagename,
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
    String? restorationDate,
    String? restorationTime,
    dynamic offOnAccountOf,
    dynamic remarksForOffroad,
    String? failDeTypeOfDamage,
    String? failDeSystemAffected,
    String? failDePartsAffected,
  }) =>
      DataServiceReport(
        lineItems: lineItems ?? _lineItems,
        netprice: netprice ?? _netprice,
        productid: productid ?? _productid,
        quantity: quantity ?? _quantity,
        assignedUserId: assignedUserId ?? _assignedUserId,
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
        ecdCanBeCom: ecdCanBeCom ?? _ecdCanBeCom,
        eqStaAftActTaken: eqStaAftActTaken ?? _eqStaAftActTaken,
        accountId: accountId ?? _accountId,
        funcLocId: funcLocId ?? _funcLocId,
        areaName: areaName ?? _areaName,
        srTicketType: srTicketType ?? _srTicketType,
        ticketId: ticketId ?? _ticketId,
        srActionOne: srActionOne ?? _srActionOne,
        srActionTwo: srActionTwo ?? _srActionTwo,
        srReplaceAction: srReplaceAction ?? _srReplaceAction,
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
        genchkEngine: genchkEngine ?? _genchkEngine,
        genchkOilPressure: genchkOilPressure ?? _genchkOilPressure,
        genchkOilTemperature: genchkOilTemperature ?? _genchkOilTemperature,
        genchkCoolantTemperature:
            genchkCoolantTemperature ?? _genchkCoolantTemperature,
        genchkTransmission: genchkTransmission ?? _genchkTransmission,
        genchkBrake: genchkBrake ?? _genchkBrake,
        genchkAirPressure: genchkAirPressure ?? _genchkAirPressure,
        genchkElectrical: genchkElectrical ?? _genchkElectrical,
        genchkMotor: genchkMotor ?? _genchkMotor,
        genchkTransformer: genchkTransformer ?? _genchkTransformer,
        genchkFieldSwitch: genchkFieldSwitch ?? _genchkFieldSwitch,
        genchkAutoElectricalSystem:
            genchkAutoElectricalSystem ?? _genchkAutoElectricalSystem,
        genchkBatteryVoltage: genchkBatteryVoltage ?? _genchkBatteryVoltage,
        genchkHydraulic: genchkHydraulic ?? _genchkHydraulic,
        genchkCylinders: genchkCylinders ?? _genchkCylinders,
        genchkSuspension: genchkSuspension ?? _genchkSuspension,
        genchkPumps: genchkPumps ?? _genchkPumps,
        genchkOilCooler: genchkOilCooler ?? _genchkOilCooler,
        genchkStructure: genchkStructure ?? _genchkStructure,
        genchkAutoLubrication: genchkAutoLubrication ?? _genchkAutoLubrication,
        genchkAirConditionn: genchkAirConditionn ?? _genchkAirConditionn,
        genchkAutoFireProtection:
            genchkAutoFireProtection ?? _genchkAutoFireProtection,
        visChkExternalDamages: visChkExternalDamages ?? _visChkExternalDamages,
        visChkHydraulicAirLeakages:
            visChkHydraulicAirLeakages ?? _visChkHydraulicAirLeakages,
        visChkLubrication: visChkLubrication ?? _visChkLubrication,
        visChkOilLevels: visChkOilLevels ?? _visChkOilLevels,
        genchkHiVoltEleSystem: genchkHiVoltEleSystem ?? _genchkHiVoltEleSystem,
        visChkWorkLoseingHders:
            visChkWorkLoseingHders ?? _visChkWorkLoseingHders,
        failDeFailureOnAccountOf:
            failDeFailureOnAccountOf ?? _failDeFailureOnAccountOf,
        failDePartPertainsTo: failDePartPertainsTo ?? _failDePartPertainsTo,
        fdAgWarAvl: fdAgWarAvl ?? _fdAgWarAvl,
        fdObvservation: fdObvservation ?? _fdObvservation,
        failDeSapNotiType: failDeSapNotiType ?? _failDeSapNotiType,
        failDeFailureInvestigation:
            failDeFailureInvestigation ?? _failDeFailureInvestigation,
        fdSubDiv: fdSubDiv ?? _fdSubDiv,
        vendorId: vendorId ?? _vendorId,
        fdSerId: fdSerId ?? _fdSerId,
        equipmentId: equipmentId ?? _equipmentId,
        eqSrEquipModel: eqSrEquipModel ?? _eqSrEquipModel,
        fdEqStaBsr: fdEqStaBsr ?? _fdEqStaBsr,
        badgeNo: badgeNo ?? _badgeNo,
        serEngName: serEngName ?? _serEngName,
        srDesignaion: srDesignaion ?? _srDesignaion,
        srRegionalOffice: srRegionalOffice ?? _srRegionalOffice,
        distOffOrActCen: distOffOrActCen ?? _distOffOrActCen,
        imagename: imagename ?? _imagename,
        visChkExtDam: visChkExtDam ?? _visChkExtDam,
        visChkHydAir: visChkHydAir ?? _visChkHydAir,
        visChkWrkLos: visChkWrkLos ?? _visChkWrkLos,
        visChkLubRem: visChkLubRem ?? _visChkLubRem,
        visChkOilRem: visChkOilRem ?? _visChkOilRem,
        visChkExtDamImg: visChkExtDamImg ?? _visChkExtDamImg,
        visHydAirDamImg: visHydAirDamImg ?? _visHydAirDamImg,
        visHydWrkLosImg: visHydWrkLosImg ?? _visHydWrkLosImg,
        visLubLosImg: visLubLosImg ?? _visLubLosImg,
        visOilLevImg: visOilLevImg ?? _visOilLevImg,
        actionTakenBlock: actionTakenBlock ?? _actionTakenBlock,
        restorationDate: restorationDate ?? _restorationDate,
        restorationTime: restorationTime ?? _restorationTime,
        offOnAccountOf: offOnAccountOf ?? _offOnAccountOf,
        remarksForOffroad: remarksForOffroad ?? _remarksForOffroad,
        failDeTypeOfDamage: failDeTypeOfDamage ?? _failDeTypeOfDamage,
        failDeSystemAffected: failDeSystemAffected ?? _failDeSystemAffected,
        failDePartsAffected: failDePartsAffected ?? _failDePartsAffected,
      );

  List<LineItems>? get lineItems => _lineItems;
  String? get netprice => _netprice;
  String? get productid => _productid;
  String? get quantity => _quantity;
  String? get assignedUserId => _assignedUserId;
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
  String? get ecdCanBeCom => _ecdCanBeCom;
  String? get eqStaAftActTaken => _eqStaAftActTaken;
  String? get accountId => _accountId;
  String? get funcLocId => _funcLocId;
  String? get areaName => _areaName;
  String? get srTicketType => _srTicketType;
  String? get ticketId => _ticketId;
  dynamic get srActionOne => _srActionOne;
  dynamic get srActionTwo => _srActionTwo;
  dynamic get srReplaceAction => _srReplaceAction;
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
  dynamic get srTransmission => _srTransmission;
  dynamic get srEngine => _srEngine;
  dynamic get srFinalDrive => _srFinalDrive;
  dynamic get srRearAxle => _srRearAxle;
  dynamic get srChassis => _srChassis;
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
  String? get failDeFailureOnAccountOf => _failDeFailureOnAccountOf;
  String? get failDePartPertainsTo => _failDePartPertainsTo;
  dynamic get fdAgWarAvl => _fdAgWarAvl;
  String? get fdObvservation => _fdObvservation;
  String? get failDeSapNotiType => _failDeSapNotiType;
  String? get failDeFailureInvestigation => _failDeFailureInvestigation;
  String? get fdSubDiv => _fdSubDiv;
  dynamic get vendorId => _vendorId;
  dynamic get fdSerId => _fdSerId;
  String? get equipmentId => _equipmentId;
  String? get eqSrEquipModel => _eqSrEquipModel;
  String? get fdEqStaBsr => _fdEqStaBsr;
  dynamic get badgeNo => _badgeNo;
  dynamic get serEngName => _serEngName;
  dynamic get srDesignaion => _srDesignaion;
  dynamic get srRegionalOffice => _srRegionalOffice;
  dynamic get distOffOrActCen => _distOffOrActCen;
  String? get imagename => _imagename;
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
  String? get restorationDate => _restorationDate;
  String? get restorationTime => _restorationTime;
  dynamic get offOnAccountOf => _offOnAccountOf;
  dynamic get remarksForOffroad => _remarksForOffroad;
  String? get failDeTypeOfDamage => _failDeTypeOfDamage;
  String? get failDeSystemAffected => _failDeSystemAffected;
  String? get failDePartsAffected => _failDePartsAffected;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};

    if (_lineItems != null) {
      map['LineItems'] = _lineItems?.map((v) => v.toJson()).toList();
    }
    map['action_taken_block'] = _actionTakenBlock;
    map['restoration_date'] = _restorationDate;
    map['restoration_time'] = _restorationTime;
    map['off_on_account_of'] = _offOnAccountOf;
    map['remarks_for_offroad'] = _remarksForOffroad;

    map['netprice'] = _netprice;
    map['productid'] = _productid;
    map['quantity'] = _quantity;
    map['assigned_user_id'] = _assignedUserId;
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
    map['ecd_can_be_com'] = _ecdCanBeCom;
    map['eq_sta_aft_act_taken'] = _eqStaAftActTaken;
    map['account_id'] = _accountId;
    map['func_loc_id'] = _funcLocId;
    map['area_name'] = _areaName;
    map['sr_ticket_type'] = _srTicketType;
    map['ticket_id'] = _ticketId;
    map['sr_action_one'] = _srActionOne;
    map['sr_action_two'] = _srActionTwo;
    map['sr_replace_action'] = _srReplaceAction;
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
    map['equipment_id'] = _equipmentId;
    map['eq_sr_equip_model'] = _eqSrEquipModel;
    map['fd_eq_sta_bsr'] = _fdEqStaBsr;
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

    map['fail_de_type_of_damage'] = _failDeTypeOfDamage;
    map['fail_de_system_affected'] = _failDeSystemAffected;
    map['fail_de_parts_affected'] = _failDePartsAffected;
    return map;
  }

  set lineItems(List<LineItems>? value) {
    _lineItems = value;
  }

  set failDePartsAffected(String? value) {
    _failDePartsAffected = value;
  }

  set failDeSystemAffected(String? value) {
    _failDeSystemAffected = value;
  }

  set failDeTypeOfDamage(String? value) {
    _failDeTypeOfDamage = value;
  }

  set remarksForOffroad(dynamic value) {
    _remarksForOffroad = value;
  }

  set offOnAccountOf(dynamic value) {
    _offOnAccountOf = value;
  }

  set restorationTime(String? value) {
    _restorationTime = value;
  }

  set restorationDate(String? value) {
    _restorationDate = value;
  }

  set actionTakenBlock(String? value) {
    _actionTakenBlock = value;
  }

  set visOilLevImg(dynamic value) {
    _visOilLevImg = value;
  }

  set visLubLosImg(dynamic value) {
    _visLubLosImg = value;
  }

  set visHydWrkLosImg(dynamic value) {
    _visHydWrkLosImg = value;
  }

  set visHydAirDamImg(dynamic value) {
    _visHydAirDamImg = value;
  }

  set visChkExtDamImg(dynamic value) {
    _visChkExtDamImg = value;
  }

  set visChkOilRem(dynamic value) {
    _visChkOilRem = value;
  }

  set visChkLubRem(dynamic value) {
    _visChkLubRem = value;
  }

  set visChkWrkLos(dynamic value) {
    _visChkWrkLos = value;
  }

  set visChkHydAir(dynamic value) {
    _visChkHydAir = value;
  }

  set visChkExtDam(dynamic value) {
    _visChkExtDam = value;
  }

  set imagename(String? value) {
    _imagename = value;
  }

  set distOffOrActCen(dynamic value) {
    _distOffOrActCen = value;
  }

  set srRegionalOffice(dynamic value) {
    _srRegionalOffice = value;
  }

  set srDesignaion(dynamic value) {
    _srDesignaion = value;
  }

  set serEngName(dynamic value) {
    _serEngName = value;
  }

  set badgeNo(dynamic value) {
    _badgeNo = value;
  }

  set fdEqStaBsr(String? value) {
    _fdEqStaBsr = value;
  }

  set eqSrEquipModel(String? value) {
    _eqSrEquipModel = value;
  }

  set equipmentId(String? value) {
    _equipmentId = value;
  }

  set fdSerId(dynamic value) {
    _fdSerId = value;
  }

  set vendorId(dynamic value) {
    _vendorId = value;
  }

  set fdSubDiv(String? value) {
    _fdSubDiv = value;
  }

  set failDeFailureInvestigation(String? value) {
    _failDeFailureInvestigation = value;
  }

  set failDeSapNotiType(String? value) {
    _failDeSapNotiType = value;
  }

  set fdObvservation(String? value) {
    _fdObvservation = value;
  }

  set fdAgWarAvl(dynamic value) {
    _fdAgWarAvl = value;
  }

  set failDePartPertainsTo(String? value) {
    _failDePartPertainsTo = value;
  }

  set failDeFailureOnAccountOf(String? value) {
    _failDeFailureOnAccountOf = value;
  }

  set visChkWorkLoseingHders(dynamic value) {
    _visChkWorkLoseingHders = value;
  }

  set genchkHiVoltEleSystem(dynamic value) {
    _genchkHiVoltEleSystem = value;
  }

  set visChkOilLevels(dynamic value) {
    _visChkOilLevels = value;
  }

  set visChkLubrication(dynamic value) {
    _visChkLubrication = value;
  }

  set visChkHydraulicAirLeakages(dynamic value) {
    _visChkHydraulicAirLeakages = value;
  }

  set visChkExternalDamages(dynamic value) {
    _visChkExternalDamages = value;
  }

  set genchkAutoFireProtection(dynamic value) {
    _genchkAutoFireProtection = value;
  }

  set genchkAirConditionn(dynamic value) {
    _genchkAirConditionn = value;
  }

  set genchkAutoLubrication(dynamic value) {
    _genchkAutoLubrication = value;
  }

  set genchkStructure(dynamic value) {
    _genchkStructure = value;
  }

  set genchkOilCooler(dynamic value) {
    _genchkOilCooler = value;
  }

  set genchkPumps(dynamic value) {
    _genchkPumps = value;
  }

  set genchkSuspension(dynamic value) {
    _genchkSuspension = value;
  }

  set genchkCylinders(dynamic value) {
    _genchkCylinders = value;
  }

  set genchkHydraulic(dynamic value) {
    _genchkHydraulic = value;
  }

  set genchkBatteryVoltage(dynamic value) {
    _genchkBatteryVoltage = value;
  }

  set genchkAutoElectricalSystem(dynamic value) {
    _genchkAutoElectricalSystem = value;
  }

  set genchkFieldSwitch(dynamic value) {
    _genchkFieldSwitch = value;
  }

  set genchkTransformer(dynamic value) {
    _genchkTransformer = value;
  }

  set genchkMotor(dynamic value) {
    _genchkMotor = value;
  }

  set genchkElectrical(dynamic value) {
    _genchkElectrical = value;
  }

  set genchkAirPressure(dynamic value) {
    _genchkAirPressure = value;
  }

  set genchkBrake(dynamic value) {
    _genchkBrake = value;
  }

  set genchkTransmission(dynamic value) {
    _genchkTransmission = value;
  }

  set genchkCoolantTemperature(dynamic value) {
    _genchkCoolantTemperature = value;
  }

  set genchkOilTemperature(dynamic value) {
    _genchkOilTemperature = value;
  }

  set genchkOilPressure(dynamic value) {
    _genchkOilPressure = value;
  }

  set genchkEngine(dynamic value) {
    _genchkEngine = value;
  }

  set srChassis(dynamic value) {
    _srChassis = value;
  }

  set srRearAxle(dynamic value) {
    _srRearAxle = value;
  }

  set srFinalDrive(dynamic value) {
    _srFinalDrive = value;
  }

  set srEngine(dynamic value) {
    _srEngine = value;
  }

  set srTransmission(dynamic value) {
    _srTransmission = value;
  }

  set srEqWarrantyTerms(String? value) {
    _srEqWarrantyTerms = value;
  }

  set runYearCont(String? value) {
    _runYearCont = value;
  }

  set contEndDate(String? value) {
    _contEndDate = value;
  }

  set contStartDate(String? value) {
    _contStartDate = value;
  }

  set typeOfConrt(String? value) {
    _typeOfConrt = value;
  }

  set projectName(String? value) {
    _projectName = value;
  }

  set kiloDate(String? value) {
    _kiloDate = value;
  }

  set kilometerReading(String? value) {
    _kilometerReading = value;
  }

  set hmr(String? value) {
    _hmr = value;
  }

  set dateOfFailure(String? value) {
    _dateOfFailure = value;
  }

  set motorSlNo(String? value) {
    _motorSlNo = value;
  }

  set transSlNo(String? value) {
    _transSlNo = value;
  }

  set engSlNo(String? value) {
    _engSlNo = value;
  }

  set srEquipStatus(String? value) {
    _srEquipStatus = value;
  }

  set srReplaceAction(dynamic value) {
    _srReplaceAction = value;
  }

  set srActionTwo(dynamic value) {
    _srActionTwo = value;
  }

  set srActionOne(dynamic value) {
    _srActionOne = value;
  }

  set ticketId(String? value) {
    _ticketId = value;
  }

  set srTicketType(String? value) {
    _srTicketType = value;
  }

  set areaName(String? value) {
    _areaName = value;
  }

  set funcLocId(String? value) {
    _funcLocId = value;
  }

  set accountId(String? value) {
    _accountId = value;
  }

  set eqStaAftActTaken(String? value) {
    _eqStaAftActTaken = value;
  }

  set ecdCanBeCom(String? value) {
    _ecdCanBeCom = value;
  }

  set reportedBy(String? value) {
    _reportedBy = value;
  }

  set phone(String? value) {
    _phone = value;
  }

  set oppName(String? value) {
    _oppName = value;
  }

  set ticketDate(String? value) {
    _ticketDate = value;
  }

  set srWarStatus(String? value) {
    _srWarStatus = value;
  }

  set warrantyEndDte(String? value) {
    _warrantyEndDte = value;
  }

  set dteOfCommissing(String? value) {
    _dteOfCommissing = value;
  }

  set symptoms(String? value) {
    _symptoms = value;
  }

  set srHmr(String? value) {
    _srHmr = value;
  }

  set srSystemAffected(String? value) {
    _srSystemAffected = value;
  }

  set assignedUserId(String? value) {
    _assignedUserId = value;
  }

  set quantity(String? value) {
    _quantity = value;
  }

  set productid(String? value) {
    _productid = value;
  }

  set netprice(String? value) {
    _netprice = value;
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
}
