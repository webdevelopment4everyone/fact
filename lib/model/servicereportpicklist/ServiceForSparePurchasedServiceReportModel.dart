import 'dart:convert';

ServiceForSparePurchasedServiceReportModel
    serviceForSparePurchasedServiceReportModelFromJson(String str) =>
        ServiceForSparePurchasedServiceReportModel.fromJson(json.decode(str));
String serviceForSparePurchasedServiceReportModelToJson(
        ServiceForSparePurchasedServiceReportModel data) =>
    json.encode(data.toJson());

class ServiceForSparePurchasedServiceReportModel {
  ServiceForSparePurchasedServiceReportModel({
    List<LineItems>? lineItems,
    String? assignedUserId,
    String? ticketDate,
    String? oppName,
    String? phone,
    String? reportedBy,
    String? accountId,
    String? areaName,
    String? srTicketType,
    String? ticketId,
    String? projectName,
    String? visChkExternalDamages,
    String? failDeSapNotiType,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
    String? visChkExtDam,
    String? visChkExtDamImg,
    String? actionTakenBlock,
    String? tckDetPurpose,
    String? saspdPoDetail,
    String? saspdDod,
    String? saspdPod,
    String? tdSymptoms,
    String? actionTakenBlockSeo,
    String? warclaimdte,
    String? eqsrequipmodel,
    String? srequipstatus,
    String? manualequser,
    String? modofsubambly,
    String? saddetofsubasmb,
    String? sadhmr,
    String? sadkmrun,
    String? vischkworkloseinghders,
    String? vischkwrklos,
    String? vishydwrklosimg,
    String? sadwarstartcon,
    String? sadwartermapp,
    String? sadwarterm,
    String? sadsubassmon,
    String? sadsubasskm,
    String? sadsubasshmr,
    String? eqstaaftacttsub,
    String? genchkengine,
    String? genchkoilpressure,
    String? genchkoiltemperature,
    String? genchkcoolanttemperature,
    String? genchktransmission,
    String? genchkbrake,
    String? genchkairpressure,
    String? genchkelectrical,
    String? genchkmotor,
    String? genchktransformer,
    String? genchkfieldswitch,
    String? genchkautoelectricalsystem,
    String? genchkbatteryvoltage,
    String? genchkhivoltelesystem,
    String? genchkhydraulic,
    String? genchkcylinders,
    String? genchkoilcooler,
    String? genchkpumps,
    String? genchksuspension,
    String? genchkstructure,
    String? genchkairconditionn,
    String? genchkautofireprotection,
    String? genchkautolubrication,
    String? warwarable,
    String? eqlasthmr,
    String? eqpresentkm,
    String? at_on_account_of,
  }) {
    _lineItems = lineItems;
    _assignedUserId = assignedUserId;
    _ticketDate = ticketDate;
    _oppName = oppName;
    _phone = phone;
    _reportedBy = reportedBy;
    _accountId = accountId;
    _areaName = areaName;
    _srTicketType = srTicketType;
    _ticketId = ticketId;
    _projectName = projectName;
    _visChkExternalDamages = visChkExternalDamages;
    _failDeSapNotiType = failDeSapNotiType;
    _badgeNo = badgeNo;
    _serEngName = serEngName;
    _srDesignaion = srDesignaion;
    _visChkExtDam = visChkExtDam;
    _visChkExtDamImg = visChkExtDamImg;
    _actionTakenBlock = actionTakenBlock;
    _tckDetPurpose = tckDetPurpose;
    _saspdPoDetail = saspdPoDetail;
    _saspdDod = saspdDod;
    _saspdPod = saspdPod;
    _tdSymptoms = tdSymptoms;
    _actionTakenBlockSeo = actionTakenBlockSeo;
    _warclaimdte = warclaimdte;
    _eqsrequipmodel = eqsrequipmodel;
    _srequipstatus = srequipstatus;
    _manualequser = manualequser;
    _modofsubambly = modofsubambly;
    _saddetofsubasmb = saddetofsubasmb;
    _sadhmr = sadhmr;
    _sadkmrun = sadkmrun;
    _vischkworkloseinghders = vischkworkloseinghders;
    _vischkwrklos = vischkwrklos;
    _vishydwrklosimg = vishydwrklosimg;
    _sadwarstartcon = sadwarstartcon;
    _sadwartermapp = sadwartermapp;
    _sadwarterm = sadwarterm;
    _sadsubassmon = sadsubassmon;
    _sadsubasskm = sadsubasskm;
    _sadsubasshmr = sadsubasshmr;
    _eqstaaftacttsub = eqstaaftacttsub;
    _genchkengine = genchkengine;
    _genchkoilpressure = genchkoilpressure;
    _genchkoiltemperature = genchkoiltemperature;
    _genchkcoolanttemperature = genchkcoolanttemperature;
    _genchktransmission = genchktransmission;
    _genchkbrake = genchkbrake;
    _genchkairpressure = genchkairpressure;
    _genchkelectrical = genchkelectrical;
    _genchkmotor = genchkmotor;
    _genchktransformer = genchktransformer;
    _genchkfieldswitch = genchkfieldswitch;
    _genchkautoelectricalsystem = genchkautoelectricalsystem;
    _genchkbatteryvoltage = genchkbatteryvoltage;
    _genchkhivoltelesystem = genchkhivoltelesystem;
    _genchkhydraulic = genchkhydraulic;
    _genchkcylinders = genchkcylinders;
    _genchkoilcooler = genchkoilcooler;
    _genchkpumps = genchkpumps;
    _genchksuspension = genchksuspension;
    _genchkstructure = genchkstructure;
    _genchkairconditionn = genchkairconditionn;
    _genchkautofireprotection = genchkautofireprotection;
    _genchkautolubrication = genchkautolubrication;
    _warwarable = warwarable;
    _eqlasthmr = eqlasthmr;
    _eqpresentkm = eqpresentkm;
    at_on_account_of = at_on_account_of;
  }

