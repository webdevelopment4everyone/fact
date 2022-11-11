import 'dart:convert';

//{
//     "statuscode": 1,
//     "data": {
//         "record": {
//             "equip_model": "BH85-1",
//             "source": "CRM",
//             "starred": "",
//             "equipment_sl_no": "000000000000008154",
//             "tags": "",
//             "functional_locLabel": "SECL GEVRA",
//             "functional_loc": "45x36804",
//             "equi_desc": "BH85-1 DUMP TRUCZ TEST",
//             "maintain_plant": "1000",
//             "eq_equip_status": "ECUS INST",
//             "eq_valid_from": "2015-05-05",
//             "eq_valid_to": "9999-12-31",
//             "account_idLabel": "IRCON INTERNATIONAL LTD",
//             "account_id": "11x14370",
//             "plant_nameLabel": "Bilaspur-Depot",
//             "plant_name": "51x42547",
//             "cust_war_end": "1900-12-28",
//             "cust_begin_guar": "2009-01-01",
//             "eq_type_of_conrt": "COSTCAP",
//             "eq_run_war_st": "Warranty",
//             "equip_war_terms": "Main Wth 6 months - 1000 Hrs",
//             "run_year_cont": "2029",
//             "cont_start_date": "2022-08-17",
//             "cont_end_date": "2022-09-01",
//             "ven_begin_guar": "2022-08-17",
//             "ven_war_end": "2022-08-17",
//             "assigned_user_idLabel": "Bilaspur-Depot",
//             "assigned_user_id": "20x72",
//             "createdtime": "2022-06-30 14:20:05",
//             "modifiedtime": "2022-08-26 06:11:26",
//             "eq_last_hmr": "30000611",
//             "last_hmr_date": "2022-08-17",
//             "last_hmr_time": "20:33:00",
//             "equip_ag_manu_fact": "",
//             "agg_equipment_idLabel": "",
//             "agg_equipment_id": "",
//             "equip_ag_part_no": "",
//             "equip_ag_serial_no": "0000000000000000000"
//         }
//     },
//     "statusMessage": "Successfully Fetched Data"
// }

AutoFetchLocationId autoFetchLocationIdFromJson(String str) =>
    AutoFetchLocationId.fromJson(json.decode(str));
String autoFetchLocationIdToJson(AutoFetchLocationId data) =>
    json.encode(data.toJson());

class AutoFetchLocationId {
  AutoFetchLocationId({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  AutoFetchLocationId.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  AutoFetchLocationId copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      AutoFetchLocationId(
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

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    RecordOfAutoFetch? record,
  }) {
    _record = record;
  }

  Data.fromJson(dynamic json) {
    _record = json['record'] != null
        ? RecordOfAutoFetch.fromJson(json['record'])
        : null;
  }
  RecordOfAutoFetch? _record;
  Data copyWith({
    RecordOfAutoFetch? record,
  }) =>
      Data(
        record: record ?? _record,
      );
  RecordOfAutoFetch? get record => _record;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_record != null) {
      map['record'] = _record?.toJson();
    }
    return map;
  }
}

RecordOfAutoFetch recordFromJson(String str) =>
    RecordOfAutoFetch.fromJson(json.decode(str));
String recordToJson(RecordOfAutoFetch data) => json.encode(data.toJson());

