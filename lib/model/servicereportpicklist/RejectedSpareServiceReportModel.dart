import 'dart:convert';

RejectedSpareServiceReportModel rejectedSpareServiceReportModelFromJson(
        String str) =>
    RejectedSpareServiceReportModel.fromJson(json.decode(str));
String rejectedSpareServiceReportModelToJson(
        RejectedSpareServiceReportModel data) =>
    json.encode(data.toJson());

class RejectedSpareServiceReportModel {
  RejectedSpareServiceReportModel({
    List<LineItems>? lineItems,
    String? ticketId,
    String? ticketDate,
    String? reportedBy,
    String? accountId,
    String? areaName,
    String? projectName,
    String? oppName,
    String? phone,
    String? srTicketType,
    String? tckDetPurpose,
    String? failDeSapNotiType,
    String? tdSymptoms,
    String? saspdPoDetail,
    String? saspdDod,
    String? saspdPod,
    String? visChkExternalDamages,
    String? visChkExtDam,
    String? visChkExtDamImg,
    String? assignedUserId,
    String? actionTakenBlock,
    String? actionTakenBlockSeo,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
  }) {
    _lineItems = lineItems;
    _ticketId = ticketId;
    _ticketDate = ticketDate;
    _reportedBy = reportedBy;
    _accountId = accountId;
    _areaName = areaName;
    _projectName = projectName;
    _oppName = oppName;
    _phone = phone;
    _srTicketType = srTicketType;
    _tckDetPurpose = tckDetPurpose;
    _failDeSapNotiType = failDeSapNotiType;
    _tdSymptoms = tdSymptoms;
    _saspdPoDetail = saspdPoDetail;
    _saspdDod = saspdDod;
    _saspdPod = saspdPod;
    _visChkExternalDamages = visChkExternalDamages;
    _visChkExtDam = visChkExtDam;
    _visChkExtDamImg = visChkExtDamImg;
    _assignedUserId = assignedUserId;
    _actionTakenBlock = actionTakenBlock;
    _actionTakenBlockSeo = actionTakenBlockSeo;
    _badgeNo = badgeNo;
    _serEngName = serEngName;
    _srDesignaion = srDesignaion;
  }

  RejectedSpareServiceReportModel.fromJson(dynamic json) {
    if (json['LineItems'] != null) {
      _lineItems = [];
      json['LineItems'].forEach((v) {
        _lineItems?.add(LineItems.fromJson(v));
      });
    }
    _ticketId = json['ticket_id'];
    _ticketDate = json['ticket_date'];
    _reportedBy = json['reported_by'];
    _accountId = json['account_id'];
    _areaName = json['area_name'];
    _projectName = json['project_name'];
    _oppName = json['opp_name'];
    _phone = json['phone'];
    _srTicketType = json['sr_ticket_type'];
    _tckDetPurpose = json['tck_det_purpose'];
    _failDeSapNotiType = json['fail_de_sap_noti_type'];
    _tdSymptoms = json['td_symptoms'];
    _saspdPoDetail = json['saspd_po_detail'];
    _saspdDod = json['saspd_dod'];
    _saspdPod = json['saspd_pod'];
    _visChkExternalDamages = json['vis_chk_external_damages'];
    _visChkExtDam = json['vis_chk_ext_dam'];
    _visChkExtDamImg = json['vis_chk_ext_dam_img'];
    _assignedUserId = json['assigned_user_id'];
    _actionTakenBlock = json['action_taken_block'];
    _actionTakenBlockSeo = json['action_taken_block_seo'];
    _badgeNo = json['badge_no'];
    _serEngName = json['ser_eng_name'];
    _srDesignaion = json['sr_designaion'];
  }
  List<LineItems>? _lineItems;
  String? _ticketId;
  String? _ticketDate;
  String? _reportedBy;
  String? _accountId;
  String? _areaName;
  String? _projectName;
  String? _oppName;
  String? _phone;
  String? _srTicketType;
  String? _tckDetPurpose;
  String? _failDeSapNotiType;
  String? _tdSymptoms;
  String? _saspdPoDetail;
  String? _saspdDod;
  String? _saspdPod;
  String? _visChkExternalDamages;
  String? _visChkExtDam;
  String? _visChkExtDamImg;
  String? _assignedUserId;
  String? _actionTakenBlock;
  String? _actionTakenBlockSeo;
  String? _badgeNo;
  String? _serEngName;
  String? _srDesignaion;

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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_lineItems != null) {
      map['LineItems'] = _lineItems?.map((v) => v.toJson()).toList();
    }
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
    String? lidmanualsl,
    String? lidPoQty,
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
    _lidmanualsl = lidmanualsl;
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
    _lidmanualsl = json['lid_manual_sl'];
  }
  String? _productname;
  String? _quantity;
  String? _productid;
  String? _comment;
  String? _srActionOne;
  String? _srreplaceaction;
  String? _sractiontwo;
  String? _lidRemarks;
  String? _lidmanualsl;
  String? _lidPoQty;

  String? get productname => _productname;
  String? get quantity => _quantity;
  String? get productid => _productid;
  String? get comment => _comment;
  String? get srActionOne => _srActionOne;
  String? get srreplaceaction => _srreplaceaction;
  String? get sractiontwo => _sractiontwo;
  String? get lidRemarks => _lidRemarks;
  String? get lidmanualsl => _lidmanualsl;
  String? get lidPoQty => _lidPoQty;

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
    map['lid_manual_sl'] = _lidmanualsl;
    return map;
  }

  set lidPoQty(String? value) {
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

  set lidmanualsl(String? value) {
    _lidmanualsl = value;
  }
}