  ServiceForSparePurchasedServiceReportModel.fromJson(dynamic json) {
    if (json['LineItems'] != null) {
      _lineItems = [];
      json['LineItems'].forEach((v) {
        _lineItems?.add(LineItems.fromJson(v));
      });
    }
    _assignedUserId = json['assigned_user_id'];
    _ticketDate = json['ticket_date'];
    _oppName = json['opp_name'];
    _phone = json['phone'];
    _reportedBy = json['reported_by'];
    _accountId = json['account_id'];
    _areaName = json['area_name'];
    _srTicketType = json['sr_ticket_type'];
    _ticketId = json['ticket_id'];
    _projectName = json['project_name'];
    _visChkExternalDamages = json['vis_chk_external_damages'];
    _failDeSapNotiType = json['fail_de_sap_noti_type'];
    _badgeNo = json['badge_no'];
    _serEngName = json['ser_eng_name'];
    _srDesignaion = json['sr_designaion'];
    _visChkExtDam = json['vis_chk_ext_dam'];
    _visChkExtDamImg = json['vis_chk_ext_dam_img'];
    _actionTakenBlock = json['action_taken_block'];
    _tckDetPurpose = json['tck_det_purpose'];
    _saspdPoDetail = json['saspd_po_detail'];
    _saspdDod = json['saspd_dod'];
    _saspdPod = json['saspd_pod'];
    _tdSymptoms = json['td_symptoms'];
    _actionTakenBlockSeo = json['action_taken_block_seo'];
    _warclaimdte = json['war_claim_dte'];
    _eqsrequipmodel = json['eq_sr_equip_model'];
    _srequipstatus = json['sr_equip_status'];
    _manualequser = json['manual_equ_ser'];
    _modofsubambly = json['mod_of_sub_ambly'];
    _saddetofsubasmb = json['sad_det_of_subasmb'];
    _sadhmr = json['sad_hmr'];
    _sadkmrun = json['sad_km_run'];
    _vischkworkloseinghders = json['vis_chk_work_loseing_hders'];
    _vischkwrklos = json['vis_chk_wrk_los'];
    _vishydwrklosimg = json['vis_hyd_wrk_los_img'];
    _sadwarstartcon = json['sad_war_start_con'];
    _sadwartermapp = json['sad_war_term_app'];
    _sadwarterm = json['sad_war_term'];
    _sadsubassmon = json['sad_sub_ass_mon'];
    _sadsubasskm = json['sad_sub_ass_km'];
    _sadsubasshmr = json['sad_sub_ass_hmr'];
    _eqstaaftacttsub = json['eq_sta_aft_act_t_sub'];
    _genchkengine = json['genchk_engine'];
    _genchkoilpressure = json['genchk_oil_pressure'];
    _genchkoiltemperature = json['genchk_oil_temperature'];
    _genchkcoolanttemperature = json['genchk_coolant_temperature'];
    _genchktransmission = json['genchk_transmission'];
    _genchkbrake = json['genchk_brake'];
    _genchkairpressure = json['genchk_air_pressure'];
    _genchkelectrical = json['genchk_electrical'];
    _genchkmotor = json['genchk_motor'];
    _genchktransformer = json['genchk_transformer'];
    _genchkfieldswitch = json['genchk_field_switch'];
    _genchkautoelectricalsystem = json['genchk_auto_electrical_system'];
    _genchkbatteryvoltage = json['genchk_battery_voltage'];
    _genchkhivoltelesystem = json['genchk_hi_volt_ele_system'];
    _genchkhydraulic = json['genchk_hydraulic'];
    _genchkcylinders = json['genchk_cylinders'];
    _genchkoilcooler = json['genchk_oil_cooler'];
    _genchkpumps = json['genchk_pumps'];
    _genchksuspension = json['genchk_suspension'];
    _genchkstructure = json['genchk_structure'];
    _genchkairconditionn = json['genchk_air_conditionn'];
    _genchkautofireprotection = json['genchk_auto_fire_protection'];
    _genchkautolubrication = json['genchk_auto_lubrication'];
    _warwarable = json['war_warable'];
    _eqlasthmr = json['eq_last_hmr'];
    _eqpresentkm = json['eq_present_km'];
    at_on_account_of = json['at_on_account_of'];
  }
  List<LineItems>? _lineItems;
  String? _assignedUserId;
  String? _ticketDate;
  String? _oppName;
  String? _phone;
  String? _reportedBy;
  String? _accountId;
  String? _areaName;
  String? _srTicketType;
  String? _ticketId;
  String? _projectName;
  String? _visChkExternalDamages;
  String? _failDeSapNotiType;
  String? _badgeNo;
  String? _serEngName;
  String? _srDesignaion;
  String? _visChkExtDam;
  String? _visChkExtDamImg;
  String? _actionTakenBlock;
  String? _tckDetPurpose;
  String? _saspdPoDetail;
  String? _saspdDod;
  String? _saspdPod;
  String? _tdSymptoms;
  String? _actionTakenBlockSeo;
  String? _warclaimdte;
  String? _eqsrequipmodel;
  String? _srequipstatus;
  String? _manualequser;
  String? _modofsubambly;
  String? _saddetofsubasmb;
  String? _sadhmr;
  String? _sadkmrun;
  String? _vischkworkloseinghders;
  String? _vischkwrklos;
  String? _vishydwrklosimg;
  String? _sadwarstartcon;
  String? _sadwartermapp;
  String? _sadwarterm;
  String? _sadsubassmon;
  String? _sadsubasskm;
  String? _sadsubasshmr;
  String? _eqstaaftacttsub;
  String? _genchkengine;
  String? _genchkoilpressure;
  String? _genchkoiltemperature;
  String? _genchkcoolanttemperature;
  String? _genchktransmission;
  String? _genchkbrake;
  String? _genchkairpressure;
  String? _genchkelectrical;
  String? _genchkmotor;
  String? _genchktransformer;
  String? _genchkfieldswitch;
  String? _genchkautoelectricalsystem;
  String? _genchkbatteryvoltage;
  String? _genchkhivoltelesystem;
  String? _genchkhydraulic;
  String? _genchkcylinders;
  String? _genchkoilcooler;
  String? _genchkpumps;
  String? _genchksuspension;
  String? _genchkstructure;
  String? _genchkairconditionn;
  String? _genchkautofireprotection;
  String? _genchkautolubrication;
  String? _warwarable;
  String? _eqlasthmr;
  String? _eqpresentkm;
  String? at_on_account_of;

