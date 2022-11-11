import 'dart:convert';

DesignModificaitonServiceReportModel
    designModificaitonServiceReportModelFromJson(String str) =>
        DesignModificaitonServiceReportModel.fromJson(json.decode(str));
String designModificaitonServiceReportModelToJson(
        DesignModificaitonServiceReportModel data) =>
    json.encode(data.toJson());

class DesignModificaitonServiceReportModel {
  DesignModificaitonServiceReportModel({
    List<LineItems>? lineItems,
    String? assignedUserId,
    String? srHmr,
    String? dteOfCommissing,
    String? warrantyEndDte,
    String? srWarStatus,
    String? ticketDate,
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
    String? typeOfConrt,
    String? contStartDate,
    String? contEndDate,
    String? runYearCont,
    String? srEqWarrantyTerms,
    String? failDeSapNotiType,
    String? equipmentId,
    String? eqSrEquipModel,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
    String? srRegionalOffice,
    String? distOffOrActCen,
    String? imagename,
    String? actionTakenBlock,
    String? eqStaAftActTaken,
    String? restorationDate,
    String? restorationTime,
    String? offOnAccountOf,
    String? remarksForOffroad,
    String? actionTakenBlockSeo,
    String? atDmStatus,
    String? reasonForNotCompletion,
    String? reasonForModification,
    String? referForModif,
    String? dmdSystem,
    String? referformodif,
  }) {
    _lineItems = lineItems;
    _assignedUserId = assignedUserId;
    _srHmr = srHmr;
    _dteOfCommissing = dteOfCommissing;
    _warrantyEndDte = warrantyEndDte;
    _srWarStatus = srWarStatus;
    _ticketDate = ticketDate;
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
    _typeOfConrt = typeOfConrt;
    _contStartDate = contStartDate;
    _contEndDate = contEndDate;
    _runYearCont = runYearCont;
    _srEqWarrantyTerms = srEqWarrantyTerms;
    _failDeSapNotiType = failDeSapNotiType;
    _equipmentId = equipmentId;
    _eqSrEquipModel = eqSrEquipModel;
    _badgeNo = badgeNo;
    _serEngName = serEngName;
    _srDesignaion = srDesignaion;
    _srRegionalOffice = srRegionalOffice;
    _distOffOrActCen = distOffOrActCen;
    _imagename = imagename;
    _actionTakenBlock = actionTakenBlock;
    _eqStaAftActTaken = eqStaAftActTaken;
    _restorationDate = restorationDate;
    _restorationTime = restorationTime;
    _offOnAccountOf = offOnAccountOf;
    _remarksForOffroad = remarksForOffroad;
    _actionTakenBlockSeo = actionTakenBlockSeo;
    _atDmStatus = atDmStatus;
    _reasonForNotCompletion = reasonForNotCompletion;
    _reasonForModification = reasonForModification;
    _referForModif = referForModif;
    _dmdSystem = dmdSystem;
    _referformodif = referformodif;
  }