class RecordOfAutoFetch {
  RecordOfAutoFetch({
    String? equipModel,
    String? source,
    String? starred,
    String? equipmentSlNo,
    String? tags,
    String? functionalLocLabel,
    String? functionalLoc,
    String? equiDesc,
    String? maintainPlant,
    String? eqEquipStatus,
    String? eqValidFrom,
    String? eqValidTo,
    String? accountIdLabel,
    String? accountId,
    String? plantNameLabel,
    String? plantName,
    String? custWarEnd,
    String? custBeginGuar,
    String? eqTypeOfConrt,
    String? eqRunWarSt,
    String? equipWarTerms,
    String? runYearCont,
    String? contStartDate,
    String? contEndDate,
    String? venBeginGuar,
    String? venWarEnd,
    String? assignedUserIdLabel,
    String? assignedUserId,
    String? createdtime,
    String? modifiedtime,
    String? eqLastHmr,
    String? lastHmrDate,
    String? lastHmrTime,
    String? equipAgManuFact,
    String? aggEquipmentIdLabel,
    String? aggEquipmentId,
    String? equipAgPartNo,
    String? equipAgSerialNo,
  }) {
    _equipModel = equipModel;
    _source = source;
    _starred = starred;
    _equipmentSlNo = equipmentSlNo;
    _tags = tags;
    _functionalLocLabel = functionalLocLabel;
    _functionalLoc = functionalLoc;
    _equiDesc = equiDesc;
    _maintainPlant = maintainPlant;
    _eqEquipStatus = eqEquipStatus;
    _eqValidFrom = eqValidFrom;
    _eqValidTo = eqValidTo;
    _accountIdLabel = accountIdLabel;
    _accountId = accountId;
    _plantNameLabel = plantNameLabel;
    _plantName = plantName;
    _custWarEnd = custWarEnd;
    _custBeginGuar = custBeginGuar;
    _eqTypeOfConrt = eqTypeOfConrt;
    _eqRunWarSt = eqRunWarSt;
    _equipWarTerms = equipWarTerms;
    _runYearCont = runYearCont;
    _contStartDate = contStartDate;
    _contEndDate = contEndDate;
    _venBeginGuar = venBeginGuar;
    _venWarEnd = venWarEnd;
    _assignedUserIdLabel = assignedUserIdLabel;
    _assignedUserId = assignedUserId;
    _createdtime = createdtime;
    _modifiedtime = modifiedtime;
    _eqLastHmr = eqLastHmr;
    _lastHmrDate = lastHmrDate;
    _lastHmrTime = lastHmrTime;
    _equipAgManuFact = equipAgManuFact;
    _aggEquipmentIdLabel = aggEquipmentIdLabel;
    _aggEquipmentId = aggEquipmentId;
    _equipAgPartNo = equipAgPartNo;
    _equipAgSerialNo = equipAgSerialNo;
  }

