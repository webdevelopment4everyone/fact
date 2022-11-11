import 'dart:convert';

/// statuscode : 1
/// data : {"recordData":[{"mt_pdical_maint_type":"","sad_ag_sl_no":"","sad_sel_ag_name":"Engine","sad_whoa":"0","sad_manu_name":"","sad_dof":"2022-11-05"},{"mt_pdical_maint_type":"","sad_ag_sl_no":"dsfd","sad_sel_ag_name":"Engine","sad_whoa":"0","sad_manu_name":"","sad_dof":"2022-11-05"},{"mt_pdical_maint_type":"","sad_ag_sl_no":"jkdjd","sad_sel_ag_name":"Engine","sad_whoa":"3900","sad_manu_name":"klt tech","sad_dof":"2022-11-05"},{"mt_pdical_maint_type":"","sad_ag_sl_no":"jkdjd","sad_sel_ag_name":"Engine","sad_whoa":"0","sad_manu_name":"klt tech","sad_dof":"2022-11-05"},{"mt_pdical_maint_type":"","sad_ag_sl_no":"jkdjd","sad_sel_ag_name":"Engine","sad_whoa":"0","sad_manu_name":"klt tech","sad_dof":"2022-11-05"}]}
/// statusMessage : "Successfully Fetched Data"

GetAggregateinfo getAggregateinfoFromJson(String str) =>
    GetAggregateinfo.fromJson(json.decode(str));
String getAggregateinfoToJson(GetAggregateinfo data) =>
    json.encode(data.toJson());

class GetAggregateinfo {
  GetAggregateinfo({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  GetAggregateinfo.fromJson(dynamic json) {
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

/// recordData : [{"mt_pdical_maint_type":"","sad_ag_sl_no":"","sad_sel_ag_name":"Engine","sad_whoa":"0","sad_manu_name":"","sad_dof":"2022-11-05"},{"mt_pdical_maint_type":"","sad_ag_sl_no":"dsfd","sad_sel_ag_name":"Engine","sad_whoa":"0","sad_manu_name":"","sad_dof":"2022-11-05"},{"mt_pdical_maint_type":"","sad_ag_sl_no":"jkdjd","sad_sel_ag_name":"Engine","sad_whoa":"3900","sad_manu_name":"klt tech","sad_dof":"2022-11-05"},{"mt_pdical_maint_type":"","sad_ag_sl_no":"jkdjd","sad_sel_ag_name":"Engine","sad_whoa":"0","sad_manu_name":"klt tech","sad_dof":"2022-11-05"},{"mt_pdical_maint_type":"","sad_ag_sl_no":"jkdjd","sad_sel_ag_name":"Engine","sad_whoa":"0","sad_manu_name":"klt tech","sad_dof":"2022-11-05"}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<RecordData>? recordData,
  }) {
    _recordData = recordData;
  }

  Data.fromJson(dynamic json) {
    if (json['recordData'] != null) {
      _recordData = [];
      json['recordData'].forEach((v) {
        _recordData?.add(RecordData.fromJson(v));
      });
    }
  }
  List<RecordData>? _recordData;

  List<RecordData>? get recordData => _recordData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_recordData != null) {
      map['recordData'] = _recordData?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// mt_pdical_maint_type : ""
/// sad_ag_sl_no : ""
/// sad_sel_ag_name : "Engine"
/// sad_whoa : "0"
/// sad_manu_name : ""
/// sad_dof : "2022-11-05"

RecordData recordDataFromJson(String str) =>
    RecordData.fromJson(json.decode(str));
String recordDataToJson(RecordData data) => json.encode(data.toJson());

class RecordData {
  RecordData({
    String? mtPdicalMaintType,
    String? sadAgSlNo,
    String? sadSelAgName,
    String? sadWhoa,
    String? sadManuName,
    String? sadDof,
  }) {
    _mtPdicalMaintType = mtPdicalMaintType;
    _sadAgSlNo = sadAgSlNo;
    _sadSelAgName = sadSelAgName;
    _sadWhoa = sadWhoa;
    _sadManuName = sadManuName;
    _sadDof = sadDof;
  }

  RecordData.fromJson(dynamic json) {
    _mtPdicalMaintType = json['mt_pdical_maint_type'];
    _sadAgSlNo = json['sad_ag_sl_no'];
    _sadSelAgName = json['sad_sel_ag_name'];
    _sadWhoa = json['sad_whoa'];
    _sadManuName = json['sad_manu_name'];
    _sadDof = json['sad_dof'];
  }
  String? _mtPdicalMaintType;
  String? _sadAgSlNo;
  String? _sadSelAgName;
  String? _sadWhoa;
  String? _sadManuName;
  String? _sadDof;

  String? get mtPdicalMaintType => _mtPdicalMaintType;
  String? get sadAgSlNo => _sadAgSlNo;
  String? get sadSelAgName => _sadSelAgName;
  String? get sadWhoa => _sadWhoa;
  String? get sadManuName => _sadManuName;
  String? get sadDof => _sadDof;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mt_pdical_maint_type'] = _mtPdicalMaintType;
    map['sad_ag_sl_no'] = _sadAgSlNo;
    map['sad_sel_ag_name'] = _sadSelAgName;
    map['sad_whoa'] = _sadWhoa;
    map['sad_manu_name'] = _sadManuName;
    map['sad_dof'] = _sadDof;
    return map;
  }
}
