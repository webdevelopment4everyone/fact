import 'dart:convert';

/// statuscode : 1
/// data : {"label":"BD80-G15577","equipment_sl_no":"BD80-G15577","assigned_user_id":"1","createdtime":"2022-09-26 11:30:44","modifiedtime":"2022-09-29 12:07:17","source":"CRM","starred":"","tags":"","equip_model":"BD80","functional_loc":"45x95011","equi_desc":"BD80 DOZER 5/27","maintain_plant":"1202","eq_equip_status":"INST","eq_valid_from":"2020-10-05","eq_valid_to":"9999-12-31","account_id":"11x136006","eq_last_hmr":"560","plant_name":"143931","last_hmr_date":"2021-05-31","last_hmr_time":"16:38:12","cust_war_end":"","cust_begin_guar":"2020-12-25","ven_begin_guar":"","ven_war_end":"","eq_type_of_conrt":"","eq_run_war_st":"","cont_start_date":"","cont_end_date":"","run_year_cont":"0","agg_equipment_id":"0","equip_ag_serial_no":"15577","equip_ag_part_no":"","equip_ag_manu_fact":"M/s BEML Limited","equip_war_terms":"C&M EQPT - 1800 Hrs OR 12 Months","record_id":"209301","record_module":"Equipment","id":"209301","account_id_label":"DGBR, New Delhi","functional_loc_label":"55RCC C/O 56 APO,MATYIAN"}
/// statusMessage : "Successfully Fetched Data"

FunctionLocId functionLocIdFromJson(String str) =>
    FunctionLocId.fromJson(json.decode(str));
String functionLocIdToJson(FunctionLocId data) => json.encode(data.toJson());