  RecordOfAutoFetch.fromJson(dynamic json) {
    _equipModel = json['equip_model'];
    _source = json['source'];
    _starred = json['starred'];
    _equipmentSlNo = json['equipment_sl_no'];
    _tags = json['tags'];
    _functionalLocLabel = json['functional_locLabel'];
    _functionalLoc = json['functional_loc'];
    _equiDesc = json['equi_desc'];
    _maintainPlant = json['maintain_plant'];
    _eqEquipStatus = json['eq_equip_status'];
    _eqValidFrom = json['eq_valid_from'];
    _eqValidTo = json['eq_valid_to'];
    _accountIdLabel = json['account_idLabel'];
    _accountId = json['account_id'];
    _plantNameLabel = json['plant_nameLabel'];
    _plantName = json['plant_name'];
    _custWarEnd = json['cust_war_end'];
    _custBeginGuar = json['cust_begin_guar'];
    _eqTypeOfConrt = json['eq_type_of_conrt'];
    _eqRunWarSt = json['eq_run_war_st'];
    _equipWarTerms = json['equip_war_terms'];
    _runYearCont = json['run_year_cont'];
    _contStartDate = json['cont_start_date'];
    _contEndDate = json['cont_end_date'];
    _venBeginGuar = json['ven_begin_guar'];
    _venWarEnd = json['ven_war_end'];
    _assignedUserIdLabel = json['assigned_user_idLabel'];
    _assignedUserId = json['assigned_user_id'];
    _createdtime = json['createdtime'];
    _modifiedtime = json['modifiedtime'];
    _eqLastHmr = json['eq_last_hmr'];
    _lastHmrDate = json['last_hmr_date'];
    _lastHmrTime = json['last_hmr_time'];
    _equipAgManuFact = json['equip_ag_manu_fact'];
    _aggEquipmentIdLabel = json['agg_equipment_idLabel'];
    _aggEquipmentId = json['agg_equipment_id'];
    _equipAgPartNo = json['equip_ag_part_no'];
    _equipAgSerialNo = json['equip_ag_serial_no'];
  }
  String? _equipModel;
  String? _source;
  String? _starred;
  String? _equipmentSlNo;
  String? _tags;
  String? _functionalLocLabel;
  String? _functionalLoc;
  String? _equiDesc;
  String? _maintainPlant;
  String? _eqEquipStatus;
  String? _eqValidFrom;
  String? _eqValidTo;
  String? _accountIdLabel;
  String? _accountId;
  String? _plantNameLabel;
  String? _plantName;
  String? _custWarEnd;
  String? _custBeginGuar;
  String? _eqTypeOfConrt;
  String? _eqRunWarSt;
  String? _equipWarTerms;
  String? _runYearCont;
  String? _contStartDate;
  String? _contEndDate;
  String? _venBeginGuar;
  String? _venWarEnd;
  String? _assignedUserIdLabel;
  String? _assignedUserId;
  String? _createdtime;
  String? _modifiedtime;
  String? _eqLastHmr;
  String? _lastHmrDate;
  String? _lastHmrTime;
  String? _equipAgManuFact;
  String? _aggEquipmentIdLabel;
  String? _aggEquipmentId;
  String? _equipAgPartNo;
  String? _equipAgSerialNo;
  RecordOfAutoFetch copyWith({
    String? equipModel,
    String? source,
    String? starred,
    String? equipmentSlNo,
    String? tags,
    String? functionalLocLabel,
    String? functionalLoc,
    String? equiDesc,
    String? maintainPlant,
    String? eqEquipStatus,
    String? eqValidFrom,
    String? eqValidTo,
    String? accountIdLabel,
    String? accountId,
    String? plantNameLabel,
    String? plantName,
    String? custWarEnd,
    String? custBeginGuar,
    String? eqTypeOfConrt,
    String? eqRunWarSt,
    String? equipWarTerms,
    String? runYearCont,
    String? contStartDate,
    String? contEndDate,
    String? venBeginGuar,
    String? venWarEnd,
    String? assignedUserIdLabel,
    String? assignedUserId,
    String? createdtime,
    String? modifiedtime,
    String? eqLastHmr,
    String? lastHmrDate,
    String? lastHmrTime,
    String? equipAgManuFact,
    String? aggEquipmentIdLabel,
    String? aggEquipmentId,
    String? equipAgPartNo,
    String? equipAgSerialNo,
  }) =>
      RecordOfAutoFetch(
        equipModel: equipModel ?? _equipModel,
        source: source ?? _source,
        starred: starred ?? _starred,
        equipmentSlNo: equipmentSlNo ?? _equipmentSlNo,
        tags: tags ?? _tags,
        functionalLocLabel: functionalLocLabel ?? _functionalLocLabel,
        functionalLoc: functionalLoc ?? _functionalLoc,
        equiDesc: equiDesc ?? _equiDesc,
        maintainPlant: maintainPlant ?? _maintainPlant,
        eqEquipStatus: eqEquipStatus ?? _eqEquipStatus,
        eqValidFrom: eqValidFrom ?? _eqValidFrom,
        eqValidTo: eqValidTo ?? _eqValidTo,
        accountIdLabel: accountIdLabel ?? _accountIdLabel,
        accountId: accountId ?? _accountId,
        plantNameLabel: plantNameLabel ?? _plantNameLabel,
        plantName: plantName ?? _plantName,
        custWarEnd: custWarEnd ?? _custWarEnd,
        custBeginGuar: custBeginGuar ?? _custBeginGuar,
        eqTypeOfConrt: eqTypeOfConrt ?? _eqTypeOfConrt,
        eqRunWarSt: eqRunWarSt ?? _eqRunWarSt,
        equipWarTerms: equipWarTerms ?? _equipWarTerms,
        runYearCont: runYearCont ?? _runYearCont,
        contStartDate: contStartDate ?? _contStartDate,
        contEndDate: contEndDate ?? _contEndDate,
        venBeginGuar: venBeginGuar ?? _venBeginGuar,
        venWarEnd: venWarEnd ?? _venWarEnd,
        assignedUserIdLabel: assignedUserIdLabel ?? _assignedUserIdLabel,
        assignedUserId: assignedUserId ?? _assignedUserId,
        createdtime: createdtime ?? _createdtime,
        modifiedtime: modifiedtime ?? _modifiedtime,
        eqLastHmr: eqLastHmr ?? _eqLastHmr,
        lastHmrDate: lastHmrDate ?? _lastHmrDate,
        lastHmrTime: lastHmrTime ?? _lastHmrTime,
        equipAgManuFact: equipAgManuFact ?? _equipAgManuFact,
        aggEquipmentIdLabel: aggEquipmentIdLabel ?? _aggEquipmentIdLabel,
        aggEquipmentId: aggEquipmentId ?? _aggEquipmentId,
        equipAgPartNo: equipAgPartNo ?? _equipAgPartNo,
        equipAgSerialNo: equipAgSerialNo ?? _equipAgSerialNo,
      );
  String? get equipModel => _equipModel;
  String? get source => _source;
  String? get starred => _starred;
  String? get equipmentSlNo => _equipmentSlNo;
  String? get tags => _tags;
  String? get functionalLocLabel => _functionalLocLabel;
  String? get functionalLoc => _functionalLoc;
  String? get equiDesc => _equiDesc;
  String? get maintainPlant => _maintainPlant;
  String? get eqEquipStatus => _eqEquipStatus;
  String? get eqValidFrom => _eqValidFrom;
  String? get eqValidTo => _eqValidTo;
  String? get accountIdLabel => _accountIdLabel;
  String? get accountId => _accountId;
  String? get plantNameLabel => _plantNameLabel;
  String? get plantName => _plantName;
  String? get custWarEnd => _custWarEnd;
  String? get custBeginGuar => _custBeginGuar;
  String? get eqTypeOfConrt => _eqTypeOfConrt;
  String? get eqRunWarSt => _eqRunWarSt;
  String? get equipWarTerms => _equipWarTerms;
  String? get runYearCont => _runYearCont;
  String? get contStartDate => _contStartDate;
  String? get contEndDate => _contEndDate;
  String? get venBeginGuar => _venBeginGuar;
  String? get venWarEnd => _venWarEnd;
  String? get assignedUserIdLabel => _assignedUserIdLabel;
  String? get assignedUserId => _assignedUserId;
  String? get createdtime => _createdtime;
  String? get modifiedtime => _modifiedtime;
  String? get eqLastHmr => _eqLastHmr;
  String? get lastHmrDate => _lastHmrDate;
  String? get lastHmrTime => _lastHmrTime;
  String? get equipAgManuFact => _equipAgManuFact;
  String? get aggEquipmentIdLabel => _aggEquipmentIdLabel;
  String? get aggEquipmentId => _aggEquipmentId;
  String? get equipAgPartNo => _equipAgPartNo;
  String? get equipAgSerialNo => _equipAgSerialNo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['equip_model'] = _equipModel;
    map['source'] = _source;
    map['starred'] = _starred;
    map['equipment_sl_no'] = _equipmentSlNo;
    map['tags'] = _tags;
    map['functional_locLabel'] = _functionalLocLabel;
    map['functional_loc'] = _functionalLoc;
    map['equi_desc'] = _equiDesc;
    map['maintain_plant'] = _maintainPlant;
    map['eq_equip_status'] = _eqEquipStatus;
    map['eq_valid_from'] = _eqValidFrom;
    map['eq_valid_to'] = _eqValidTo;
    map['account_idLabel'] = _accountIdLabel;
    map['account_id'] = _accountId;
    map['plant_nameLabel'] = _plantNameLabel;
    map['plant_name'] = _plantName;
    map['cust_war_end'] = _custWarEnd;
    map['cust_begin_guar'] = _custBeginGuar;
    map['eq_type_of_conrt'] = _eqTypeOfConrt;
    map['eq_run_war_st'] = _eqRunWarSt;
    map['equip_war_terms'] = _equipWarTerms;
    map['run_year_cont'] = _runYearCont;
    map['cont_start_date'] = _contStartDate;
    map['cont_end_date'] = _contEndDate;
    map['ven_begin_guar'] = _venBeginGuar;
    map['ven_war_end'] = _venWarEnd;
    map['assigned_user_idLabel'] = _assignedUserIdLabel;
    map['assigned_user_id'] = _assignedUserId;
    map['createdtime'] = _createdtime;
    map['modifiedtime'] = _modifiedtime;
    map['eq_last_hmr'] = _eqLastHmr;
    map['last_hmr_date'] = _lastHmrDate;
    map['last_hmr_time'] = _lastHmrTime;
    map['equip_ag_manu_fact'] = _equipAgManuFact;
    map['agg_equipment_idLabel'] = _aggEquipmentIdLabel;
    map['agg_equipment_id'] = _aggEquipmentId;
    map['equip_ag_part_no'] = _equipAgPartNo;
    map['equip_ag_serial_no'] = _equipAgSerialNo;
    return map;
  }
}
