import 'dart:convert';

/// statuscode : 1
/// data : {"records":[{"id":"46x88607","creditnote_no":"BEML-SER-REP159","account_id":"","sr_ticket_type":"BREAKDOWN","assigned_user_id":"70","servicereportsid":"88607"},{"id":"46x88587","creditnote_no":"BEML-SER-REP158","account_id":"","sr_ticket_type":"PRE-DELIVERY","assigned_user_id":"70","servicereportsid":"88587"},{"id":"46x88546","creditnote_no":"BEML-SER-REP157","account_id":"","sr_ticket_type":"PREVENTIVE MAINTENANCE","assigned_user_id":"70","servicereportsid":"88546"},{"id":"46x88545","creditnote_no":"BEML-SER-REP156","account_id":"","sr_ticket_type":"PERIODICAL MAINTENANCE","assigned_user_id":"70","servicereportsid":"88545"},{"id":"46x88544","creditnote_no":"BEML-SER-REP155","account_id":"","sr_ticket_type":"PERIODICAL MAINTENANCE","assigned_user_id":"70","servicereportsid":"88544"},{"id":"46x88542","creditnote_no":"BEML-SER-REP154","account_id":"","sr_ticket_type":"PERIODICAL MAINTENANCE","assigned_user_id":"70","servicereportsid":"88542"},{"id":"46x88541","creditnote_no":"BEML-SER-REP153","account_id":"","sr_ticket_type":"PRE-DELIVERY","assigned_user_id":"70","servicereportsid":"88541"},{"id":"46x88539","creditnote_no":"BEML-SER-REP152","account_id":"","sr_ticket_type":"PRE-DELIVERY","assigned_user_id":"70","servicereportsid":"88539"},{"id":"46x88538","creditnote_no":"BEML-SER-REP151","account_id":"","sr_ticket_type":"PRE-DELIVERY","assigned_user_id":"70","servicereportsid":"88538"},{"id":"46x88537","creditnote_no":"BEML-SER-REP150","account_id":"","sr_ticket_type":"PRE-DELIVERY","assigned_user_id":"70","servicereportsid":"88537"},{"id":"46x88459","creditnote_no":"BEML-SER-REP128","account_id":"","sr_ticket_type":"PREVENTIVE MAINTENANCE","assigned_user_id":"70","servicereportsid":"88459"},{"id":"46x88487","creditnote_no":"BEML-SER-REP140","account_id":"","sr_ticket_type":"BREAKDOWN","assigned_user_id":"70","servicereportsid":"88487"},{"id":"46x88483","creditnote_no":"BEML-SER-REP139","account_id":"BCCL, RAJAPUR O.C.P Email Got Chan","sr_ticket_type":"PRE-DELIVERY","assigned_user_id":"70","servicereportsid":"88483"},{"id":"46x88473","creditnote_no":"BEML-SER-REP136","account_id":"","sr_ticket_type":"PREVENTIVE MAINTENANCE","assigned_user_id":"70","servicereportsid":"88473"},{"id":"46x88458","creditnote_no":"BEML-SER-REP127","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"88458"},{"id":"46x88457","creditnote_no":"BEML-SER-REP126","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"88457"},{"id":"46x88456","creditnote_no":"BEML-SER-REP125","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"88456"},{"id":"46x88455","creditnote_no":"BEML-SER-REP124","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"88455"},{"id":"46x66425","creditnote_no":"BEML-SER-REP115","account_id":"","sr_ticket_type":"BREAKDOWN","assigned_user_id":"70","servicereportsid":"66425"},{"id":"46x64465","creditnote_no":"BEML-SER-REP93","account_id":"","sr_ticket_type":"BREAKDOWN","assigned_user_id":"70","servicereportsid":"64465"},{"id":"46x64451","creditnote_no":"BEML-SER-REP87","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"64451"},{"id":"46x64450","creditnote_no":"BEML-SER-REP86","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"64450"},{"id":"46x64449","creditnote_no":"BEML-SER-REP85","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"64449"},{"id":"46x64448","creditnote_no":"BEML-SER-REP84","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"64448"}],"headers":[{"name":"creditnote_no","label":"Report Number","fieldType":"string"},{"name":"account_id","label":"Organisation Name","fieldType":"reference"},{"name":"sr_ticket_type","label":"Type","fieldType":"picklist"},{"name":"assigned_user_id","label":"Assigned To","fieldType":"owner"},{"name":"creditnote_no","label":"Report Number","fieldType":"string"}],"selectedFilter":"64","nameFields":["creditnote_no"],"moreRecords":false,"orderBy":false,"sortOrder":false,"page":"1"}
/// statusMessage : "Successfully Fetched Data"