  List<LineItems>? get lineItems => _lineItems;
  String? get assignedUserId => _assignedUserId;
  String? get ticketDate => _ticketDate;
  String? get oppName => _oppName;
  String? get phone => _phone;
  String? get reportedBy => _reportedBy;
  String? get accountId => _accountId;
  String? get areaName => _areaName;

  set lineItems(List<LineItems>? value) {
    _lineItems = value;
  }

  String? get srTicketType => _srTicketType;
  String? get ticketId => _ticketId;
  String? get projectName => _projectName;
  String? get visChkExternalDamages => _visChkExternalDamages;
  String? get failDeSapNotiType => _failDeSapNotiType;
  String? get badgeNo => _badgeNo;
  String? get serEngName => _serEngName;
  String? get srDesignaion => _srDesignaion;
  String? get visChkExtDam => _visChkExtDam;
  String? get visChkExtDamImg => _visChkExtDamImg;
  String? get actionTakenBlock => _actionTakenBlock;
  String? get tckDetPurpose => _tckDetPurpose;
  String? get saspdPoDetail => _saspdPoDetail;
  String? get saspdDod => _saspdDod;
  String? get saspdPod => _saspdPod;
  String? get tdSymptoms => _tdSymptoms;
  String? get actionTakenBlockSeo => _actionTakenBlockSeo;
  String? get warclaimdte => _warclaimdte;
  String? get eqsrequipmodel => _eqsrequipmodel;
  String? get srequipstatus => _srequipstatus;
  String? get manualequser => _manualequser;
  String? get modofsubambly => _modofsubambly;
  String? get saddetofsubasmb => _saddetofsubasmb;
  String? get sadhmr => _sadhmr;
  String? get sadkmrun => _sadkmrun;
  String? get vischkworkloseinghders => _vischkworkloseinghders;
  String? get vischkwrklos => _vischkwrklos;
  String? get vishydwrklosimg => _vishydwrklosimg;
  String? get sadwarstartcon => _sadwarstartcon;
  String? get sadwartermapp => _sadwartermapp;
  String? get sadwarterm => _sadwarterm;
  String? get sadsubassmon => _sadsubassmon;
  String? get sadsubasskm => _sadsubasskm;
  String? get sadsubasshmr => _sadsubasshmr;
  String? get eqstaaftacttsub => _eqstaaftacttsub;
  String? get genchkengine => _genchkengine;
  String? get genchkoilpressure => _genchkoilpressure;
  String? get genchkoiltemperature => _genchkoiltemperature;
  String? get genchkcoolanttemperature => _genchkcoolanttemperature;
  String? get genchktransmission => _genchktransmission;
  String? get genchkbrake => _genchkbrake;
  String? get genchkairpressure => _genchkairpressure;
  String? get genchkelectrical => _genchkelectrical;
  String? get genchkmotor => _genchkmotor;
  String? get genchktransformer => _genchktransformer;
  String? get genchkfieldswitch => _genchkfieldswitch;
  String? get genchkautoelectricalsystem => _genchkautoelectricalsystem;
  String? get genchkbatteryvoltage => _genchkbatteryvoltage;
  String? get genchkhivoltelesystem => _genchkhivoltelesystem;
  String? get genchkhydraulic => _genchkhydraulic;
  String? get genchkcylinders => _genchkcylinders;
  String? get genchkoilcooler => _genchkoilcooler;
  String? get genchkpumps => _genchkpumps;
  String? get genchksuspension => _genchksuspension;
  String? get genchkstructure => _genchkstructure;
  String? get genchkairconditionn => _genchkairconditionn;
  String? get genchkautofireprotection => _genchkautofireprotection;
  String? get genchkautolubrication => _genchkautolubrication;
  String? get warwarable => _warwarable;
  String? get eqlasthmr => _eqlasthmr;
  String? get eqpresentkm => _eqpresentkm;
  String? get onaccountof => at_on_account_of;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_lineItems != null) {
      map['LineItems'] = _lineItems?.map((v) => v.toJson()).toList();
    }
    map['at_on_account_of'] = at_on_account_of;
    map['eq_sta_aft_act_t_sub'] = _eqstaaftacttsub;
    map['assigned_user_id'] = _assignedUserId;
    map['ticket_date'] = _ticketDate;
    map['opp_name'] = _oppName;
    map['phone'] = _phone;
    map['reported_by'] = _reportedBy;
    map['account_id'] = _accountId;
    map['area_name'] = _areaName;
    map['sr_ticket_type'] = _srTicketType;
    map['ticket_id'] = _ticketId;
    map['project_name'] = _projectName;
    map['vis_chk_external_damages'] = _visChkExternalDamages;
    map['fail_de_sap_noti_type'] = _failDeSapNotiType;
    map['badge_no'] = _badgeNo;
    map['ser_eng_name'] = _serEngName;
    map['sr_designaion'] = _srDesignaion;
    map['vis_chk_ext_dam'] = _visChkExtDam;
    map['vis_chk_ext_dam_img'] = _visChkExtDamImg;
    map['action_taken_block'] = _actionTakenBlock;
    map['tck_det_purpose'] = _tckDetPurpose;
    map['saspd_po_detail'] = _saspdPoDetail;
    map['saspd_dod'] = _saspdDod;
    map['saspd_pod'] = _saspdPod;
    map['td_symptoms'] = _tdSymptoms;
    map['action_taken_block_seo'] = _actionTakenBlockSeo;
    map['war_claim_dte'] = _warclaimdte;
    map['eq_sr_equip_model'] = _eqsrequipmodel;
    map['sr_equip_status'] = _srequipstatus;
    map['manual_equ_ser'] = _manualequser;
    map['mod_of_sub_ambly'] = _modofsubambly;
    map['sad_det_of_subasmb'] = _saddetofsubasmb;
    map['sad_hmr'] = _sadhmr;
    map['sad_km_run'] = _sadkmrun;
    map['vis_chk_work_loseing_hders'] = _vischkworkloseinghders;
    map['vis_chk_wrk_los'] = _vischkwrklos;
    map['vis_hyd_wrk_los_img'] = _vishydwrklosimg;
    map['sad_war_start_con'] = _sadwarstartcon;
    map['sad_war_term_app'] = _sadwartermapp;
    map['sad_war_term'] = _sadwarterm;
    map['sad_sub_ass_mon'] = _sadsubassmon;
    map['sad_sub_ass_km'] = _sadsubasskm;
    map['sad_sub_ass_hmr'] = _sadsubasshmr;

    map['genchk_engine'] = _genchkengine;
    map['genchk_oil_pressure'] = _genchkoilpressure;
    map['genchk_oil_temperature'] = _genchkoiltemperature;
    map['genchk_coolant_temperature'] = _genchkcoolanttemperature;
    map['genchk_transmission'] = _genchktransmission;
    map['genchk_brake'] = _genchkbrake;
    map['genchk_air_pressure'] = _genchkairpressure;
    map['genchk_electrical'] = _genchkelectrical;
    map['genchk_motor'] = _genchkmotor;
    map['genchk_transformer'] = _genchktransformer;
    map['genchk_field_switch'] = _genchkfieldswitch;
    map['genchk_auto_electrical_system'] = _genchkautoelectricalsystem;
    map['genchk_battery_voltage'] = _genchkbatteryvoltage;
    map['genchk_hi_volt_ele_system'] = _genchkhivoltelesystem;
    map['genchk_hydraulic'] = _genchkhydraulic;
    map['genchk_cylinders'] = _genchkcylinders;
    map['genchk_oil_cooler'] = _genchkoilcooler;
    map['genchk_pumps'] = _genchkpumps;
    map['genchk_suspension'] = _genchksuspension;
    map['genchk_structure'] = _genchkstructure;
    map['genchk_air_conditionn'] = _genchkairconditionn;
    map['genchk_auto_fire_protection'] = _genchkautofireprotection;
    map['genchk_auto_lubrication'] = _genchkautolubrication;
    map['war_warable'] = _warwarable;
    map['eq_last_hmr'] = _eqlasthmr;
    map['eq_present_km'] = _eqpresentkm;
    return map;
  }

  set assignedUserId(String? value) {
    _assignedUserId = value;
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

  set areaName(String? value) {
    _areaName = value;
  }

  set srTicketType(String? value) {
    _srTicketType = value;
  }

  set ticketId(String? value) {
    _ticketId = value;
  }

  set projectName(String? value) {
    _projectName = value;
  }

  set visChkExternalDamages(String? value) {
    _visChkExternalDamages = value;
  }

  set failDeSapNotiType(String? value) {
    _failDeSapNotiType = value;
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

  set visChkExtDam(String? value) {
    _visChkExtDam = value;
  }

  set visChkExtDamImg(String? value) {
    _visChkExtDamImg = value;
  }

  set actionTakenBlock(String? value) {
    _actionTakenBlock = value;
  }

  set tckDetPurpose(String? value) {
    _tckDetPurpose = value;
  }

  set saspdPoDetail(String? value) {
    _saspdPoDetail = value;
  }

  set saspdDod(String? value) {
    _saspdDod = value;
  }

  set saspdPod(String? value) {
    _saspdPod = value;
  }

  set tdSymptoms(String? value) {
    _tdSymptoms = value;
  }

  set actionTakenBlockSeo(String? value) {
    _actionTakenBlockSeo = value;
  }

  set warclaimdte(String? value) {
    _warclaimdte = value;
  }

  set eqsrequipmodel(String? value) {
    _eqsrequipmodel = value;
  }

  set srequipstatus(String? value) {
    _srequipstatus = value;
  }

  set manualequser(String? value) {
    _manualequser = value;
  }

  set modofsubambly(String? value) {
    _modofsubambly = value;
  }

  set saddetofsubasmb(String? value) {
    _saddetofsubasmb = value;
  }

  set sadhmr(String? value) {
    _sadhmr = value;
  }

  set sadkmrun(String? value) {
    _sadkmrun = value;
  }

  set vischkworkloseinghders(String? value) {
    _vischkworkloseinghders = value;
  }

  set vischkwrklos(String? value) {
    _vischkwrklos = value;
  }

  set vishydwrklosimg(String? value) {
    _vishydwrklosimg = value;
  }

  set sadwarstartcon(String? value) {
    _sadwarstartcon = value;
  }

  set sadwartermapp(String? value) {
    _sadwartermapp = value;
  }

  set sadwarterm(String? value) {
    _sadwarterm = value;
  }

  set sadsubassmon(String? value) {
    _sadsubassmon = value;
  }

  set sadsubasskm(String? value) {
    _sadsubasskm = value;
  }

  set sadsubasshmr(String? value) {
    _sadsubasshmr = value;
  }

  set eqstaaftacttsub(String? value) {
    _eqstaaftacttsub = value;
  }

  set genchkengine(String? value) {
    _genchkengine = value;
  }

  set genchkoilpressure(String? value) {
    _genchkoilpressure = value;
  }

  set genchkoiltemperature(String? value) {
    _genchkoiltemperature = value;
  }

  set genchkcoolanttemperature(String? value) {
    _genchkcoolanttemperature = value;
  }

  set genchktransmission(String? value) {
    _genchktransmission = value;
  }

  set genchkbrake(String? value) {
    _genchkbrake = value;
  }

  set genchkairpressure(String? value) {
    _genchkairpressure = value;
  }

  set genchkelectrical(String? value) {
    _genchkelectrical = value;
  }

  set genchkmotor(String? value) {
    _genchkmotor = value;
  }

  set genchktransformer(String? value) {
    _genchktransformer = value;
  }

  set genchkfieldswitch(String? value) {
    _genchkfieldswitch = value;
  }

  set genchkautoelectricalsystem(String? value) {
    _genchkautoelectricalsystem = value;
  }

  set genchkbatteryvoltage(String? value) {
    _genchkbatteryvoltage = value;
  }

  set genchkhivoltelesystem(String? value) {
    _genchkhivoltelesystem = value;
  }

  set genchkhydraulic(String? value) {
    _genchkhydraulic = value;
  }

  set genchkcylinders(String? value) {
    _genchkcylinders = value;
  }

  set genchkoilcooler(String? value) {
    _genchkoilcooler = value;
  }

  set genchkpumps(String? value) {
    _genchkpumps = value;
  }

  set genchksuspension(String? value) {
    _genchksuspension = value;
  }

  set genchkstructure(String? value) {
    _genchkstructure = value;
  }

  set genchkairconditionn(String? value) {
    _genchkairconditionn = value;
  }

  set genchkautofireprotection(String? value) {
    _genchkautofireprotection = value;
  }

  set genchkautolubrication(String? value) {
    _genchkautolubrication = value;
  }

  set warwarable(String? value) {
    _warwarable = value;
  }

  set eqlasthmr(String? value) {
    _eqlasthmr = value;
  }

  set eqpresentkm(String? value) {
    _eqpresentkm = value;
  }

  set oaccof(String? val) {
    at_on_account_of = val;
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
    String? srreplaceaction,
    String? sractiontwo,
    String? lidRemarks,
    int? lidPoQty,
  }) {
    _productname = productname;
    _quantity = quantity;
    _productid = productid;
    _comment = comment;
    _srActionOne = srActionOne;
    _srreplaceaction = srreplaceaction;
    _sractiontwo = sractiontwo;
    _lidRemarks = lidRemarks;
    _lidPoQty = lidPoQty;
  }

  LineItems.fromJson(dynamic json) {
    _productname = json['productname'];
    _quantity = json['quantity'];
    _productid = json['productid'];
    _comment = json['comment'];
    _srActionOne = json['sr_action_one'];
    _srreplaceaction = json['sr_replace_action'];
    _sractiontwo = json['sr_action_two'];
    _lidRemarks = json['lid_remarks'];
    _lidPoQty = json['lid_po_qty'];
  }
  String? _productname;
  String? _quantity;
  String? _productid;
  String? _comment;
  String? _srActionOne;
  String? _srreplaceaction;
  String? _sractiontwo;
  String? _lidRemarks;
  int? _lidPoQty;

  String? get productname => _productname;
  String? get quantity => _quantity;
  String? get productid => _productid;
  String? get comment => _comment;
  String? get srActionOne => _srActionOne;
  String? get srreplaceaction => _srreplaceaction;
  String? get sractiontwo => _sractiontwo;
  String? get lidRemarks => _lidRemarks;
  int? get lidPoQty => _lidPoQty;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productname'] = _productname;
    map['quantity'] = _quantity;
    map['productid'] = _productid;
    map['comment'] = _comment;
    map['sr_action_one'] = _srActionOne;
    map['sr_replace_action'] = _srreplaceaction;
    map['sr_action_two'] = _sractiontwo;
    map['lid_remarks'] = _lidRemarks;
    map['lid_po_qty'] = _lidPoQty;
    return map;
  }

  set lidPoQty(int? value) {
    _lidPoQty = value;
  }

  set lidRemarks(String? value) {
    _lidRemarks = value;
  }

  set sractiontwo(String? value) {
    _sractiontwo = value;
  }

  set srreplaceaction(String? value) {
    _srreplaceaction = value;
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
