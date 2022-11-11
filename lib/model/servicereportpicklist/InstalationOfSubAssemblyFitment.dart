import 'dart:convert';

InstalationOfSubAssemblyFitment instalationOfSubAssemblyFitmentFromJson(
        String str) =>
    InstalationOfSubAssemblyFitment.fromJson(json.decode(str));
String instalationOfSubAssemblyFitmentToJson(
        InstalationOfSubAssemblyFitment data) =>
    json.encode(data.toJson());

class InstalationOfSubAssemblyFitment {
  InstalationOfSubAssemblyFitment({
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
    String? visChkWorkLoseingHders,
    String? failDeSapNotiType,
    String? badgeNo,
    String? serEngName,
    String? srDesignaion,
    String? visChkExtDam,
    String? visChkWrkLos,
    String? visChkExtDamImg,
    String? visHydWrkLosImg,
    String? actionTakenBlock,
    String? eqStaAftActTaken,
    String? lidRemarks,
    String? sadHmr,
    String? sadLineEvent,
    String? sadWarStartCon,
    String? sadTypeOfSubAss,
    String? sadWarTerm,
    String? sadWarTermApp,
    String? sadDateOracs,
    String? sadPodate,
    String? sadSubAssSl,
    String? sadSubAssPoDet,
    String? sadSuAssSrp,
    String? sadSuAssModSrp,
    String? sadSubAssMon,
    String? atSais,
    String? atOnAccountOf,
    String? sacfdKmRun,
    String? sacfdEqSlNo,
    String? sacfdDofcf,
    String? sacfdwasawbfise,
    String? sadsubasskm,
    String? sadsubasshmr,
    String? actiontakenblockseo,
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
    _visChkWorkLoseingHders = visChkWorkLoseingHders;
    _failDeSapNotiType = failDeSapNotiType;
    _badgeNo = badgeNo;
    _serEngName = serEngName;
    _srDesignaion = srDesignaion;
    _visChkExtDam = visChkExtDam;
    _visChkWrkLos = visChkWrkLos;
    _visChkExtDamImg = visChkExtDamImg;
    _visHydWrkLosImg = visHydWrkLosImg;
    _actionTakenBlock = actionTakenBlock;
    _eqStaAftActTaken = eqStaAftActTaken;
    _lidRemarks = lidRemarks;
    _sadHmr = sadHmr;
    _sadLineEvent = sadLineEvent;
    _sadWarStartCon = sadWarStartCon;
    _sadTypeOfSubAss = sadTypeOfSubAss;
    _sadWarTerm = sadWarTerm;
    _sadWarTermApp = sadWarTermApp;
    _sadDateOracs = sadDateOracs;
    _sadPodate = sadPodate;
    _sadSubAssSl = sadSubAssSl;
    _sadSubAssPoDet = sadSubAssPoDet;
    _sadSuAssSrp = sadSuAssSrp;
    _sadSuAssModSrp = sadSuAssModSrp;
    _sadSubAssMon = sadSubAssMon;
    _atSais = atSais;
    _atOnAccountOf = atOnAccountOf;
    _sacfdKmRun = sacfdKmRun;
    _sacfdEqSlNo = sacfdEqSlNo;
    _sacfdDofcf = sacfdDofcf;
    _sacfdwasawbfise = sacfdwasawbfise;
    _sadsubasskm = sadsubasskm;
    _sadsubasshmr = sadsubasshmr;
    _actiontakenblockseo = actiontakenblockseo;
  }

  set lineItems(List<LineItems>? value) {
    _lineItems = value;
  }

  InstalationOfSubAssemblyFitment.fromJson(dynamic json) {
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
    _visChkWorkLoseingHders = json['vis_chk_work_loseing_hders'];
    _failDeSapNotiType = json['fail_de_sap_noti_type'];
    _badgeNo = json['badge_no'];
    _serEngName = json['ser_eng_name'];
    _srDesignaion = json['sr_designaion'];
    _visChkExtDam = json['vis_chk_ext_dam'];
    _visChkWrkLos = json['vis_chk_wrk_los'];
    _visChkExtDamImg = json['vis_chk_ext_dam_img'];
    _visHydWrkLosImg = json['vis_hyd_wrk_los_img'];
    _actionTakenBlock = json['action_taken_block'];
    _eqStaAftActTaken = json['eq_sta_aft_act_taken'];
    _sadHmr = json['sad_hmr'];
    _sadLineEvent = json['sad_line_event'];
    _sadWarStartCon = json['sad_war_start_con'];
    _sadTypeOfSubAss = json['sad_type_of_sub_ass'];
    _sadWarTerm = json['sad_war_term'];
    _sadWarTermApp = json['sad_war_term_app'];
    _sadDateOracs = json['sad_date_oracs'];
    _sadPodate = json['sad_podate'];
    _sadSubAssSl = json['sad_sub_ass_sl'];
    _sadSubAssPoDet = json['sad_sub_ass_po_det'];
    _sadSuAssSrp = json['sad_su_ass_srp'];
    _sadSuAssModSrp = json['sad_su_ass_mod_srp'];
    _sadSubAssMon = json['sad_sub_ass_mon'];
    _atSais = json['at_sais'];
    _atOnAccountOf = json['at_on_account_of'];
    _sacfdKmRun = json['sacfd_km_run'];
    _sacfdEqSlNo = json['sacfd_eq_sl_no'];
    _sacfdDofcf = json['sacfd_dofcf'];
    _sacfdwasawbfise = json['sacfd_wasawbfise'];
    _sadsubasskm = json['sad_sub_ass_km'];
    _sadsubasshmr = json['sad_sub_ass_hmr'];
    _actiontakenblockseo = json['action_taken_block_seo'];
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
  String? _visChkWorkLoseingHders;
  String? _failDeSapNotiType;
  String? _badgeNo;
  String? _serEngName;
  String? _srDesignaion;
  String? _visChkExtDam;
  String? _visChkWrkLos;
  String? _visChkExtDamImg;
  String? _visHydWrkLosImg;
  String? _actionTakenBlock;
  String? _eqStaAftActTaken;
  String? _lidRemarks;
  String? _sadHmr;
  String? _sadLineEvent;
  String? _sadWarStartCon;
  String? _sadTypeOfSubAss;
  String? _sadWarTerm;
  String? _sadWarTermApp;
  String? _sadDateOracs;
  String? _sadPodate;
  String? _sadSubAssSl;
  String? _sadSubAssPoDet;
  String? _sadSuAssSrp;
  String? _sadSuAssModSrp;
  String? _sadSubAssMon;
  String? _atSais;
  String? _atOnAccountOf;
  String? _sacfdKmRun;
  String? _sacfdEqSlNo;
  String? _sacfdDofcf;
  String? _sacfdwasawbfise;
  String? _sadsubasskm;
  String? _sadsubasshmr;
  String? _actiontakenblockseo;

  List<LineItems>? get lineItems => _lineItems;
  String? get assignedUserId => _assignedUserId;
  String? get ticketDate => _ticketDate;
  String? get oppName => _oppName;
  String? get phone => _phone;
  String? get reportedBy => _reportedBy;
  String? get accountId => _accountId;
  String? get areaName => _areaName;
  String? get srTicketType => _srTicketType;
  String? get ticketId => _ticketId;
  String? get projectName => _projectName;
  String? get visChkExternalDamages => _visChkExternalDamages;
  String? get visChkWorkLoseingHders => _visChkWorkLoseingHders;
  String? get failDeSapNotiType => _failDeSapNotiType;
  String? get badgeNo => _badgeNo;
  String? get serEngName => _serEngName;
  String? get srDesignaion => _srDesignaion;
  String? get visChkExtDam => _visChkExtDam;
  String? get visChkWrkLos => _visChkWrkLos;
  String? get visChkExtDamImg => _visChkExtDamImg;
  String? get visHydWrkLosImg => _visHydWrkLosImg;
  String? get actionTakenBlock => _actionTakenBlock;
  String? get eqStaAftActTaken => _eqStaAftActTaken;
  String? get lidRemarks => _lidRemarks;
  String? get sadHmr => _sadHmr;
  String? get sadLineEvent => _sadLineEvent;
  String? get sadWarStartCon => _sadWarStartCon;
  String? get sadTypeOfSubAss => _sadTypeOfSubAss;
  String? get sadWarTerm => _sadWarTerm;
  String? get sadWarTermApp => _sadWarTermApp;
  String? get sadDateOracs => _sadDateOracs;
  String? get sadPodate => _sadPodate;
  String? get sadSubAssSl => _sadSubAssSl;
  String? get sadSubAssPoDet => _sadSubAssPoDet;
  String? get sadSuAssSrp => _sadSuAssSrp;
  String? get sadSuAssModSrp => _sadSuAssModSrp;
  String? get sadSubAssMon => _sadSubAssMon;
  String? get atSais => _atSais;
  String? get atOnAccountOf => _atOnAccountOf;
  String? get sacfdKmRun => _sacfdKmRun;
  String? get sacfdEqSlNo => _sacfdEqSlNo;
  String? get sacfdDofcf => _sacfdDofcf;
  String? get sacfdwasawbfise => _sacfdwasawbfise;
  String? get sadsubasskm => _sadsubasskm;
  String? get sadsubasshmr => _sadsubasshmr;
  String? get actiontakenblockseo => _actiontakenblockseo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_lineItems != null) {
      map['LineItems'] = _lineItems?.map((v) => v.toJson()).toList();
    }
    map['assigned_user_id'] = _assignedUserId;
    map['ticket_date'] = _ticketDate;
    map['opp_name'] = _oppName;
    map['at_sais'] = _atSais;
    map['at_on_account_of'] = _atOnAccountOf;
    map['phone'] = _phone;
    map['reported_by'] = _reportedBy;
    map['account_id'] = _accountId;
    map['area_name'] = _areaName;
    map['sr_ticket_type'] = _srTicketType;
    map['ticket_id'] = _ticketId;
    map['project_name'] = _projectName;
    map['vis_chk_external_damages'] = _visChkExternalDamages;
    map['vis_chk_work_loseing_hders'] = _visChkWorkLoseingHders;
    map['fail_de_sap_noti_type'] = _failDeSapNotiType;
    map['badge_no'] = _badgeNo;
    map['ser_eng_name'] = _serEngName;
    map['sr_designaion'] = _srDesignaion;
    map['vis_chk_ext_dam'] = _visChkExtDam;
    map['vis_chk_wrk_los'] = _visChkWrkLos;
    map['vis_chk_ext_dam_img'] = _visChkExtDamImg;
    map['vis_hyd_wrk_los_img'] = _visHydWrkLosImg;
    map['action_taken_block'] = _actionTakenBlock;
    map['eq_sta_aft_act_taken'] = _eqStaAftActTaken;
    map['lid_remarks'] = _lidRemarks;
    map['sad_hmr'] = _sadHmr;
    map['sad_line_event'] = _sadLineEvent;
    map['sad_war_start_con'] = _sadWarStartCon;
    map['sad_type_of_sub_ass'] = _sadTypeOfSubAss;
    map['sad_war_term'] = _sadWarTerm;
    map['sad_war_term_app'] = _sadWarTermApp;
    map['sad_date_oracs'] = _sadDateOracs;
    map['sad_podate'] = _sadPodate;
    map['sad_sub_ass_sl'] = _sadSubAssSl;
    map['sad_sub_ass_po_det'] = _sadSubAssPoDet;
    map['sad_su_ass_srp'] = _sadSuAssSrp;
    map['sad_su_ass_mod_srp'] = _sadSuAssModSrp;
    map['sad_sub_ass_mon'] = _sadSubAssMon;

    map['sacfd_km_run'] = _sacfdKmRun;
    map['sacfd_eq_sl_no'] = _sacfdEqSlNo;
    map['sacfd_dofcf'] = _sacfdDofcf;
    map['sacfd_wasawbfise'] = _sacfdwasawbfise;
    map['sad_sub_ass_km'] = _sadsubasskm;
    map['sad_sub_ass_hmr'] = _sadsubasshmr;
    map['action_taken_block_seo'] = _actiontakenblockseo;
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

  set visChkWorkLoseingHders(String? value) {
    _visChkWorkLoseingHders = value;
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

  set visChkWrkLos(String? value) {
    _visChkWrkLos = value;
  }

  set visChkExtDamImg(String? value) {
    _visChkExtDamImg = value;
  }

  set visHydWrkLosImg(String? value) {
    _visHydWrkLosImg = value;
  }

  set actionTakenBlock(String? value) {
    _actionTakenBlock = value;
  }

  set eqStaAftActTaken(String? value) {
    _eqStaAftActTaken = value;
  }

  set lidRemarks(String? value) {
    _lidRemarks = value;
  }

  set sadHmr(String? value) {
    _sadHmr = value;
  }

  set sadLineEvent(String? value) {
    _sadLineEvent = value;
  }

  set sadWarStartCon(String? value) {
    _sadWarStartCon = value;
  }

  set sadTypeOfSubAss(String? value) {
    _sadTypeOfSubAss = value;
  }

  set sadWarTerm(String? value) {
    _sadWarTerm = value;
  }

  set sadWarTermApp(String? value) {
    _sadWarTermApp = value;
  }

  set sadDateOracs(String? value) {
    _sadDateOracs = value;
  }

  set sadPodate(String? value) {
    _sadPodate = value;
  }

  set sadSubAssSl(String? value) {
    _sadSubAssSl = value;
  }

  set sadSubAssPoDet(String? value) {
    _sadSubAssPoDet = value;
  }

  set sadSuAssSrp(String? value) {
    _sadSuAssSrp = value;
  }

  set sadSuAssModSrp(String? value) {
    _sadSuAssModSrp = value;
  }

  set sadSubAssMon(String? value) {
    _sadSubAssMon = value;
  }

  set atSais(String? value) {
    _atSais = value;
  }

  set atOnAccountOf(String? value) {
    _atOnAccountOf = value;
  }

  set sacfdKmRun(String? value) {
    _sacfdKmRun = value;
  }

  set sacfdEqSlNo(String? value) {
    _sacfdEqSlNo = value;
  }

  set sacfdDofcf(String? value) {
    _sacfdDofcf = value;
  }

  set sacfdwasawbfise(String? value) {
    _sacfdwasawbfise = value;
  }

  set sadsubasskm(String? value) {
    _sadsubasskm = value;
  }

  set sadsubasshmr(String? value) {
    _sadsubasshmr = value;
  }

  set actiontakenblockseo(String? value) {
    _actiontakenblockseo = value;
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
    String? lidLineEvent,
    String? lidremarks,
  }) {
    _productname = productname;
    _quantity = quantity;
    _productid = productid;
    _comment = comment;
    _srActionOne = srActionOne;
    _srActionTwo = srActionTwo;
    _srReplaceAction = srReplaceAction;
    _lidLineEvent = lidLineEvent;
    _lidRemarks = lidremarks;
  }

  LineItems.fromJson(dynamic json) {
    _productname = json['productname'];
    _quantity = json['quantity'];
    _productid = json['productid'];
    _comment = json['comment'];
    _srActionOne = json['sr_action_one'];
    _srActionTwo = json['sr_action_two'];
    _srReplaceAction = json['sr_replace_action'];
    _lidLineEvent = json['lid_line_event'];
    _lidRemarks = json['lid_remarks'];
  }
  String? _productname;
  String? _quantity;
  String? _productid;
  String? _comment;
  String? _srActionOne;
  String? _srActionTwo;
  String? _srReplaceAction;
  String? _lidLineEvent;
  String? _lidRemarks;

  String? get productname => _productname;
  String? get quantity => _quantity;
  String? get productid => _productid;
  String? get comment => _comment;
  String? get srActionOne => _srActionOne;
  String? get srActionTwo => _srActionTwo;
  String? get srReplaceAction => _srReplaceAction;
  String? get lidLineEvent => _lidLineEvent;
  String? get lidRemarks => _lidRemarks;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productname'] = _productname;
    map['quantity'] = _quantity;
    map['productid'] = _productid;
    map['comment'] = _comment;
    map['sr_action_one'] = _srActionOne;
    map['sr_action_two'] = _srActionTwo;
    map['sr_replace_action'] = _srReplaceAction;
    map['lid_line_event'] = _lidLineEvent;
    map['lid_remarks'] = _lidRemarks;
    return map;
  }

  set lidLineEvent(String? value) {
    _lidLineEvent = value;
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

  set lidRemarks(String? value) {
    _lidRemarks = value;
  }
}