ServiceReportListView serviceReportListViewFromJson(String str) =>
    ServiceReportListView.fromJson(json.decode(str));
String serviceReportListViewToJson(ServiceReportListView data) =>
    json.encode(data.toJson());

class ServiceReportListView {
  ServiceReportListView({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  ServiceReportListView.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  ServiceReportListView copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      ServiceReportListView(
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

/// records : [{"id":"46x88607","creditnote_no":"BEML-SER-REP159","account_id":"","sr_ticket_type":"BREAKDOWN","assigned_user_id":"70","servicereportsid":"88607"},{"id":"46x88587","creditnote_no":"BEML-SER-REP158","account_id":"","sr_ticket_type":"PRE-DELIVERY","assigned_user_id":"70","servicereportsid":"88587"},{"id":"46x88546","creditnote_no":"BEML-SER-REP157","account_id":"","sr_ticket_type":"PREVENTIVE MAINTENANCE","assigned_user_id":"70","servicereportsid":"88546"},{"id":"46x88545","creditnote_no":"BEML-SER-REP156","account_id":"","sr_ticket_type":"PERIODICAL MAINTENANCE","assigned_user_id":"70","servicereportsid":"88545"},{"id":"46x88544","creditnote_no":"BEML-SER-REP155","account_id":"","sr_ticket_type":"PERIODICAL MAINTENANCE","assigned_user_id":"70","servicereportsid":"88544"},{"id":"46x88542","creditnote_no":"BEML-SER-REP154","account_id":"","sr_ticket_type":"PERIODICAL MAINTENANCE","assigned_user_id":"70","servicereportsid":"88542"},{"id":"46x88541","creditnote_no":"BEML-SER-REP153","account_id":"","sr_ticket_type":"PRE-DELIVERY","assigned_user_id":"70","servicereportsid":"88541"},{"id":"46x88539","creditnote_no":"BEML-SER-REP152","account_id":"","sr_ticket_type":"PRE-DELIVERY","assigned_user_id":"70","servicereportsid":"88539"},{"id":"46x88538","creditnote_no":"BEML-SER-REP151","account_id":"","sr_ticket_type":"PRE-DELIVERY","assigned_user_id":"70","servicereportsid":"88538"},{"id":"46x88537","creditnote_no":"BEML-SER-REP150","account_id":"","sr_ticket_type":"PRE-DELIVERY","assigned_user_id":"70","servicereportsid":"88537"},{"id":"46x88459","creditnote_no":"BEML-SER-REP128","account_id":"","sr_ticket_type":"PREVENTIVE MAINTENANCE","assigned_user_id":"70","servicereportsid":"88459"},{"id":"46x88487","creditnote_no":"BEML-SER-REP140","account_id":"","sr_ticket_type":"BREAKDOWN","assigned_user_id":"70","servicereportsid":"88487"},{"id":"46x88483","creditnote_no":"BEML-SER-REP139","account_id":"BCCL, RAJAPUR O.C.P Email Got Chan","sr_ticket_type":"PRE-DELIVERY","assigned_user_id":"70","servicereportsid":"88483"},{"id":"46x88473","creditnote_no":"BEML-SER-REP136","account_id":"","sr_ticket_type":"PREVENTIVE MAINTENANCE","assigned_user_id":"70","servicereportsid":"88473"},{"id":"46x88458","creditnote_no":"BEML-SER-REP127","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"88458"},{"id":"46x88457","creditnote_no":"BEML-SER-REP126","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"88457"},{"id":"46x88456","creditnote_no":"BEML-SER-REP125","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"88456"},{"id":"46x88455","creditnote_no":"BEML-SER-REP124","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"88455"},{"id":"46x66425","creditnote_no":"BEML-SER-REP115","account_id":"","sr_ticket_type":"BREAKDOWN","assigned_user_id":"70","servicereportsid":"66425"},{"id":"46x64465","creditnote_no":"BEML-SER-REP93","account_id":"","sr_ticket_type":"BREAKDOWN","assigned_user_id":"70","servicereportsid":"64465"},{"id":"46x64451","creditnote_no":"BEML-SER-REP87","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"64451"},{"id":"46x64450","creditnote_no":"BEML-SER-REP86","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"64450"},{"id":"46x64449","creditnote_no":"BEML-SER-REP85","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"64449"},{"id":"46x64448","creditnote_no":"BEML-SER-REP84","account_id":"","sr_ticket_type":"","assigned_user_id":"70","servicereportsid":"64448"}]
/// headers : [{"name":"creditnote_no","label":"Report Number","fieldType":"string"},{"name":"account_id","label":"Organisation Name","fieldType":"reference"},{"name":"sr_ticket_type","label":"Type","fieldType":"picklist"},{"name":"assigned_user_id","label":"Assigned To","fieldType":"owner"},{"name":"creditnote_no","label":"Report Number","fieldType":"string"}]
/// selectedFilter : "64"
/// nameFields : ["creditnote_no"]
/// moreRecords : false
/// orderBy : false
/// sortOrder : false
/// page : "1"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<Records>? records,
    List<Headers>? headers,
    String? selectedFilter,
    List<String>? nameFields,
    bool? moreRecords,
    bool? orderBy,
    bool? sortOrder,
    String? page,
  }) {
    _records = records;
    _headers = headers;
    _selectedFilter = selectedFilter;
    _nameFields = nameFields;
    _moreRecords = moreRecords;
    _orderBy = orderBy;
    _sortOrder = sortOrder;
    _page = page;
  }

  Data.fromJson(dynamic json) {
    if (json['records'] != null) {
      _records = [];
      json['records'].forEach((v) {
        _records?.add(Records.fromJson(v));
      });
    }
    if (json['headers'] != null) {
      _headers = [];
      json['headers'].forEach((v) {
        _headers?.add(Headers.fromJson(v));
      });
    }
    _selectedFilter = json['selectedFilter'];
    _nameFields =
        json['nameFields'] != null ? json['nameFields'].cast<String>() : [];
    _moreRecords = json['moreRecords'];
    _orderBy = json['orderBy'];
    _sortOrder = json['sortOrder'];
    _page = json['page'];
  }
  List<Records>? _records;
  List<Headers>? _headers;
  String? _selectedFilter;
  List<String>? _nameFields;
  bool? _moreRecords;
  bool? _orderBy;
  bool? _sortOrder;
  String? _page;
  Data copyWith({
    List<Records>? records,
    List<Headers>? headers,
    String? selectedFilter,
    List<String>? nameFields,
    bool? moreRecords,
    bool? orderBy,
    bool? sortOrder,
    String? page,
  }) =>
      Data(
        records: records ?? _records,
        headers: headers ?? _headers,
        selectedFilter: selectedFilter ?? _selectedFilter,
        nameFields: nameFields ?? _nameFields,
        moreRecords: moreRecords ?? _moreRecords,
        orderBy: orderBy ?? _orderBy,
        sortOrder: sortOrder ?? _sortOrder,
        page: page ?? _page,
      );
  List<Records>? get records => _records;
  List<Headers>? get headers => _headers;
  String? get selectedFilter => _selectedFilter;
  List<String>? get nameFields => _nameFields;
  bool? get moreRecords => _moreRecords;
  bool? get orderBy => _orderBy;
  bool? get sortOrder => _sortOrder;
  String? get page => _page;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_records != null) {
      map['records'] = _records?.map((v) => v.toJson()).toList();
    }
    if (_headers != null) {
      map['headers'] = _headers?.map((v) => v.toJson()).toList();
    }
    map['selectedFilter'] = _selectedFilter;
    map['nameFields'] = _nameFields;
    map['moreRecords'] = _moreRecords;
    map['orderBy'] = _orderBy;
    map['sortOrder'] = _sortOrder;
    map['page'] = _page;
    return map;
  }
}

