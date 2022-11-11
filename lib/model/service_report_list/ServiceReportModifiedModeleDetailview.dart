import 'dart:convert';

/// statuscode : 1
/// data : {"record":{"ticket_id":"TT313","ticket_date":"1900-12-01","reported_by":"","account_id":"","area_name":"","project_name":"","opp_name":"Akshansh","phone":"8210125130","sr_ticket_type":"PERIODICAL MAINTENANCE","fail_de_sap_noti_type":"ZE","tags":"","eq_sr_equip_model":"","equipment_id":"","func_loc_id":"","sr_equip_status":"","sr_hmr":"1900-12-13","trans_sl_no":"","eng_sl_no":"","motor_sl_no":"","kilometer_reading":"124","hmr":"124","kilo_date":"1900-12-08","imagename":[],"dte_of_commissing":"2022-09-30","sr_eq_warranty_terms":"","warranty_end_dte":"","sr_war_status":"","type_of_conrt":"","cont_end_date":"","cont_start_date":"","run_year_cont":"0","vis_chk_external_damages":"0","vis_chk_ext_dam":"","vis_chk_ext_dam_img":[],"vis_chk_hydraulic_air_leakages":"1","vis_chk_hyd_air":"","vis_hyd_air_dam_img":[],"vis_chk_lubrication":"1","vis_chk_lub_rem":"","vis_lub_los_img":[],"vis_chk_oil_levels":"1","vis_chk_oil_rem":"","vis_oil_lev_img":[],"vis_chk_work_loseing_hders":"1","vis_chk_wrk_los":"","vis_hyd_wrk_los_img":[],"mt_major_aggrts":"","mt_pdical_maint_type":"","manu_name":"","apmd_whoa":"0","sacfd_dof":"","sacfd_same_slno":"","apmd_ag_sl_no":"","createdtime":"2022-09-21 13:33:43","modifiedby":"Master Admin","creditnote_no":"BEML-SER-REP156","created_user_id":". Sanjay","modifiedtime":"2022-09-30 07:24:11","action_taken_block":"","eq_sta_aft_act_taken":"","restoration_date":"","restoration_time":"","off_on_account_of":"","remarks_for_offroad":"","action_taken_block_seo":"","at_copm":"","genchk_engine":"","genchk_oil_pressure":"","genchk_oil_temperature":"","genchk_coolant_temperature":"","genchk_transmission":"","genchk_brake":"","genchk_air_pressure":"","genchk_electrical":"","genchk_motor":"","genchk_transformer":"","genchk_field_switch":"","genchk_auto_electrical_system":"","genchk_battery_voltage":"","genchk_hi_volt_ele_system":"","genchk_hydraulic":"","genchk_cylinders":"","genchk_oil_cooler":"","genchk_pumps":"","genchk_suspension":"","genchk_structure":"","genchk_air_conditionn":"","genchk_auto_fire_protection":"","genchk_auto_lubrication":"","badge_no":"98801","ser_eng_name":"Akshansh","sr_designaion":"Assistant General Manager","sr_regional_office":"","dist_off_or_act_cen":"","productid":"TEST SALES 01","hdnS_H_Amount":"0.00000000","LineItems":[{"parent_id":"46xArray","productid":"14x87552","sequence_no":"1","productname":"TEST SALES 01","quantity":"20.000","listprice":"0.00000000","discount_percent":"","discount_amount":"","comment":"nothing","description":"","incrementondel":"0","tax1":"","tax2":"","tax3":"","image":"","purchase_cost":"0.00000000","margin":"0.00000000","dependency":"off","duration":"","billing_type":"","netprice":"","margin_percentage":"","markup_percentage":"","sr_action_one":"Repaired","sr_action_two":"","sr_replace_action":"","remarks_by_eng":"","part_recived":"","action_by_service_man":"","purpose_for_sending":"","item_det_division":"","remarks_by_ser_mang":"","replaced_date":"","date_of_submiss":"","collect_immidiately":"0","lid_manual_sl":"","lid_rejected_qty":"0","lid_remarks":"","lid_po_qty":"0","lid_store_locations":"","lid_sto_del_date":"","vendor_item":"","fail_pa_sb_qty":"","fail_pa_pa_status":"","line_vendor_id":"0","lid_msr":"BEML","lid_line_event":"","id":"33x1767","product_name":"TEST SALES 01","entity_type":"Products","lineitem_id":"1767","deleted":"0"}]}}
/// statusMessage : "Successfully Fetched Data"

ServiceReportModifiedModeleDetailview
    serviceReportModifiedModeleDetailviewFromJson(String str) =>
        ServiceReportModifiedModeleDetailview.fromJson(json.decode(str));
String serviceReportModifiedModeleDetailviewToJson(
        ServiceReportModifiedModeleDetailview data) =>
    json.encode(data.toJson());