  DesignModificaitonServiceReportModel.fromJson(dynamic json) {
    if (json['LineItems'] != null) {
      _lineItems = [];
      json['LineItems'].forEach((v) {
        _lineItems?.add(LineItems.fromJson(v));
      });
    }
    _assignedUserId = json['assigned_user_id'];
    _srHmr = json['sr_hmr'];
    _dteOfCommissing = json['dte_of_commissing'];
    _warrantyEndDte = json['warranty_end_dte'];
    _srWarStatus = json['sr_war_status'];
    _ticketDate = json['ticket_date'];
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
    _hmr = json['hmr'];
    _kilometerReading = json['kilometer_reading'];
    _kiloDate = json['kilo_date'];
    _projectName = json['project_name'];
    _typeOfConrt = json['type_of_conrt'];
    _contStartDate = json['cont_start_date'];
    _contEndDate = json['cont_end_date'];
    _runYearCont = json['run_year_cont'];
    _srEqWarrantyTerms = json['sr_eq_warranty_terms'];
    _failDeSapNotiType = json['fail_de_sap_noti_type'];
    _equipmentId = json['equipment_id'];
    _eqSrEquipModel = json['eq_sr_equip_model'];
    _badgeNo = json['badge_no'];
    _serEngName = json['ser_eng_name'];
    _srDesignaion = json['sr_designaion'];
    _srRegionalOffice = json['sr_regional_office'];
    _distOffOrActCen = json['dist_off_or_act_cen'];
    _imagename = json['imagename'];
    _actionTakenBlock = json['action_taken_block'];
    _eqStaAftActTaken = json['eq_sta_aft_act_taken'];
    _restorationDate = json['restoration_date'];
    _restorationTime = json['restoration_time'];
    _offOnAccountOf = json['off_on_account_of'];
    _remarksForOffroad = json['remarks_for_offroad'];
    _actionTakenBlockSeo = json['action_taken_block_seo'];
    _atDmStatus = json['at_dm_status'];
    _reasonForNotCompletion = json['reason_for_not_completion'];
    _reasonForModification = json['reason_for_modification'];
    _referForModif = json['refer_for_modif'];
    _dmdSystem = json['dmd_system'];
    _referformodif = json['refer_for_modif'];
  }
  List<LineItems>? _lineItems;
  String? _assignedUserId;
  String? _srHmr;
  String? _dteOfCommissing;
  String? _warrantyEndDte;
  String? _srWarStatus;
  String? _ticketDate;
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
  String? _typeOfConrt;
  String? _contStartDate;
  String? _contEndDate;
  String? _runYearCont;
  String? _srEqWarrantyTerms;
  String? _failDeSapNotiType;
  String? _equipmentId;
  String? _eqSrEquipModel;
  String? _badgeNo;
  String? _serEngName;
  String? _srDesignaion;
  String? _srRegionalOffice;
  String? _distOffOrActCen;
  String? _imagename;
  String? _actionTakenBlock;
  String? _eqStaAftActTaken;
  String? _restorationDate;
  String? _restorationTime;
  String? _offOnAccountOf;
  String? _remarksForOffroad;
  String? _actionTakenBlockSeo;
  String? _atDmStatus;
  String? _reasonForNotCompletion;
  String? _reasonForModification;
  String? _referForModif;
  String? _dmdSystem;
  String? _referformodif;