/// name : "creditnote_no"
/// label : "Report Number"
/// fieldType : "string"

Headers headersFromJson(String str) => Headers.fromJson(json.decode(str));
String headersToJson(Headers data) => json.encode(data.toJson());

class Headers {
  Headers({
    String? name,
    String? label,
    String? fieldType,
  }) {
    _name = name;
    _label = label;
    _fieldType = fieldType;
  }

  Headers.fromJson(dynamic json) {
    _name = json['name'];
    _label = json['label'];
    _fieldType = json['fieldType'];
  }
  String? _name;
  String? _label;
  String? _fieldType;
  Headers copyWith({
    String? name,
    String? label,
    String? fieldType,
  }) =>
      Headers(
        name: name ?? _name,
        label: label ?? _label,
        fieldType: fieldType ?? _fieldType,
      );
  String? get name => _name;
  String? get label => _label;
  String? get fieldType => _fieldType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['label'] = _label;
    map['fieldType'] = _fieldType;
    return map;
  }
}

/// id : "46x88607"
/// creditnote_no : "BEML-SER-REP159"
/// account_id : ""
/// sr_ticket_type : "BREAKDOWN"
/// assigned_user_id : "70"
/// servicereportsid : "88607"

Records recordsFromJson(String str) => Records.fromJson(json.decode(str));
String recordsToJson(Records data) => json.encode(data.toJson());