class ServiceReportModifiedModeleDetailview {
  ServiceReportModifiedModeleDetailview({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  ServiceReportModifiedModeleDetailview.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  ServiceReportModifiedModeleDetailview copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      ServiceReportModifiedModeleDetailview(
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

/// record : {"ticket_id":"TT313","ticket_date":"1900-12-01","reported_by":"","account_id":"","area_name":"","project_name":"","opp_name":"Akshansh","phone":"8210125130","sr_ticket_type":"PERIODICAL MAINTENANCE","fail_de_sap_noti_type":"ZE","tags":"","eq_sr_equip_model":"","equipment_id":"","func_loc_id":"","sr_equip_status":"","sr_hmr":"1900-12-13","trans_sl_no":"","eng_sl_no":"","motor_sl_no":"","kilometer_reading":"124","hmr":"124","kilo_date":"1900-12-08","imagename":[],"dte_of_commissing":"2022-09-30","sr_eq_warranty_terms":"","warranty_end_dte":"","sr_war_status":"","type_of_conrt":"","cont_end_date":"","cont_start_date":"","run_year_cont":"0","vis_chk_external_damages":"0","vis_chk_ext_dam":"","vis_chk_ext_dam_img":[],"vis_chk_hydraulic_air_leakages":"1","vis_chk_hyd_air":"","vis_hyd_air_dam_img":[],"vis_chk_lubrication":"1","vis_chk_lub_rem":"","vis_lub_los_img":[],"vis_chk_oil_levels":"1","vis_chk_oil_rem":"","vis_oil_lev_img":[],"vis_chk_work_loseing_hders":"1","vis_chk_wrk_los":"","vis_hyd_wrk_los_img":[],"mt_major_aggrts":"","mt_pdical_maint_type":"","manu_name":"","apmd_whoa":"0","sacfd_dof":"","sacfd_same_slno":"","apmd_ag_sl_no":"","createdtime":"2022-09-21 13:33:43","modifiedby":"Master Admin","creditnote_no":"BEML-SER-REP156","created_user_id":". Sanjay","modifiedtime":"2022-09-30 07:24:11","action_taken_block":"","eq_sta_aft_act_taken":"","restoration_date":"","restoration_time":"","off_on_account_of":"","remarks_for_offroad":"","action_taken_block_seo":"","at_copm":"","genchk_engine":"","genchk_oil_pressure":"","genchk_oil_temperature":"","genchk_coolant_temperature":"","genchk_transmission":"","genchk_brake":"","genchk_air_pressure":"","genchk_electrical":"","genchk_motor":"","genchk_transformer":"","genchk_field_switch":"","genchk_auto_electrical_system":"","genchk_battery_voltage":"","genchk_hi_volt_ele_system":"","genchk_hydraulic":"","genchk_cylinders":"","genchk_oil_cooler":"","genchk_pumps":"","genchk_suspension":"","genchk_structure":"","genchk_air_conditionn":"","genchk_auto_fire_protection":"","genchk_auto_lubrication":"","badge_no":"98801","ser_eng_name":"Akshansh","sr_designaion":"Assistant General Manager","sr_regional_office":"","dist_off_or_act_cen":"","productid":"TEST SALES 01","hdnS_H_Amount":"0.00000000","LineItems":[{"parent_id":"46xArray","productid":"14x87552","sequence_no":"1","productname":"TEST SALES 01","quantity":"20.000","listprice":"0.00000000","discount_percent":"","discount_amount":"","comment":"nothing","description":"","incrementondel":"0","tax1":"","tax2":"","tax3":"","image":"","purchase_cost":"0.00000000","margin":"0.00000000","dependency":"off","duration":"","billing_type":"","netprice":"","margin_percentage":"","markup_percentage":"","sr_action_one":"Repaired","sr_action_two":"","sr_replace_action":"","remarks_by_eng":"","part_recived":"","action_by_service_man":"","purpose_for_sending":"","item_det_division":"","remarks_by_ser_mang":"","replaced_date":"","date_of_submiss":"","collect_immidiately":"0","lid_manual_sl":"","lid_rejected_qty":"0","lid_remarks":"","lid_po_qty":"0","lid_store_locations":"","lid_sto_del_date":"","vendor_item":"","fail_pa_sb_qty":"","fail_pa_pa_status":"","line_vendor_id":"0","lid_msr":"BEML","lid_line_event":"","id":"33x1767","product_name":"TEST SALES 01","entity_type":"Products","lineitem_id":"1767","deleted":"0"}]}

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

/// ticket_id : "TT313"
/// ticket_date : "1900-12-01"
/// reported_by : ""
/// account_id : ""
/// area_name : ""
/// project_name : ""
/// opp_name : "Akshansh"
/// phone : "8210125130"
/// sr_ticket_type : "PERIODICAL MAINTENANCE"
/// fail_de_sap_noti_type : "ZE"
/// tags : ""
/// eq_sr_equip_model : ""
/// equipment_id : ""
/// func_loc_id : ""
/// sr_equip_status : ""
/// sr_hmr : "1900-12-13"
/// trans_sl_no : ""
/// eng_sl_no : ""
/// motor_sl_no : ""
/// kilometer_reading : "124"
/// hmr : "124"
/// kilo_date : "1900-12-08"
/// imagename : []
/// dte_of_commissing : "2022-09-30"
/// sr_eq_warranty_terms : ""
/// warranty_end_dte : ""
/// sr_war_status : ""
/// type_of_conrt : ""
/// cont_end_date : ""
/// cont_start_date : ""
/// run_year_cont : "0"
/// vis_chk_external_damages : "0"
/// vis_chk_ext_dam : ""
/// vis_chk_ext_dam_img : []
/// vis_chk_hydraulic_air_leakages : "1"
/// vis_chk_hyd_air : ""
/// vis_hyd_air_dam_img : []
/// vis_chk_lubrication : "1"
/// vis_chk_lub_rem : ""
/// vis_lub_los_img : []
/// vis_chk_oil_levels : "1"
/// vis_chk_oil_rem : ""
/// vis_oil_lev_img : []
/// vis_chk_work_loseing_hders : "1"
/// vis_chk_wrk_los : ""
/// vis_hyd_wrk_los_img : []
/// mt_major_aggrts : ""
/// mt_pdical_maint_type : ""
/// manu_name : ""
/// apmd_whoa : "0"
/// sacfd_dof : ""
/// sacfd_same_slno : ""
/// apmd_ag_sl_no : ""
/// createdtime : "2022-09-21 13:33:43"
/// modifiedby : "Master Admin"
/// creditnote_no : "BEML-SER-REP156"
/// created_user_id : ". Sanjay"
/// modifiedtime : "2022-09-30 07:24:11"
/// action_taken_block : ""
/// eq_sta_aft_act_taken : ""
/// restoration_date : ""
/// restoration_time : ""
/// off_on_account_of : ""
/// remarks_for_offroad : ""
/// action_taken_block_seo : ""
/// at_copm : ""
/// genchk_engine : ""
/// genchk_oil_pressure : ""
/// genchk_oil_temperature : ""
/// genchk_coolant_temperature : ""
/// genchk_transmission : ""
/// genchk_brake : ""
/// genchk_air_pressure : ""
/// genchk_electrical : ""
/// genchk_motor : ""
/// genchk_transformer : ""
/// genchk_field_switch : ""
/// genchk_auto_electrical_system : ""
/// genchk_battery_voltage : ""
/// genchk_hi_volt_ele_system : ""
/// genchk_hydraulic : ""
/// genchk_cylinders : ""
/// genchk_oil_cooler : ""
/// genchk_pumps : ""
/// genchk_suspension : ""
/// genchk_structure : ""
/// genchk_air_conditionn : ""
/// genchk_auto_fire_protection : ""
/// genchk_auto_lubrication : ""
/// badge_no : "98801"
/// ser_eng_name : "Akshansh"
/// sr_designaion : "Assistant General Manager"
/// sr_regional_office : ""
/// dist_off_or_act_cen : ""
/// productid : "TEST SALES 01"
/// hdnS_H_Amount : "0.00000000"
/// LineItems : [{"parent_id":"46xArray","productid":"14x87552","sequence_no":"1","productname":"TEST SALES 01","quantity":"20.000","listprice":"0.00000000","discount_percent":"","discount_amount":"","comment":"nothing","description":"","incrementondel":"0","tax1":"","tax2":"","tax3":"","image":"","purchase_cost":"0.00000000","margin":"0.00000000","dependency":"off","duration":"","billing_type":"","netprice":"","margin_percentage":"","markup_percentage":"","sr_action_one":"Repaired","sr_action_two":"","sr_replace_action":"","remarks_by_eng":"","part_recived":"","action_by_service_man":"","purpose_for_sending":"","item_det_division":"","remarks_by_ser_mang":"","replaced_date":"","date_of_submiss":"","collect_immidiately":"0","lid_manual_sl":"","lid_rejected_qty":"0","lid_remarks":"","lid_po_qty":"0","lid_store_locations":"","lid_sto_del_date":"","vendor_item":"","fail_pa_sb_qty":"","fail_pa_pa_status":"","line_vendor_id":"0","lid_msr":"BEML","lid_line_event":"","id":"33x1767","product_name":"TEST SALES 01","entity_type":"Products","lineitem_id":"1767","deleted":"0"}]

Record recordFromJson(String str) => Record.fromJson(json.decode(str));
String recordToJson(Record data) => json.encode(data.toJson());

class Record {
  Record({
    String? ticketId,
    String? ticketDate,
    String? reportedBy,
    String? accountId,
    String? areaName,
    String? projectName,
    String? oppName,
    String? phone,
    String? srTicketType,
    String? failDeSapNotiType,
    String? tags,
    String? eqSrEquipModel,
    String? equipmentId,
    String? funcLocId,
    String? srEquipStatus,
    String? srHmr,
    String? transSlNo,
    String? engSlNo,
    String? motorSlNo,
    String? kilometerReading,
    String? hmr,
    String? kiloDate,
    List<dynamic>? imagename,
    String? dteOfCommissing,
    String? srEqWarrantyTerms,
    String? warrantyEndDte,
    String? srWarStatus,
    String? typeOfConrt,
    String? contEndDate,
    String? contStartDate,
    String? runYearCont,
    String? visChkExternalDamages,
    String? visChkExtDam,
    List<dynamic>? visChkExtDamImg,
    String? visChkHydraulicAirLeakages,
    String? visChkHydAir,
    List<dynamic>? visHydAirDamImg,
    String? visChkLubrication,
    String? visChkLubRem,
    List<dynamic>? visLubLosImg,
    String? visChkOilLevels,
    String? visChkOilRem,
    List<dynamic>? visOilLevImg,
    String? visChkWorkLoseingHders,
    String? visChkWrkLos,
    List<dynamic>? visHydWrkLosImg,
    String? mtMajorAggrts,
    String? mtPdicalMaintType,
    String? manuName,
    String? apmdWhoa,
    String? sacfdDof,
    String? sacfdSameSlno,
    String? apmdAgSlNo,
    String? createdtime,
    String? modifiedby,
    String? creditnoteNo,
    String? createdUserId,
    String? modifiedtime,
    String? actionTakenBlock,
    String? eqStaAftActTaken,
    String? restorationDate,
    String? restorationTime,
    String? offOnAccountOf,
    String? remarksForOffroad,
    String? actionTakenBlockSeo,
    String? atCopm,
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
    String? genchkHiVoltEleSystem,
    String? genchkHydraulic,
    String? genchkCylinders,
    String? genchkOilCooler,
    String? genchkPumps,
    String? genchkSuspension,
    String? genchkStructure,
    String? genchkAirConditionn,
    String? genchkAutoFireProtection,
    String? genchkAutoLubrication,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
    String? srRegionalOffice,
    String? distOffOrActCen,
    String? productid,
    String? hdnSHAmount,
    List<LineItems>? lineItems,
  }) {
    _ticketId = ticketId;
    _ticketDate = ticketDate;
    _reportedBy = reportedBy;
    _accountId = accountId;
    _areaName = areaName;
    _projectName = projectName;
    _oppName = oppName;
    _phone = phone;
    _srTicketType = srTicketType;
    _failDeSapNotiType = failDeSapNotiType;
    _tags = tags;
    _eqSrEquipModel = eqSrEquipModel;
    _equipmentId = equipmentId;
    _funcLocId = funcLocId;
    _srEquipStatus = srEquipStatus;
    _srHmr = srHmr;
    _transSlNo = transSlNo;
    _engSlNo = engSlNo;
    _motorSlNo = motorSlNo;
    _kilometerReading = kilometerReading;
    _hmr = hmr;
    _kiloDate = kiloDate;
    _imagename = imagename;
    _dteOfCommissing = dteOfCommissing;
    _srEqWarrantyTerms = srEqWarrantyTerms;
    _warrantyEndDte = warrantyEndDte;
    _srWarStatus = srWarStatus;
    _typeOfConrt = typeOfConrt;
    _contEndDate = contEndDate;
    _contStartDate = contStartDate;
    _runYearCont = runYearCont;
    _visChkExternalDamages = visChkExternalDamages;
    _visChkExtDam = visChkExtDam;
    _visChkExtDamImg = visChkExtDamImg;
    _visChkHydraulicAirLeakages = visChkHydraulicAirLeakages;
    _visChkHydAir = visChkHydAir;
    _visHydAirDamImg = visHydAirDamImg;
    _visChkLubrication = visChkLubrication;
    _visChkLubRem = visChkLubRem;
    _visLubLosImg = visLubLosImg;
    _visChkOilLevels = visChkOilLevels;
    _visChkOilRem = visChkOilRem;
    _visOilLevImg = visOilLevImg;
    _visChkWorkLoseingHders = visChkWorkLoseingHders;
    _visChkWrkLos = visChkWrkLos;
    _visHydWrkLosImg = visHydWrkLosImg;
    _mtMajorAggrts = mtMajorAggrts;
    _mtPdicalMaintType = mtPdicalMaintType;
    _manuName = manuName;
    _apmdWhoa = apmdWhoa;
    _sacfdDof = sacfdDof;
    _sacfdSameSlno = sacfdSameSlno;
    _apmdAgSlNo = apmdAgSlNo;
    _createdtime = createdtime;
    _modifiedby = modifiedby;
    _creditnoteNo = creditnoteNo;
    _createdUserId = createdUserId;
    _modifiedtime = modifiedtime;
    _actionTakenBlock = actionTakenBlock;
    _eqStaAftActTaken = eqStaAftActTaken;
    _restorationDate = restorationDate;
    _restorationTime = restorationTime;
    _offOnAccountOf = offOnAccountOf;
    _remarksForOffroad = remarksForOffroad;
    _actionTakenBlockSeo = actionTakenBlockSeo;
    _atCopm = atCopm;
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
    _genchkHiVoltEleSystem = genchkHiVoltEleSystem;
    _genchkHydraulic = genchkHydraulic;
    _genchkCylinders = genchkCylinders;
    _genchkOilCooler = genchkOilCooler;
    _genchkPumps = genchkPumps;
    _genchkSuspension = genchkSuspension;
    _genchkStructure = genchkStructure;
    _genchkAirConditionn = genchkAirConditionn;
    _genchkAutoFireProtection = genchkAutoFireProtection;
    _genchkAutoLubrication = genchkAutoLubrication;
    _badgeNo = badgeNo;
    _serEngName = serEngName;
    _srDesignaion = srDesignaion;
    _srRegionalOffice = srRegionalOffice;
    _distOffOrActCen = distOffOrActCen;
    _productid = productid;
    _hdnSHAmount = hdnSHAmount;
    _lineItems = lineItems;
  }

  Record.fromJson(dynamic json) {
    _ticketId = json['ticket_id'];
    _ticketDate = json['ticket_date'];
    _reportedBy = json['reported_by'];
    _accountId = json['account_id'];
    _areaName = json['area_name'];
    _projectName = json['project_name'];
    _oppName = json['opp_name'];
    _phone = json['phone'];
    _srTicketType = json['sr_ticket_type'];
    _failDeSapNotiType = json['fail_de_sap_noti_type'];
    _tags = json['tags'];
    _eqSrEquipModel = json['eq_sr_equip_model'];
    _equipmentId = json['equipment_id'];
    _funcLocId = json['func_loc_id'];
    _srEquipStatus = json['sr_equip_status'];
    _srHmr = json['sr_hmr'];
    _transSlNo = json['trans_sl_no'];
    _engSlNo = json['eng_sl_no'];
    _motorSlNo = json['motor_sl_no'];
    _kilometerReading = json['kilometer_reading'];
    _hmr = json['hmr'];
    _kiloDate = json['kilo_date'];
    if (json['imagename'] != null) {
      // _imagename = [];
      // json['imagename'].forEach((v) {
      //   _imagename?.add(Dynamic.fromJson(v));
      // });
    }
    _dteOfCommissing = json['dte_of_commissing'];
    _srEqWarrantyTerms = json['sr_eq_warranty_terms'];
    _warrantyEndDte = json['warranty_end_dte'];
    _srWarStatus = json['sr_war_status'];
    _typeOfConrt = json['type_of_conrt'];
    _contEndDate = json['cont_end_date'];
    _contStartDate = json['cont_start_date'];
    _runYearCont = json['run_year_cont'];
    _visChkExternalDamages = json['vis_chk_external_damages'];
    _visChkExtDam = json['vis_chk_ext_dam'];
    if (json['vis_chk_ext_dam_img'] != null) {
      // _visChkExtDamImg = [];
      // json['vis_chk_ext_dam_img'].forEach((v) {
      //   _visChkExtDamImg?.add(Dynamic.fromJson(v));
      // });
    }
    _visChkHydraulicAirLeakages = json['vis_chk_hydraulic_air_leakages'];
    _visChkHydAir = json['vis_chk_hyd_air'];
    if (json['vis_hyd_air_dam_img'] != null) {
      // _visHydAirDamImg = [];
      // json['vis_hyd_air_dam_img'].forEach((v) {
      //   _visHydAirDamImg?.add(Dynamic.fromJson(v));
      // });
    }
    _visChkLubrication = json['vis_chk_lubrication'];
    _visChkLubRem = json['vis_chk_lub_rem'];
    if (json['vis_lub_los_img'] != null) {
      // _visLubLosImg = [];
      // json['vis_lub_los_img'].forEach((v) {
      //   _visLubLosImg?.add(Dynamic.fromJson(v));
      // });
    }
    _visChkOilLevels = json['vis_chk_oil_levels'];
    _visChkOilRem = json['vis_chk_oil_rem'];
    if (json['vis_oil_lev_img'] != null) {}
    _visChkWorkLoseingHders = json['vis_chk_work_loseing_hders'];
    _visChkWrkLos = json['vis_chk_wrk_los'];
    if (json['vis_hyd_wrk_los_img'] != null) {
      // _visHydWrkLosImg = [];
      // json['vis_hyd_wrk_los_img'].forEach((v) {
      //   _visHydWrkLosImg?.add(Dynamic.fromJson(v));
      // });
    }
    _mtMajorAggrts = json['mt_major_aggrts'];
    _mtPdicalMaintType = json['mt_pdical_maint_type'];
    _manuName = json['manu_name'];
    _apmdWhoa = json['apmd_whoa'];
    _sacfdDof = json['sacfd_dof'];
    _sacfdSameSlno = json['sacfd_same_slno'];
    _apmdAgSlNo = json['apmd_ag_sl_no'];
    _createdtime = json['createdtime'];
    _modifiedby = json['modifiedby'];
    _creditnoteNo = json['creditnote_no'];
    _createdUserId = json['created_user_id'];
    _modifiedtime = json['modifiedtime'];
    _actionTakenBlock = json['action_taken_block'];
    _eqStaAftActTaken = json['eq_sta_aft_act_taken'];
    _restorationDate = json['restoration_date'];
    _restorationTime = json['restoration_time'];
    _offOnAccountOf = json['off_on_account_of'];
    _remarksForOffroad = json['remarks_for_offroad'];
    _actionTakenBlockSeo = json['action_taken_block_seo'];
    _atCopm = json['at_copm'];
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
    _genchkHiVoltEleSystem = json['genchk_hi_volt_ele_system'];
    _genchkHydraulic = json['genchk_hydraulic'];
    _genchkCylinders = json['genchk_cylinders'];
    _genchkOilCooler = json['genchk_oil_cooler'];
    _genchkPumps = json['genchk_pumps'];
    _genchkSuspension = json['genchk_suspension'];
    _genchkStructure = json['genchk_structure'];
    _genchkAirConditionn = json['genchk_air_conditionn'];
    _genchkAutoFireProtection = json['genchk_auto_fire_protection'];
    _genchkAutoLubrication = json['genchk_auto_lubrication'];
    _badgeNo = json['badge_no'];
    _serEngName = json['ser_eng_name'];
    _srDesignaion = json['sr_designaion'];
    _srRegionalOffice = json['sr_regional_office'];
    _distOffOrActCen = json['dist_off_or_act_cen'];
    _productid = json['productid'];
    _hdnSHAmount = json['hdnS_H_Amount'];
    if (json['LineItems'] != null) {
      _lineItems = [];
      json['LineItems'].forEach((v) {
        _lineItems?.add(LineItems.fromJson(v));
      });
    }
  }
  String? _ticketId;
  String? _ticketDate;
  String? _reportedBy;
  String? _accountId;
  String? _areaName;
  String? _projectName;
  String? _oppName;
  String? _phone;
  String? _srTicketType;
  String? _failDeSapNotiType;
  String? _tags;
  String? _eqSrEquipModel;
  String? _equipmentId;
  String? _funcLocId;
  String? _srEquipStatus;
  String? _srHmr;
  String? _transSlNo;
  String? _engSlNo;
  String? _motorSlNo;
  String? _kilometerReading;
  String? _hmr;
  String? _kiloDate;
  List<dynamic>? _imagename;
  String? _dteOfCommissing;
  String? _srEqWarrantyTerms;
  String? _warrantyEndDte;
  String? _srWarStatus;
  String? _typeOfConrt;
  String? _contEndDate;
  String? _contStartDate;
  String? _runYearCont;
  String? _visChkExternalDamages;
  String? _visChkExtDam;
  List<dynamic>? _visChkExtDamImg;
  String? _visChkHydraulicAirLeakages;
  String? _visChkHydAir;
  List<dynamic>? _visHydAirDamImg;
  String? _visChkLubrication;
  String? _visChkLubRem;
  List<dynamic>? _visLubLosImg;
  String? _visChkOilLevels;
  String? _visChkOilRem;
  List<dynamic>? _visOilLevImg;
  String? _visChkWorkLoseingHders;
  String? _visChkWrkLos;
  List<dynamic>? _visHydWrkLosImg;
  String? _mtMajorAggrts;
  String? _mtPdicalMaintType;
  String? _manuName;
  String? _apmdWhoa;
  String? _sacfdDof;
  String? _sacfdSameSlno;
  String? _apmdAgSlNo;
  String? _createdtime;
  String? _modifiedby;
  String? _creditnoteNo;
  String? _createdUserId;
  String? _modifiedtime;
  String? _actionTakenBlock;
  String? _eqStaAftActTaken;
  String? _restorationDate;
  String? _restorationTime;
  String? _offOnAccountOf;
  String? _remarksForOffroad;
  String? _actionTakenBlockSeo;
  String? _atCopm;
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
  String? _genchkHiVoltEleSystem;
  String? _genchkHydraulic;
  String? _genchkCylinders;
  String? _genchkOilCooler;
  String? _genchkPumps;
  String? _genchkSuspension;
  String? _genchkStructure;
  String? _genchkAirConditionn;
  String? _genchkAutoFireProtection;
  String? _genchkAutoLubrication;
  String? _badgeNo;
  String? _serEngName;
  String? _srDesignaion;
  String? _srRegionalOffice;
  String? _distOffOrActCen;
  String? _productid;
  String? _hdnSHAmount;
  List<LineItems>? _lineItems;
  Record copyWith({
    String? ticketId,
    String? ticketDate,
    String? reportedBy,
    String? accountId,
    String? areaName,
    String? projectName,
    String? oppName,
    String? phone,
    String? srTicketType,
    String? failDeSapNotiType,
    String? tags,
    String? eqSrEquipModel,
    String? equipmentId,
    String? funcLocId,
    String? srEquipStatus,
    String? srHmr,
    String? transSlNo,
    String? engSlNo,
    String? motorSlNo,
    String? kilometerReading,
    String? hmr,
    String? kiloDate,
    List<dynamic>? imagename,
    String? dteOfCommissing,
    String? srEqWarrantyTerms,
    String? warrantyEndDte,
    String? srWarStatus,
    String? typeOfConrt,
    String? contEndDate,
    String? contStartDate,
    String? runYearCont,
    String? visChkExternalDamages,
    String? visChkExtDam,
    List<dynamic>? visChkExtDamImg,
    String? visChkHydraulicAirLeakages,
    String? visChkHydAir,
    List<dynamic>? visHydAirDamImg,
    String? visChkLubrication,
    String? visChkLubRem,
    List<dynamic>? visLubLosImg,
    String? visChkOilLevels,
    String? visChkOilRem,
    List<dynamic>? visOilLevImg,
    String? visChkWorkLoseingHders,
    String? visChkWrkLos,
    List<dynamic>? visHydWrkLosImg,
    String? mtMajorAggrts,
    String? mtPdicalMaintType,
    String? manuName,
    String? apmdWhoa,
    String? sacfdDof,
    String? sacfdSameSlno,
    String? apmdAgSlNo,
    String? createdtime,
    String? modifiedby,
    String? creditnoteNo,
    String? createdUserId,
    String? modifiedtime,
    String? actionTakenBlock,
    String? eqStaAftActTaken,
    String? restorationDate,
    String? restorationTime,
    String? offOnAccountOf,
    String? remarksForOffroad,
    String? actionTakenBlockSeo,
    String? atCopm,
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
    String? genchkHiVoltEleSystem,
    String? genchkHydraulic,
    String? genchkCylinders,
    String? genchkOilCooler,
    String? genchkPumps,
    String? genchkSuspension,
    String? genchkStructure,
    String? genchkAirConditionn,
    String? genchkAutoFireProtection,
    String? genchkAutoLubrication,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
    String? srRegionalOffice,
    String? distOffOrActCen,
    String? productid,
    String? hdnSHAmount,
    List<LineItems>? lineItems,
  }) =>
      Record(
        ticketId: ticketId ?? _ticketId,
        ticketDate: ticketDate ?? _ticketDate,
        reportedBy: reportedBy ?? _reportedBy,
        accountId: accountId ?? _accountId,
        areaName: areaName ?? _areaName,
        projectName: projectName ?? _projectName,
        oppName: oppName ?? _oppName,
        phone: phone ?? _phone,
        srTicketType: srTicketType ?? _srTicketType,
        failDeSapNotiType: failDeSapNotiType ?? _failDeSapNotiType,
        tags: tags ?? _tags,
        eqSrEquipModel: eqSrEquipModel ?? _eqSrEquipModel,
        equipmentId: equipmentId ?? _equipmentId,
        funcLocId: funcLocId ?? _funcLocId,
        srEquipStatus: srEquipStatus ?? _srEquipStatus,
        srHmr: srHmr ?? _srHmr,
        transSlNo: transSlNo ?? _transSlNo,
        engSlNo: engSlNo ?? _engSlNo,
        motorSlNo: motorSlNo ?? _motorSlNo,
        kilometerReading: kilometerReading ?? _kilometerReading,
        hmr: hmr ?? _hmr,
        kiloDate: kiloDate ?? _kiloDate,
        imagename: imagename ?? _imagename,
        dteOfCommissing: dteOfCommissing ?? _dteOfCommissing,
        srEqWarrantyTerms: srEqWarrantyTerms ?? _srEqWarrantyTerms,
        warrantyEndDte: warrantyEndDte ?? _warrantyEndDte,
        srWarStatus: srWarStatus ?? _srWarStatus,
        typeOfConrt: typeOfConrt ?? _typeOfConrt,
        contEndDate: contEndDate ?? _contEndDate,
        contStartDate: contStartDate ?? _contStartDate,
        runYearCont: runYearCont ?? _runYearCont,
        visChkExternalDamages: visChkExternalDamages ?? _visChkExternalDamages,
        visChkExtDam: visChkExtDam ?? _visChkExtDam,
        visChkExtDamImg: visChkExtDamImg ?? _visChkExtDamImg,
        visChkHydraulicAirLeakages:
            visChkHydraulicAirLeakages ?? _visChkHydraulicAirLeakages,
        visChkHydAir: visChkHydAir ?? _visChkHydAir,
        visHydAirDamImg: visHydAirDamImg ?? _visHydAirDamImg,
        visChkLubrication: visChkLubrication ?? _visChkLubrication,
        visChkLubRem: visChkLubRem ?? _visChkLubRem,
        visLubLosImg: visLubLosImg ?? _visLubLosImg,
        visChkOilLevels: visChkOilLevels ?? _visChkOilLevels,
        visChkOilRem: visChkOilRem ?? _visChkOilRem,
        visOilLevImg: visOilLevImg ?? _visOilLevImg,
        visChkWorkLoseingHders:
            visChkWorkLoseingHders ?? _visChkWorkLoseingHders,
        visChkWrkLos: visChkWrkLos ?? _visChkWrkLos,
        visHydWrkLosImg: visHydWrkLosImg ?? _visHydWrkLosImg,
        mtMajorAggrts: mtMajorAggrts ?? _mtMajorAggrts,
        mtPdicalMaintType: mtPdicalMaintType ?? _mtPdicalMaintType,
        manuName: manuName ?? _manuName,
        apmdWhoa: apmdWhoa ?? _apmdWhoa,
        sacfdDof: sacfdDof ?? _sacfdDof,
        sacfdSameSlno: sacfdSameSlno ?? _sacfdSameSlno,
        apmdAgSlNo: apmdAgSlNo ?? _apmdAgSlNo,
        createdtime: createdtime ?? _createdtime,
        modifiedby: modifiedby ?? _modifiedby,
        creditnoteNo: creditnoteNo ?? _creditnoteNo,
        createdUserId: createdUserId ?? _createdUserId,
        modifiedtime: modifiedtime ?? _modifiedtime,
        actionTakenBlock: actionTakenBlock ?? _actionTakenBlock,
        eqStaAftActTaken: eqStaAftActTaken ?? _eqStaAftActTaken,
        restorationDate: restorationDate ?? _restorationDate,
        restorationTime: restorationTime ?? _restorationTime,
        offOnAccountOf: offOnAccountOf ?? _offOnAccountOf,
        remarksForOffroad: remarksForOffroad ?? _remarksForOffroad,
        actionTakenBlockSeo: actionTakenBlockSeo ?? _actionTakenBlockSeo,
        atCopm: atCopm ?? _atCopm,
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
        genchkHiVoltEleSystem: genchkHiVoltEleSystem ?? _genchkHiVoltEleSystem,
        genchkHydraulic: genchkHydraulic ?? _genchkHydraulic,
        genchkCylinders: genchkCylinders ?? _genchkCylinders,
        genchkOilCooler: genchkOilCooler ?? _genchkOilCooler,
        genchkPumps: genchkPumps ?? _genchkPumps,
        genchkSuspension: genchkSuspension ?? _genchkSuspension,
        genchkStructure: genchkStructure ?? _genchkStructure,
        genchkAirConditionn: genchkAirConditionn ?? _genchkAirConditionn,
        genchkAutoFireProtection:
            genchkAutoFireProtection ?? _genchkAutoFireProtection,
        genchkAutoLubrication: genchkAutoLubrication ?? _genchkAutoLubrication,
        badgeNo: badgeNo ?? _badgeNo,
        serEngName: serEngName ?? _serEngName,
        srDesignaion: srDesignaion ?? _srDesignaion,
        srRegionalOffice: srRegionalOffice ?? _srRegionalOffice,
        distOffOrActCen: distOffOrActCen ?? _distOffOrActCen,
        productid: productid ?? _productid,
        hdnSHAmount: hdnSHAmount ?? _hdnSHAmount,
        lineItems: lineItems ?? _lineItems,
      );
  String? get ticketId => _ticketId;
  String? get ticketDate => _ticketDate;
  String? get reportedBy => _reportedBy;
  String? get accountId => _accountId;
  String? get areaName => _areaName;
  String? get projectName => _projectName;
  String? get oppName => _oppName;
  String? get phone => _phone;
  String? get srTicketType => _srTicketType;
  String? get failDeSapNotiType => _failDeSapNotiType;
  String? get tags => _tags;
  String? get eqSrEquipModel => _eqSrEquipModel;
  String? get equipmentId => _equipmentId;
  String? get funcLocId => _funcLocId;
  String? get srEquipStatus => _srEquipStatus;
  String? get srHmr => _srHmr;
  String? get transSlNo => _transSlNo;
  String? get engSlNo => _engSlNo;
  String? get motorSlNo => _motorSlNo;
  String? get kilometerReading => _kilometerReading;
  String? get hmr => _hmr;
  String? get kiloDate => _kiloDate;
  List<dynamic>? get imagename => _imagename;

  String? get dteOfCommissing => _dteOfCommissing;
  String? get srEqWarrantyTerms => _srEqWarrantyTerms;
  String? get warrantyEndDte => _warrantyEndDte;
  String? get srWarStatus => _srWarStatus;
  String? get typeOfConrt => _typeOfConrt;
  String? get contEndDate => _contEndDate;
  String? get contStartDate => _contStartDate;
  String? get runYearCont => _runYearCont;

  String? get visChkExternalDamages => _visChkExternalDamages;
  String? get visChkExtDam => _visChkExtDam;
  List<dynamic>? get visChkExtDamImg => _visChkExtDamImg;
  String? get visChkHydraulicAirLeakages => _visChkHydraulicAirLeakages;
  String? get visChkHydAir => _visChkHydAir;
  List<dynamic>? get visHydAirDamImg => _visHydAirDamImg;
  String? get visChkLubrication => _visChkLubrication;
  String? get visChkLubRem => _visChkLubRem;
  List<dynamic>? get visLubLosImg => _visLubLosImg;
  String? get visChkOilLevels => _visChkOilLevels;
  String? get visChkOilRem => _visChkOilRem;
  List<dynamic>? get visOilLevImg => _visOilLevImg;
  String? get visChkWorkLoseingHders => _visChkWorkLoseingHders;
  String? get visChkWrkLos => _visChkWrkLos;
  List<dynamic>? get visHydWrkLosImg => _visHydWrkLosImg;
  String? get mtMajorAggrts => _mtMajorAggrts;
  String? get mtPdicalMaintType => _mtPdicalMaintType;
  String? get manuName => _manuName;
  String? get apmdWhoa => _apmdWhoa;
  String? get sacfdDof => _sacfdDof;
  String? get sacfdSameSlno => _sacfdSameSlno;
  String? get apmdAgSlNo => _apmdAgSlNo;
  String? get createdtime => _createdtime;
  String? get modifiedby => _modifiedby;
  String? get creditnoteNo => _creditnoteNo;
  String? get createdUserId => _createdUserId;
  String? get modifiedtime => _modifiedtime;
  String? get actionTakenBlock => _actionTakenBlock;
  String? get eqStaAftActTaken => _eqStaAftActTaken;
  String? get restorationDate => _restorationDate;
  String? get restorationTime => _restorationTime;
  String? get offOnAccountOf => _offOnAccountOf;
  String? get remarksForOffroad => _remarksForOffroad;
  String? get actionTakenBlockSeo => _actionTakenBlockSeo;
  String? get atCopm => _atCopm;
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
  String? get genchkHiVoltEleSystem => _genchkHiVoltEleSystem;
  String? get genchkHydraulic => _genchkHydraulic;
  String? get genchkCylinders => _genchkCylinders;
  String? get genchkOilCooler => _genchkOilCooler;
  String? get genchkPumps => _genchkPumps;
  String? get genchkSuspension => _genchkSuspension;
  String? get genchkStructure => _genchkStructure;
  String? get genchkAirConditionn => _genchkAirConditionn;
  String? get genchkAutoFireProtection => _genchkAutoFireProtection;
  String? get genchkAutoLubrication => _genchkAutoLubrication;
  String? get badgeNo => _badgeNo;
  String? get serEngName => _serEngName;
  String? get srDesignaion => _srDesignaion;
  String? get srRegionalOffice => _srRegionalOffice;
  String? get distOffOrActCen => _distOffOrActCen;
  String? get productid => _productid;
  String? get hdnSHAmount => _hdnSHAmount;
  List<LineItems>? get lineItems => _lineItems;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ticket_id'] = _ticketId;
    map['ticket_date'] = _ticketDate;
    map['reported_by'] = _reportedBy;
    map['account_id'] = _accountId;
    map['area_name'] = _areaName;
    map['project_name'] = _projectName;
    map['opp_name'] = _oppName;
    map['phone'] = _phone;
    map['sr_ticket_type'] = _srTicketType;
    map['fail_de_sap_noti_type'] = _failDeSapNotiType;
    map['tags'] = _tags;
    map['eq_sr_equip_model'] = _eqSrEquipModel;
    map['equipment_id'] = _equipmentId;
    map['func_loc_id'] = _funcLocId;
    map['sr_equip_status'] = _srEquipStatus;
    map['sr_hmr'] = _srHmr;
    map['trans_sl_no'] = _transSlNo;
    map['eng_sl_no'] = _engSlNo;
    map['motor_sl_no'] = _motorSlNo;
    map['kilometer_reading'] = _kilometerReading;
    map['hmr'] = _hmr;
    map['kilo_date'] = _kiloDate;
    if (_imagename != null) {
      map['imagename'] = _imagename?.map((v) => v.toJson()).toList();
    }
    map['dte_of_commissing'] = _dteOfCommissing;
    map['sr_eq_warranty_terms'] = _srEqWarrantyTerms;
    map['warranty_end_dte'] = _warrantyEndDte;
    map['sr_war_status'] = _srWarStatus;
    map['type_of_conrt'] = _typeOfConrt;
    map['cont_end_date'] = _contEndDate;
    map['cont_start_date'] = _contStartDate;
    map['run_year_cont'] = _runYearCont;
    map['vis_chk_external_damages'] = _visChkExternalDamages;
    map['vis_chk_ext_dam'] = _visChkExtDam;
    if (_visChkExtDamImg != null) {
      map['vis_chk_ext_dam_img'] =
          _visChkExtDamImg?.map((v) => v.toJson()).toList();
    }
    map['vis_chk_hydraulic_air_leakages'] = _visChkHydraulicAirLeakages;
    map['vis_chk_hyd_air'] = _visChkHydAir;
    if (_visHydAirDamImg != null) {
      map['vis_hyd_air_dam_img'] =
          _visHydAirDamImg?.map((v) => v.toJson()).toList();
    }
    map['vis_chk_lubrication'] = _visChkLubrication;
    map['vis_chk_lub_rem'] = _visChkLubRem;
    if (_visLubLosImg != null) {
      map['vis_lub_los_img'] = _visLubLosImg?.map((v) => v.toJson()).toList();
    }
    map['vis_chk_oil_levels'] = _visChkOilLevels;
    map['vis_chk_oil_rem'] = _visChkOilRem;
    if (_visOilLevImg != null) {
      map['vis_oil_lev_img'] = _visOilLevImg?.map((v) => v.toJson()).toList();
    }
    map['vis_chk_work_loseing_hders'] = _visChkWorkLoseingHders;
    map['vis_chk_wrk_los'] = _visChkWrkLos;
    if (_visHydWrkLosImg != null) {
      map['vis_hyd_wrk_los_img'] =
          _visHydWrkLosImg?.map((v) => v.toJson()).toList();
    }
    map['mt_major_aggrts'] = _mtMajorAggrts;
    map['mt_pdical_maint_type'] = _mtPdicalMaintType;
    map['manu_name'] = _manuName;
    map['apmd_whoa'] = _apmdWhoa;
    map['sacfd_dof'] = _sacfdDof;
    map['sacfd_same_slno'] = _sacfdSameSlno;
    map['apmd_ag_sl_no'] = _apmdAgSlNo;
    map['createdtime'] = _createdtime;
    map['modifiedby'] = _modifiedby;
    map['creditnote_no'] = _creditnoteNo;
    map['created_user_id'] = _createdUserId;
    map['modifiedtime'] = _modifiedtime;
    map['action_taken_block'] = _actionTakenBlock;
    map['eq_sta_aft_act_taken'] = _eqStaAftActTaken;
    map['restoration_date'] = _restorationDate;
    map['restoration_time'] = _restorationTime;
    map['off_on_account_of'] = _offOnAccountOf;
    map['remarks_for_offroad'] = _remarksForOffroad;
    map['action_taken_block_seo'] = _actionTakenBlockSeo;
    map['at_copm'] = _atCopm;
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
    map['genchk_hi_volt_ele_system'] = _genchkHiVoltEleSystem;
    map['genchk_hydraulic'] = _genchkHydraulic;
    map['genchk_cylinders'] = _genchkCylinders;
    map['genchk_oil_cooler'] = _genchkOilCooler;
    map['genchk_pumps'] = _genchkPumps;
    map['genchk_suspension'] = _genchkSuspension;
    map['genchk_structure'] = _genchkStructure;
    map['genchk_air_conditionn'] = _genchkAirConditionn;
    map['genchk_auto_fire_protection'] = _genchkAutoFireProtection;
    map['genchk_auto_lubrication'] = _genchkAutoLubrication;
    map['badge_no'] = _badgeNo;
    map['ser_eng_name'] = _serEngName;
    map['sr_designaion'] = _srDesignaion;
    map['sr_regional_office'] = _srRegionalOffice;
    map['dist_off_or_act_cen'] = _distOffOrActCen;
    map['productid'] = _productid;
    map['hdnS_H_Amount'] = _hdnSHAmount;
    if (_lineItems != null) {
      map['LineItems'] = _lineItems?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// parent_id : "46xArray"
/// productid : "14x87552"
/// sequence_no : "1"
/// productname : "TEST SALES 01"
/// quantity : "20.000"
/// listprice : "0.00000000"
/// discount_percent : ""
/// discount_amount : ""
/// comment : "nothing"
/// description : ""
/// incrementondel : "0"
/// tax1 : ""
/// tax2 : ""
/// tax3 : ""
/// image : ""
/// purchase_cost : "0.00000000"
/// margin : "0.00000000"
/// dependency : "off"
/// duration : ""
/// billing_type : ""
/// netprice : ""
/// margin_percentage : ""
/// markup_percentage : ""
/// sr_action_one : "Repaired"
/// sr_action_two : ""
/// sr_replace_action : ""
/// remarks_by_eng : ""
/// part_recived : ""
/// action_by_service_man : ""
/// purpose_for_sending : ""
/// item_det_division : ""
/// remarks_by_ser_mang : ""
/// replaced_date : ""
/// date_of_submiss : ""
/// collect_immidiately : "0"
/// lid_manual_sl : ""
/// lid_rejected_qty : "0"
/// lid_remarks : ""
/// lid_po_qty : "0"
/// lid_store_locations : ""
/// lid_sto_del_date : ""
/// vendor_item : ""
/// fail_pa_sb_qty : ""
/// fail_pa_pa_status : ""
/// line_vendor_id : "0"
/// lid_msr : "BEML"
/// lid_line_event : ""
/// id : "33x1767"
/// product_name : "TEST SALES 01"
/// entity_type : "Products"
/// lineitem_id : "1767"
/// deleted : "0"

LineItems lineItemsFromJson(String str) => LineItems.fromJson(json.decode(str));
String lineItemsToJson(LineItems data) => json.encode(data.toJson());

class LineItems {
  LineItems({
    String? parentId,
    String? productid,
    String? sequenceNo,
    String? productname,
    String? quantity,
    String? listprice,
    String? discountPercent,
    String? discountAmount,
    String? comment,
    String? description,
    String? incrementondel,
    String? tax1,
    String? tax2,
    String? tax3,
    String? image,
    String? purchaseCost,
    String? margin,
    String? dependency,
    String? duration,
    String? billingType,
    String? netprice,
    String? marginPercentage,
    String? markupPercentage,
    String? srActionOne,
    String? srActionTwo,
    String? srReplaceAction,
    String? remarksByEng,
    String? partRecived,
    String? actionByServiceMan,
    String? purposeForSending,
    String? itemDetDivision,
    String? remarksBySerMang,
    String? replacedDate,
    String? dateOfSubmiss,
    String? collectImmidiately,
    String? lidManualSl,
    String? lidRejectedQty,
    String? lidRemarks,
    String? lidPoQty,
    String? lidStoreLocations,
    String? lidStoDelDate,
    String? vendorItem,
    String? failPaSbQty,
    String? failPaPaStatus,
    String? lineVendorId,
    String? lidMsr,
    String? lidLineEvent,
    String? id,
    String? productName,
    String? entityType,
    String? lineitemId,
    String? deleted,
  }) {
    _parentId = parentId;
    _productid = productid;
    _sequenceNo = sequenceNo;
    _productname = productname;
    _quantity = quantity;
    _listprice = listprice;
    _discountPercent = discountPercent;
    _discountAmount = discountAmount;
    _comment = comment;
    _description = description;
    _incrementondel = incrementondel;
    _tax1 = tax1;
    _tax2 = tax2;
    _tax3 = tax3;
    _image = image;
    _purchaseCost = purchaseCost;
    _margin = margin;
    _dependency = dependency;
    _duration = duration;
    _billingType = billingType;
    _netprice = netprice;
    _marginPercentage = marginPercentage;
    _markupPercentage = markupPercentage;
    _srActionOne = srActionOne;
    _srActionTwo = srActionTwo;
    _srReplaceAction = srReplaceAction;
    _remarksByEng = remarksByEng;
    _partRecived = partRecived;
    _actionByServiceMan = actionByServiceMan;
    _purposeForSending = purposeForSending;
    _itemDetDivision = itemDetDivision;
    _remarksBySerMang = remarksBySerMang;
    _replacedDate = replacedDate;
    _dateOfSubmiss = dateOfSubmiss;
    _collectImmidiately = collectImmidiately;
    _lidManualSl = lidManualSl;
    _lidRejectedQty = lidRejectedQty;
    _lidRemarks = lidRemarks;
    _lidPoQty = lidPoQty;
    _lidStoreLocations = lidStoreLocations;
    _lidStoDelDate = lidStoDelDate;
    _vendorItem = vendorItem;
    _failPaSbQty = failPaSbQty;
    _failPaPaStatus = failPaPaStatus;
    _lineVendorId = lineVendorId;
    _lidMsr = lidMsr;
    _lidLineEvent = lidLineEvent;
    _id = id;
    _productName = productName;
    _entityType = entityType;
    _lineitemId = lineitemId;
    _deleted = deleted;
  }

  LineItems.fromJson(dynamic json) {
    _parentId = json['parent_id'];
    _productid = json['productid'];
    _sequenceNo = json['sequence_no'];
    _productname = json['productname'];
    _quantity = json['quantity'];
    _listprice = json['listprice'];
    _discountPercent = json['discount_percent'];
    _discountAmount = json['discount_amount'];
    _comment = json['comment'];
    _description = json['description'];
    _incrementondel = json['incrementondel'];
    _tax1 = json['tax1'];
    _tax2 = json['tax2'];
    _tax3 = json['tax3'];
    _image = json['image'];
    _purchaseCost = json['purchase_cost'];
    _margin = json['margin'];
    _dependency = json['dependency'];
    _duration = json['duration'];
    _billingType = json['billing_type'];
    _netprice = json['netprice'];
    _marginPercentage = json['margin_percentage'];
    _markupPercentage = json['markup_percentage'];
    _srActionOne = json['sr_action_one'];
    _srActionTwo = json['sr_action_two'];
    _srReplaceAction = json['sr_replace_action'];
    _remarksByEng = json['remarks_by_eng'];
    _partRecived = json['part_recived'];
    _actionByServiceMan = json['action_by_service_man'];
    _purposeForSending = json['purpose_for_sending'];
    _itemDetDivision = json['item_det_division'];
    _remarksBySerMang = json['remarks_by_ser_mang'];
    _replacedDate = json['replaced_date'];
    _dateOfSubmiss = json['date_of_submiss'];
    _collectImmidiately = json['collect_immidiately'];
    _lidManualSl = json['lid_manual_sl'];
    _lidRejectedQty = json['lid_rejected_qty'];
    _lidRemarks = json['lid_remarks'];
    _lidPoQty = json['lid_po_qty'];
    _lidStoreLocations = json['lid_store_locations'];
    _lidStoDelDate = json['lid_sto_del_date'];
    _vendorItem = json['vendor_item'];
    _failPaSbQty = json['fail_pa_sb_qty'];
    _failPaPaStatus = json['fail_pa_pa_status'];
    _lineVendorId = json['line_vendor_id'];
    _lidMsr = json['lid_msr'];
    _lidLineEvent = json['lid_line_event'];
    _id = json['id'];
    _productName = json['product_name'];
    _entityType = json['entity_type'];
    _lineitemId = json['lineitem_id'];
    _deleted = json['deleted'];
  }
  String? _parentId;
  String? _productid;
  String? _sequenceNo;
  String? _productname;
  String? _quantity;
  String? _listprice;
  String? _discountPercent;
  String? _discountAmount;
  String? _comment;
  String? _description;
  String? _incrementondel;
  String? _tax1;
  String? _tax2;
  String? _tax3;
  String? _image;
  String? _purchaseCost;
  String? _margin;
  String? _dependency;
  String? _duration;
  String? _billingType;
  String? _netprice;
  String? _marginPercentage;
  String? _markupPercentage;
  String? _srActionOne;
  String? _srActionTwo;
  String? _srReplaceAction;
  String? _remarksByEng;
  String? _partRecived;
  String? _actionByServiceMan;
  String? _purposeForSending;
  String? _itemDetDivision;
  String? _remarksBySerMang;
  String? _replacedDate;
  String? _dateOfSubmiss;
  String? _collectImmidiately;
  String? _lidManualSl;
  String? _lidRejectedQty;
  String? _lidRemarks;
  String? _lidPoQty;
  String? _lidStoreLocations;
  String? _lidStoDelDate;
  String? _vendorItem;
  String? _failPaSbQty;
  String? _failPaPaStatus;
  String? _lineVendorId;
  String? _lidMsr;
  String? _lidLineEvent;
  String? _id;
  String? _productName;
  String? _entityType;
  String? _lineitemId;
  String? _deleted;
  LineItems copyWith({
    String? parentId,
    String? productid,
    String? sequenceNo,
    String? productname,
    String? quantity,
    String? listprice,
    String? discountPercent,
    String? discountAmount,
    String? comment,
    String? description,
    String? incrementondel,
    String? tax1,
    String? tax2,
    String? tax3,
    String? image,
    String? purchaseCost,
    String? margin,
    String? dependency,
    String? duration,
    String? billingType,
    String? netprice,
    String? marginPercentage,
    String? markupPercentage,
    String? srActionOne,
    String? srActionTwo,
    String? srReplaceAction,
    String? remarksByEng,
    String? partRecived,
    String? actionByServiceMan,
    String? purposeForSending,
    String? itemDetDivision,
    String? remarksBySerMang,
    String? replacedDate,
    String? dateOfSubmiss,
    String? collectImmidiately,
    String? lidManualSl,
    String? lidRejectedQty,
    String? lidRemarks,
    String? lidPoQty,
    String? lidStoreLocations,
    String? lidStoDelDate,
    String? vendorItem,
    String? failPaSbQty,
    String? failPaPaStatus,
    String? lineVendorId,
    String? lidMsr,
    String? lidLineEvent,
    String? id,
    String? productName,
    String? entityType,
    String? lineitemId,
    String? deleted,
  }) =>
      LineItems(
        parentId: parentId ?? _parentId,
        productid: productid ?? _productid,
        sequenceNo: sequenceNo ?? _sequenceNo,
        productname: productname ?? _productname,
        quantity: quantity ?? _quantity,
        listprice: listprice ?? _listprice,
        discountPercent: discountPercent ?? _discountPercent,
        discountAmount: discountAmount ?? _discountAmount,
        comment: comment ?? _comment,
        description: description ?? _description,
        incrementondel: incrementondel ?? _incrementondel,
        tax1: tax1 ?? _tax1,
        tax2: tax2 ?? _tax2,
        tax3: tax3 ?? _tax3,
        image: image ?? _image,
        purchaseCost: purchaseCost ?? _purchaseCost,
        margin: margin ?? _margin,
        dependency: dependency ?? _dependency,
        duration: duration ?? _duration,
        billingType: billingType ?? _billingType,
        netprice: netprice ?? _netprice,
        marginPercentage: marginPercentage ?? _marginPercentage,
        markupPercentage: markupPercentage ?? _markupPercentage,
        srActionOne: srActionOne ?? _srActionOne,
        srActionTwo: srActionTwo ?? _srActionTwo,
        srReplaceAction: srReplaceAction ?? _srReplaceAction,
        remarksByEng: remarksByEng ?? _remarksByEng,
        partRecived: partRecived ?? _partRecived,
        actionByServiceMan: actionByServiceMan ?? _actionByServiceMan,
        purposeForSending: purposeForSending ?? _purposeForSending,
        itemDetDivision: itemDetDivision ?? _itemDetDivision,
        remarksBySerMang: remarksBySerMang ?? _remarksBySerMang,
        replacedDate: replacedDate ?? _replacedDate,
        dateOfSubmiss: dateOfSubmiss ?? _dateOfSubmiss,
        collectImmidiately: collectImmidiately ?? _collectImmidiately,
        lidManualSl: lidManualSl ?? _lidManualSl,
        lidRejectedQty: lidRejectedQty ?? _lidRejectedQty,
        lidRemarks: lidRemarks ?? _lidRemarks,
        lidPoQty: lidPoQty ?? _lidPoQty,
        lidStoreLocations: lidStoreLocations ?? _lidStoreLocations,
        lidStoDelDate: lidStoDelDate ?? _lidStoDelDate,
        vendorItem: vendorItem ?? _vendorItem,
        failPaSbQty: failPaSbQty ?? _failPaSbQty,
        failPaPaStatus: failPaPaStatus ?? _failPaPaStatus,
        lineVendorId: lineVendorId ?? _lineVendorId,
        lidMsr: lidMsr ?? _lidMsr,
        lidLineEvent: lidLineEvent ?? _lidLineEvent,
        id: id ?? _id,
        productName: productName ?? _productName,
        entityType: entityType ?? _entityType,
        lineitemId: lineitemId ?? _lineitemId,
        deleted: deleted ?? _deleted,
      );
  String? get parentId => _parentId;
  String? get productid => _productid;
  String? get sequenceNo => _sequenceNo;
  String? get productname => _productname;
  String? get quantity => _quantity;
  String? get listprice => _listprice;
  String? get discountPercent => _discountPercent;
  String? get discountAmount => _discountAmount;
  String? get comment => _comment;
  String? get description => _description;
  String? get incrementondel => _incrementondel;
  String? get tax1 => _tax1;
  String? get tax2 => _tax2;
  String? get tax3 => _tax3;
  String? get image => _image;
  String? get purchaseCost => _purchaseCost;
  String? get margin => _margin;
  String? get dependency => _dependency;
  String? get duration => _duration;
  String? get billingType => _billingType;
  String? get netprice => _netprice;
  String? get marginPercentage => _marginPercentage;
  String? get markupPercentage => _markupPercentage;
  String? get srActionOne => _srActionOne;
  String? get srActionTwo => _srActionTwo;
  String? get srReplaceAction => _srReplaceAction;
  String? get remarksByEng => _remarksByEng;
  String? get partRecived => _partRecived;
  String? get actionByServiceMan => _actionByServiceMan;
  String? get purposeForSending => _purposeForSending;
  String? get itemDetDivision => _itemDetDivision;
  String? get remarksBySerMang => _remarksBySerMang;
  String? get replacedDate => _replacedDate;
  String? get dateOfSubmiss => _dateOfSubmiss;
  String? get collectImmidiately => _collectImmidiately;
  String? get lidManualSl => _lidManualSl;
  String? get lidRejectedQty => _lidRejectedQty;
  String? get lidRemarks => _lidRemarks;
  String? get lidPoQty => _lidPoQty;
  String? get lidStoreLocations => _lidStoreLocations;
  String? get lidStoDelDate => _lidStoDelDate;
  String? get vendorItem => _vendorItem;
  String? get failPaSbQty => _failPaSbQty;
  String? get failPaPaStatus => _failPaPaStatus;
  String? get lineVendorId => _lineVendorId;
  String? get lidMsr => _lidMsr;
  String? get lidLineEvent => _lidLineEvent;
  String? get id => _id;
  String? get productName => _productName;
  String? get entityType => _entityType;
  String? get lineitemId => _lineitemId;
  String? get deleted => _deleted;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['parent_id'] = _parentId;
    map['productid'] = _productid;
    map['sequence_no'] = _sequenceNo;
    map['productname'] = _productname;
    map['quantity'] = _quantity;
    map['listprice'] = _listprice;
    map['discount_percent'] = _discountPercent;
    map['discount_amount'] = _discountAmount;
    map['comment'] = _comment;
    map['description'] = _description;
    map['incrementondel'] = _incrementondel;
    map['tax1'] = _tax1;
    map['tax2'] = _tax2;
    map['tax3'] = _tax3;
    map['image'] = _image;
    map['purchase_cost'] = _purchaseCost;
    map['margin'] = _margin;
    map['dependency'] = _dependency;
    map['duration'] = _duration;
    map['billing_type'] = _billingType;
    map['netprice'] = _netprice;
    map['margin_percentage'] = _marginPercentage;
    map['markup_percentage'] = _markupPercentage;
    map['sr_action_one'] = _srActionOne;
    map['sr_action_two'] = _srActionTwo;
    map['sr_replace_action'] = _srReplaceAction;
    map['remarks_by_eng'] = _remarksByEng;
    map['part_recived'] = _partRecived;
    map['action_by_service_man'] = _actionByServiceMan;
    map['purpose_for_sending'] = _purposeForSending;
    map['item_det_division'] = _itemDetDivision;
    map['remarks_by_ser_mang'] = _remarksBySerMang;
    map['replaced_date'] = _replacedDate;
    map['date_of_submiss'] = _dateOfSubmiss;
    map['collect_immidiately'] = _collectImmidiately;
    map['lid_manual_sl'] = _lidManualSl;
    map['lid_rejected_qty'] = _lidRejectedQty;
    map['lid_remarks'] = _lidRemarks;
    map['lid_po_qty'] = _lidPoQty;
    map['lid_store_locations'] = _lidStoreLocations;
    map['lid_sto_del_date'] = _lidStoDelDate;
    map['vendor_item'] = _vendorItem;
    map['fail_pa_sb_qty'] = _failPaSbQty;
    map['fail_pa_pa_status'] = _failPaPaStatus;
    map['line_vendor_id'] = _lineVendorId;
    map['lid_msr'] = _lidMsr;
    map['lid_line_event'] = _lidLineEvent;
    map['id'] = _id;
    map['product_name'] = _productName;
    map['entity_type'] = _entityType;
    map['lineitem_id'] = _lineitemId;
    map['deleted'] = _deleted;
    return map;
  }
}