  List<LineItems>? get lineItems => _lineItems;
  String? get assignedUserId => _assignedUserId;
  String? get srHmr => _srHmr;
  String? get dteOfCommissing => _dteOfCommissing;
  String? get warrantyEndDte => _warrantyEndDte;
  String? get srWarStatus => _srWarStatus;
  String? get ticketDate => _ticketDate;
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
  String? get typeOfConrt => _typeOfConrt;
  String? get contStartDate => _contStartDate;
  String? get contEndDate => _contEndDate;
  String? get runYearCont => _runYearCont;
  String? get srEqWarrantyTerms => _srEqWarrantyTerms;
  String? get failDeSapNotiType => _failDeSapNotiType;
  String? get equipmentId => _equipmentId;
  String? get eqSrEquipModel => _eqSrEquipModel;
  String? get badgeNo => _badgeNo;
  String? get serEngName => _serEngName;
  String? get srDesignaion => _srDesignaion;
  String? get srRegionalOffice => _srRegionalOffice;
  String? get distOffOrActCen => _distOffOrActCen;
  String? get imagename => _imagename;
  String? get actionTakenBlock => _actionTakenBlock;
  String? get eqStaAftActTaken => _eqStaAftActTaken;
  String? get restorationDate => _restorationDate;
  String? get restorationTime => _restorationTime;
  String? get offOnAccountOf => _offOnAccountOf;
  String? get remarksForOffroad => _remarksForOffroad;
  String? get actionTakenBlockSeo => _actionTakenBlockSeo;
  String? get atDmStatus => _atDmStatus;
  String? get reasonForNotCompletion => _reasonForNotCompletion;
  String? get reasonForModification => _reasonForModification;
  String? get referForModif => _referForModif;
  String? get dmdSystem => _dmdSystem;
  String? get referformodif => _referformodif;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_lineItems != null) {
      map['LineItems'] = _lineItems?.map((v) => v.toJson()).toList();
    }
    map['assigned_user_id'] = _assignedUserId;
    map['sr_hmr'] = _srHmr;
    map['dte_of_commissing'] = _dteOfCommissing;
    map['warranty_end_dte'] = _warrantyEndDte;
    map['sr_war_status'] = _srWarStatus;
    map['ticket_date'] = _ticketDate;
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
    map['hmr'] = _hmr;
    map['kilometer_reading'] = _kilometerReading;
    map['kilo_date'] = _kiloDate;
    map['project_name'] = _projectName;
    map['type_of_conrt'] = _typeOfConrt;
    map['cont_start_date'] = _contStartDate;
    map['cont_end_date'] = _contEndDate;
    map['run_year_cont'] = _runYearCont;
    map['sr_eq_warranty_terms'] = _srEqWarrantyTerms;
    map['fail_de_sap_noti_type'] = _failDeSapNotiType;
    map['equipment_id'] = _equipmentId;
    map['eq_sr_equip_model'] = _eqSrEquipModel;
    map['badge_no'] = _badgeNo;
    map['ser_eng_name'] = _serEngName;
    map['sr_designaion'] = _srDesignaion;
    map['sr_regional_office'] = _srRegionalOffice;
    map['dist_off_or_act_cen'] = _distOffOrActCen;
    map['imagename'] = _imagename;
    map['action_taken_block'] = _actionTakenBlock;
    map['eq_sta_aft_act_taken'] = _eqStaAftActTaken;
    map['restoration_date'] = _restorationDate;
    map['restoration_time'] = _restorationTime;
    map['off_on_account_of'] = _offOnAccountOf;
    map['remarks_for_offroad'] = _remarksForOffroad;
    map['action_taken_block_seo'] = _actionTakenBlockSeo;
    map['at_dm_status'] = _atDmStatus;
    map['reason_for_not_completion'] = _reasonForNotCompletion;
    map['reason_for_modification'] = _reasonForModification;
    map['refer_for_modif'] = _referForModif;
    map['dmd_system'] = _dmdSystem;
    map['refer_for_modif'] = _referformodif;
    return map;
  }

  set dmdSystem(String? value) {
    _dmdSystem = value;
  }

  set referForModif(String? value) {
    _referForModif = value;
  }

  set reasonForModification(String? value) {
    _reasonForModification = value;
  }

  set reasonForNotCompletion(String? value) {
    _reasonForNotCompletion = value;
  }

  set atDmStatus(String? value) {
    _atDmStatus = value;
  }

  set actionTakenBlockSeo(String? value) {
    _actionTakenBlockSeo = value;
  }

  set remarksForOffroad(String? value) {
    _remarksForOffroad = value;
  }

  set offOnAccountOf(String? value) {
    _offOnAccountOf = value;
  }

  set restorationTime(String? value) {
    _restorationTime = value;
  }

  set restorationDate(String? value) {
    _restorationDate = value;
  }

  set eqStaAftActTaken(String? value) {
    _eqStaAftActTaken = value;
  }

  set actionTakenBlock(String? value) {
    _actionTakenBlock = value;
  }

  set imagename(String? value) {
    _imagename = value;
  }

  set distOffOrActCen(String? value) {
    _distOffOrActCen = value;
  }

  set srRegionalOffice(String? value) {
    _srRegionalOffice = value;
  }

  set srDesignaion(String? value) {
    _srDesignaion = value;
  }

  set serEngName(String? value) {
    _serEngName = value;
  }

  set badgeNo(String? value) {
    _badgeNo = value;
  }

  set eqSrEquipModel(String? value) {
    _eqSrEquipModel = value;
  }

  set equipmentId(String? value) {
    _equipmentId = value;
  }

  set failDeSapNotiType(String? value) {
    _failDeSapNotiType = value;
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

  set reportedBy(String? value) {
    _reportedBy = value;
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

  set srHmr(String? value) {
    _srHmr = value;
  }

  set assignedUserId(String? value) {
    _assignedUserId = value;
  }

  set lineItems(List<LineItems>? value) {
    _lineItems = value;
  }

  set referformodif(String? value) {
    _referformodif = value;
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
  }) {
    _productname = productname;
    _quantity = quantity;
    _productid = productid;
    _comment = comment;
    _srActionOne = srActionOne;
    _srreplaceaction = srreplaceaction;
    _sractiontwo = sractiontwo;
  }

  LineItems.fromJson(dynamic json) {
    _productname = json['productname'];
    _quantity = json['quantity'];
    _productid = json['productid'];
    _comment = json['comment'];
    _srActionOne = json['sr_action_one'];
    _srreplaceaction = json['sr_replace_action'];
    _sractiontwo = json['sr_action_two'];
  }
  String? _productname;
  String? _quantity;
  String? _productid;
  String? _comment;
  String? _srActionOne;
  String? _srreplaceaction;
  String? _sractiontwo;

  String? get productname => _productname;
  String? get quantity => _quantity;
  String? get productid => _productid;
  String? get comment => _comment;
  String? get srActionOne => _srActionOne;
  String? get srreplaceaction => _srreplaceaction;
  String? get sractiontwo => _sractiontwo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productname'] = _productname;
    map['quantity'] = _quantity;
    map['productid'] = _productid;
    map['comment'] = _comment;
    map['sr_action_one'] = _srActionOne;
    map['sr_replace_action'] = _srreplaceaction;
    map['sr_action_two'] = _sractiontwo;
    return map;
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

  set srreplaceaction(String? value) {
    _srreplaceaction = value;
  }

  set sractiontwo(String? value) {
    _sractiontwo = value;
  }
}
