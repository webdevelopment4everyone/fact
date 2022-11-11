import 'dart:convert';

/// statuscode : 1
/// data : {"label":"000000000010212463","deliveynotessapref":"0081826929","assigned_user_id":"104","createdtime":"2022-09-27 08:09:14","modifiedtime":"2022-10-27 14:14:29","source":"CRM","starred":"","tags":"","equipment_id":"0","delivery_date":"2021-06-24","rec_created_dt":"2021-06-24","account_id":"139241","recieving_plant":"144016","manual_equ_ser":"000000000010212463","record_id":"269352","record_module":"DeliveryNotes","id":"269352","cityOfEquipment":"BANGALORE","account_id_label":"BHARAT ELECTRONICS LIMITED"}
/// statusMessage : "Successfully Fetched Data"

DeliveryPreFetchData deliveryPreFetchDataFromJson(String str) =>
    DeliveryPreFetchData.fromJson(json.decode(str));
String deliveryPreFetchDataToJson(DeliveryPreFetchData data) =>
    json.encode(data.toJson());

class DeliveryPreFetchData {
  DeliveryPreFetchData({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  DeliveryPreFetchData.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;

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

/// label : "000000000010212463"
/// deliveynotessapref : "0081826929"
/// assigned_user_id : "104"
/// createdtime : "2022-09-27 08:09:14"
/// modifiedtime : "2022-10-27 14:14:29"
/// source : "CRM"
/// starred : ""
/// tags : ""
/// equipment_id : "0"
/// delivery_date : "2021-06-24"
/// rec_created_dt : "2021-06-24"
/// account_id : "139241"
/// recieving_plant : "144016"
/// manual_equ_ser : "000000000010212463"
/// record_id : "269352"
/// record_module : "DeliveryNotes"
/// id : "269352"
/// cityOfEquipment : "BANGALORE"
/// account_id_label : "BHARAT ELECTRONICS LIMITED"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    String? label,
    String? deliveynotessapref,
    String? assignedUserId,
    String? createdtime,
    String? modifiedtime,
    String? source,
    String? starred,
    String? tags,
    String? equipmentId,
    String? deliveryDate,
    String? recCreatedDt,
    String? accountId,
    String? recievingPlant,
    String? manualEquSer,
    String? recordId,
    String? recordModule,
    String? id,
    String? cityOfEquipment,
    String? accountIdLabel,
  }) {
    _label = label;
    _deliveynotessapref = deliveynotessapref;
    _assignedUserId = assignedUserId;
    _createdtime = createdtime;
    _modifiedtime = modifiedtime;
    _source = source;
    _starred = starred;
    _tags = tags;
    _equipmentId = equipmentId;
    _deliveryDate = deliveryDate;
    _recCreatedDt = recCreatedDt;
    _accountId = accountId;
    _recievingPlant = recievingPlant;
    _manualEquSer = manualEquSer;
    _recordId = recordId;
    _recordModule = recordModule;
    _id = id;
    _cityOfEquipment = cityOfEquipment;
    _accountIdLabel = accountIdLabel;
  }

  Data.fromJson(dynamic json) {
    _label = json['label'];
    _deliveynotessapref = json['deliveynotessapref'];
    _assignedUserId = json['assigned_user_id'];
    _createdtime = json['createdtime'];
    _modifiedtime = json['modifiedtime'];
    _source = json['source'];
    _starred = json['starred'];
    _tags = json['tags'];
    _equipmentId = json['equipment_id'];
    _deliveryDate = json['delivery_date'];
    _recCreatedDt = json['rec_created_dt'];
    _accountId = json['account_id'];
    _recievingPlant = json['recieving_plant'];
    _manualEquSer = json['manual_equ_ser'];
    _recordId = json['record_id'];
    _recordModule = json['record_module'];
    _id = json['id'];
    _cityOfEquipment = json['cityOfEquipment'];
    _accountIdLabel = json['account_id_label'];
  }
  String? _label;
  String? _deliveynotessapref;
  String? _assignedUserId;
  String? _createdtime;
  String? _modifiedtime;
  String? _source;
  String? _starred;
  String? _tags;
  String? _equipmentId;
  String? _deliveryDate;
  String? _recCreatedDt;
  String? _accountId;
  String? _recievingPlant;
  String? _manualEquSer;
  String? _recordId;
  String? _recordModule;
  String? _id;
  String? _cityOfEquipment;
  String? _accountIdLabel;

  String? get label => _label;
  String? get deliveynotessapref => _deliveynotessapref;
  String? get assignedUserId => _assignedUserId;
  String? get createdtime => _createdtime;
  String? get modifiedtime => _modifiedtime;
  String? get source => _source;
  String? get starred => _starred;
  String? get tags => _tags;
  String? get equipmentId => _equipmentId;
  String? get deliveryDate => _deliveryDate;
  String? get recCreatedDt => _recCreatedDt;
  String? get accountId => _accountId;
  String? get recievingPlant => _recievingPlant;
  String? get manualEquSer => _manualEquSer;
  String? get recordId => _recordId;
  String? get recordModule => _recordModule;
  String? get id => _id;
  String? get cityOfEquipment => _cityOfEquipment;
  String? get accountIdLabel => _accountIdLabel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = _label;
    map['deliveynotessapref'] = _deliveynotessapref;
    map['assigned_user_id'] = _assignedUserId;
    map['createdtime'] = _createdtime;
    map['modifiedtime'] = _modifiedtime;
    map['source'] = _source;
    map['starred'] = _starred;
    map['tags'] = _tags;
    map['equipment_id'] = _equipmentId;
    map['delivery_date'] = _deliveryDate;
    map['rec_created_dt'] = _recCreatedDt;
    map['account_id'] = _accountId;
    map['recieving_plant'] = _recievingPlant;
    map['manual_equ_ser'] = _manualEquSer;
    map['record_id'] = _recordId;
    map['record_module'] = _recordModule;
    map['id'] = _id;
    map['cityOfEquipment'] = _cityOfEquipment;
    map['account_id_label'] = _accountIdLabel;
    return map;
  }
}