class FunctionLocId {
  FunctionLocId({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  FunctionLocId.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  FunctionLocId copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      FunctionLocId(
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

/// label : "BD80-G15577"
/// equipment_sl_no : "BD80-G15577"
/// assigned_user_id : "1"
/// createdtime : "2022-09-26 11:30:44"
/// modifiedtime : "2022-09-29 12:07:17"
/// source : "CRM"
/// starred : ""
/// tags : ""
/// equip_model : "BD80"
/// functional_loc : "45x95011"
/// equi_desc : "BD80 DOZER 5/27"
/// maintain_plant : "1202"
/// eq_equip_status : "INST"
/// eq_valid_from : "2020-10-05"
/// eq_valid_to : "9999-12-31"
/// account_id : "11x136006"
/// eq_last_hmr : "560"
/// plant_name : "143931"
/// last_hmr_date : "2021-05-31"
/// last_hmr_time : "16:38:12"
/// cust_war_end : ""
/// cust_begin_guar : "2020-12-25"
/// ven_begin_guar : ""
/// ven_war_end : ""
/// eq_type_of_conrt : ""
/// eq_run_war_st : ""
/// cont_start_date : ""
/// cont_end_date : ""
/// run_year_cont : "0"
/// agg_equipment_id : "0"
/// equip_ag_serial_no : "15577"
/// equip_ag_part_no : ""
/// equip_ag_manu_fact : "M/s BEML Limited"
/// equip_war_terms : "C&M EQPT - 1800 Hrs OR 12 Months"
/// record_id : "209301"
/// record_module : "Equipment"
/// id : "209301"
/// account_id_label : "DGBR, New Delhi"
/// functional_loc_label : "55RCC C/O 56 APO,MATYIAN"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    String? label,
    String? equipmentSlNo,
    String? assignedUserId,
    String? createdtime,
    String? modifiedtime,
    String? source,
    String? starred,
    String? tags,
    String? equipModel,
    String? functionalLoc,
    String? equiDesc,
    String? maintainPlant,
    String? eqEquipStatus,
    String? eqValidFrom,
    String? eqValidTo,
    String? accountId,
    String? eqLastHmr,
    String? plantName,
    String? lastHmrDate,
    String? lastHmrTime,
    String? custWarEnd,
    String? custBeginGuar,
    String? venBeginGuar,
    String? venWarEnd,
    String? eqTypeOfConrt,
    String? eqRunWarSt,
    String? contStartDate,
    String? contEndDate,
    String? runYearCont,
    String? aggEquipmentId,
    String? equipAgSerialNo,
    String? equipAgPartNo,
    String? equipAgManuFact,
    String? equipWarTerms,
    String? recordId,
    String? recordModule,
    String? id,
    String? accountIdLabel,
    String? functionalLocLabel,
    String? eq_last_km_run,
  }) {
    _label = label;
    _equipmentSlNo = equipmentSlNo;
    _assignedUserId = assignedUserId;
    _createdtime = createdtime;
    _modifiedtime = modifiedtime;
    _source = source;
    _starred = starred;
    _tags = tags;
    _equipModel = equipModel;
    _functionalLoc = functionalLoc;
    _equiDesc = equiDesc;
    _maintainPlant = maintainPlant;
    _eqEquipStatus = eqEquipStatus;
    _eqValidFrom = eqValidFrom;
    _eqValidTo = eqValidTo;
    _accountId = accountId;
    _eqLastHmr = eqLastHmr;
    _plantName = plantName;
    _lastHmrDate = lastHmrDate;
    _lastHmrTime = lastHmrTime;
    _custWarEnd = custWarEnd;
    _custBeginGuar = custBeginGuar;
    _venBeginGuar = venBeginGuar;
    _venWarEnd = venWarEnd;
    _eqTypeOfConrt = eqTypeOfConrt;
    _eqRunWarSt = eqRunWarSt;
    _contStartDate = contStartDate;
    _contEndDate = contEndDate;
    _runYearCont = runYearCont;
    _aggEquipmentId = aggEquipmentId;
    _equipAgSerialNo = equipAgSerialNo;
    _equipAgPartNo = equipAgPartNo;
    _equipAgManuFact = equipAgManuFact;
    _equipWarTerms = equipWarTerms;
    _recordId = recordId;
    _recordModule = recordModule;
    _id = id;
    _accountIdLabel = accountIdLabel;
    _functionalLocLabel = functionalLocLabel;
    _eq_last_km_run = eq_last_km_run;
  }

  Data.fromJson(dynamic json) {
    _label = json['label'];
    _equipmentSlNo = json['equipment_sl_no'];
    _assignedUserId = json['assigned_user_id'];
    _createdtime = json['createdtime'];
    _modifiedtime = json['modifiedtime'];
    _source = json['source'];
    _starred = json['starred'];
    _tags = json['tags'];
    _equipModel = json['equip_model'];
    _functionalLoc = json['functional_loc'];
    _equiDesc = json['equi_desc'];
    _maintainPlant = json['maintain_plant'];
    _eqEquipStatus = json['eq_equip_status'];
    _eqValidFrom = json['eq_valid_from'];
    _eqValidTo = json['eq_valid_to'];
    _accountId = json['account_id'];
    _eqLastHmr = json['eq_last_hmr'];
    _plantName = json['plant_name'];
    _lastHmrDate = json['last_hmr_date'];
    _lastHmrTime = json['last_hmr_time'];
    _custWarEnd = json['cust_war_end'];
    _custBeginGuar = json['cust_begin_guar'];
    _venBeginGuar = json['ven_begin_guar'];
    _venWarEnd = json['ven_war_end'];
    _eqTypeOfConrt = json['eq_type_of_conrt'];
    _eqRunWarSt = json['eq_run_war_st'];
    _contStartDate = json['cont_start_date'];
    _contEndDate = json['cont_end_date'];
    _runYearCont = json['run_year_cont'];
    _aggEquipmentId = json['agg_equipment_id'];
    _equipAgSerialNo = json['equip_ag_serial_no'];
    _equipAgPartNo = json['equip_ag_part_no'];
    _equipAgManuFact = json['equip_ag_manu_fact'];
    _equipWarTerms = json['equip_war_terms'];
    _recordId = json['record_id'];
    _recordModule = json['record_module'];
    _id = json['id'];
    _accountIdLabel = json['account_id_label'];
    _functionalLocLabel = json['functional_loc_label'];
    _eq_last_km_run = json['eq_last_km_run'];
  }
  String? _label;
  String? _equipmentSlNo;
  String? _assignedUserId;
  String? _createdtime;
  String? _modifiedtime;
  String? _source;
  String? _starred;
  String? _tags;
  String? _equipModel;
  String? _functionalLoc;
  String? _equiDesc;
  String? _maintainPlant;
  String? _eqEquipStatus;
  String? _eqValidFrom;
  String? _eqValidTo;
  String? _accountId;
  String? _eqLastHmr;
  String? _plantName;
  String? _lastHmrDate;
  String? _lastHmrTime;
  String? _custWarEnd;
  String? _custBeginGuar;
  String? _venBeginGuar;
  String? _venWarEnd;
  String? _eqTypeOfConrt;
  String? _eqRunWarSt;
  String? _contStartDate;
  String? _contEndDate;
  String? _runYearCont;
  String? _aggEquipmentId;
  String? _equipAgSerialNo;
  String? _equipAgPartNo;
  String? _equipAgManuFact;
  String? _equipWarTerms;
  String? _recordId;
  String? _recordModule;
  String? _id;
  String? _accountIdLabel;
  String? _functionalLocLabel;
  String? _eq_last_km_run;
  Data copyWith({
    String? label,
    String? equipmentSlNo,
    String? assignedUserId,
    String? createdtime,
    String? modifiedtime,
    String? source,
    String? starred,
    String? tags,
    String? equipModel,
    String? functionalLoc,
    String? equiDesc,
    String? maintainPlant,
    String? eqEquipStatus,
    String? eqValidFrom,
    String? eqValidTo,
    String? accountId,
    String? eqLastHmr,
    String? plantName,
    String? lastHmrDate,
    String? lastHmrTime,
    String? custWarEnd,
    String? custBeginGuar,
    String? venBeginGuar,
    String? venWarEnd,
    String? eqTypeOfConrt,
    String? eqRunWarSt,
    String? contStartDate,
    String? contEndDate,
    String? runYearCont,
    String? aggEquipmentId,
    String? equipAgSerialNo,
    String? equipAgPartNo,
    String? equipAgManuFact,
    String? equipWarTerms,
    String? recordId,
    String? recordModule,
    String? id,
    String? accountIdLabel,
    String? functionalLocLabel,
  }) =>
      Data(
        label: label ?? _label,
        equipmentSlNo: equipmentSlNo ?? _equipmentSlNo,
        assignedUserId: assignedUserId ?? _assignedUserId,
        createdtime: createdtime ?? _createdtime,
        modifiedtime: modifiedtime ?? _modifiedtime,
        source: source ?? _source,
        starred: starred ?? _starred,
        tags: tags ?? _tags,
        equipModel: equipModel ?? _equipModel,
        functionalLoc: functionalLoc ?? _functionalLoc,
        equiDesc: equiDesc ?? _equiDesc,
        maintainPlant: maintainPlant ?? _maintainPlant,
        eqEquipStatus: eqEquipStatus ?? _eqEquipStatus,
        eqValidFrom: eqValidFrom ?? _eqValidFrom,
        eqValidTo: eqValidTo ?? _eqValidTo,
        accountId: accountId ?? _accountId,
        eqLastHmr: eqLastHmr ?? _eqLastHmr,
        plantName: plantName ?? _plantName,
        lastHmrDate: lastHmrDate ?? _lastHmrDate,
        lastHmrTime: lastHmrTime ?? _lastHmrTime,
        custWarEnd: custWarEnd ?? _custWarEnd,
        custBeginGuar: custBeginGuar ?? _custBeginGuar,
        venBeginGuar: venBeginGuar ?? _venBeginGuar,
        venWarEnd: venWarEnd ?? _venWarEnd,
        eqTypeOfConrt: eqTypeOfConrt ?? _eqTypeOfConrt,
        eqRunWarSt: eqRunWarSt ?? _eqRunWarSt,
        contStartDate: contStartDate ?? _contStartDate,
        contEndDate: contEndDate ?? _contEndDate,
        runYearCont: runYearCont ?? _runYearCont,
        aggEquipmentId: aggEquipmentId ?? _aggEquipmentId,
        equipAgSerialNo: equipAgSerialNo ?? _equipAgSerialNo,
        equipAgPartNo: equipAgPartNo ?? _equipAgPartNo,
        equipAgManuFact: equipAgManuFact ?? _equipAgManuFact,
        equipWarTerms: equipWarTerms ?? _equipWarTerms,
        recordId: recordId ?? _recordId,
        recordModule: recordModule ?? _recordModule,
        id: id ?? _id,
        accountIdLabel: accountIdLabel ?? _accountIdLabel,
        functionalLocLabel: functionalLocLabel ?? _functionalLocLabel,
      );
  String? get label => _label;
  String? get equipmentSlNo => _equipmentSlNo;
  String? get assignedUserId => _assignedUserId;
  String? get createdtime => _createdtime;
  String? get modifiedtime => _modifiedtime;
  String? get source => _source;
  String? get starred => _starred;
  String? get tags => _tags;
  String? get equipModel => _equipModel;
  String? get functionalLoc => _functionalLoc;
  String? get equiDesc => _equiDesc;
  String? get maintainPlant => _maintainPlant;
  String? get eqEquipStatus => _eqEquipStatus;
  String? get eqValidFrom => _eqValidFrom;
  String? get eqValidTo => _eqValidTo;
  String? get accountId => _accountId;
  String? get eqLastHmr => _eqLastHmr;
  String? get plantName => _plantName;
  String? get lastHmrDate => _lastHmrDate;
  String? get lastHmrTime => _lastHmrTime;
  String? get custWarEnd => _custWarEnd;
  String? get custBeginGuar => _custBeginGuar;
  String? get venBeginGuar => _venBeginGuar;
  String? get venWarEnd => _venWarEnd;
  String? get eqTypeOfConrt => _eqTypeOfConrt;
  String? get eqRunWarSt => _eqRunWarSt;
  String? get contStartDate => _contStartDate;
  String? get contEndDate => _contEndDate;
  String? get runYearCont => _runYearCont;
  String? get aggEquipmentId => _aggEquipmentId;
  String? get equipAgSerialNo => _equipAgSerialNo;
  String? get equipAgPartNo => _equipAgPartNo;
  String? get equipAgManuFact => _equipAgManuFact;
  String? get equipWarTerms => _equipWarTerms;
  String? get recordId => _recordId;
  String? get recordModule => _recordModule;
  String? get id => _id;
  String? get accountIdLabel => _accountIdLabel;
  String? get functionalLocLabel => _functionalLocLabel;
  String? get lastkmvalue => _eq_last_km_run;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = _label;
    map['equipment_sl_no'] = _equipmentSlNo;
    map['assigned_user_id'] = _assignedUserId;
    map['createdtime'] = _createdtime;
    map['modifiedtime'] = _modifiedtime;
    map['source'] = _source;
    map['starred'] = _starred;
    map['tags'] = _tags;
    map['equip_model'] = _equipModel;
    map['functional_loc'] = _functionalLoc;
    map['equi_desc'] = _equiDesc;
    map['maintain_plant'] = _maintainPlant;
    map['eq_equip_status'] = _eqEquipStatus;
    map['eq_valid_from'] = _eqValidFrom;
    map['eq_valid_to'] = _eqValidTo;
    map['account_id'] = _accountId;
    map['eq_last_hmr'] = _eqLastHmr;
    map['plant_name'] = _plantName;
    map['last_hmr_date'] = _lastHmrDate;
    map['last_hmr_time'] = _lastHmrTime;
    map['cust_war_end'] = _custWarEnd;
    map['cust_begin_guar'] = _custBeginGuar;
    map['ven_begin_guar'] = _venBeginGuar;
    map['ven_war_end'] = _venWarEnd;
    map['eq_type_of_conrt'] = _eqTypeOfConrt;
    map['eq_run_war_st'] = _eqRunWarSt;
    map['cont_start_date'] = _contStartDate;
    map['cont_end_date'] = _contEndDate;
    map['run_year_cont'] = _runYearCont;
    map['agg_equipment_id'] = _aggEquipmentId;
    map['equip_ag_serial_no'] = _equipAgSerialNo;
    map['equip_ag_part_no'] = _equipAgPartNo;
    map['equip_ag_manu_fact'] = _equipAgManuFact;
    map['equip_war_terms'] = _equipWarTerms;
    map['record_id'] = _recordId;
    map['record_module'] = _recordModule;
    map['id'] = _id;
    map['account_id_label'] = _accountIdLabel;
    map['functional_loc_label'] = _functionalLocLabel;
    map['eq_last_km_run'] = _eq_last_km_run;
    return map;
  }
}