class Records {
  Records({
    String? id,
    String? creditnoteNo,
    String? accountId,
    String? srTicketType,
    String? assignedUserId,
    String? servicereportsid,
  }) {
    _id = id;
    _creditnoteNo = creditnoteNo;
    _accountId = accountId;
    _srTicketType = srTicketType;
    _assignedUserId = assignedUserId;
    _servicereportsid = servicereportsid;
  }

  Records.fromJson(dynamic json) {
    _id = json['id'];
    _creditnoteNo = json['creditnote_no'];
    _accountId = json['account_id'];
    _srTicketType = json['sr_ticket_type'];
    _assignedUserId = json['assigned_user_id'];
    _servicereportsid = json['servicereportsid'];
  }
  String? _id;
  String? _creditnoteNo;
  String? _accountId;
  String? _srTicketType;
  String? _assignedUserId;
  String? _servicereportsid;
  Records copyWith({
    String? id,
    String? creditnoteNo,
    String? accountId,
    String? srTicketType,
    String? assignedUserId,
    String? servicereportsid,
  }) =>
      Records(
        id: id ?? _id,
        creditnoteNo: creditnoteNo ?? _creditnoteNo,
        accountId: accountId ?? _accountId,
        srTicketType: srTicketType ?? _srTicketType,
        assignedUserId: assignedUserId ?? _assignedUserId,
        servicereportsid: servicereportsid ?? _servicereportsid,
      );
  String? get id => _id;
  String? get creditnoteNo => _creditnoteNo;
  String? get accountId => _accountId;
  String? get srTicketType => _srTicketType;
  String? get assignedUserId => _assignedUserId;
  String? get servicereportsid => _servicereportsid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['creditnote_no'] = _creditnoteNo;
    map['account_id'] = _accountId;
    map['sr_ticket_type'] = _srTicketType;
    map['assigned_user_id'] = _assignedUserId;
    map['servicereportsid'] = _servicereportsid;
    return map;
  }
}
