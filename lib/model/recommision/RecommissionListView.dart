import 'dart:convert';

/// statuscode : 1
/// data : {"records":[{"id":"61x608658","creditnote_name":"","recommissioningreportsid":"608658","starred":""},{"id":"61x608616","creditnote_name":"","recommissioningreportsid":"608616","starred":""}],"headers":[{"name":"creditnote_name","label":"Contact Person","fieldType":"string"}],"selectedFilter":"101","records_per_page":"100","nameFields":["creditnote_name"],"moreRecords":false,"orderBy":false,"sortOrder":false,"page":"1"}
/// statusMessage : "Successfully Fetched Data"

RecommissionListView recommissionListViewFromJson(String str) =>
    RecommissionListView.fromJson(json.decode(str));
String recommissionListViewToJson(RecommissionListView data) =>
    json.encode(data.toJson());

class RecommissionListView {
  RecommissionListView({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  RecommissionListView.fromJson(dynamic json) {
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

/// records : [{"id":"61x608658","creditnote_name":"","recommissioningreportsid":"608658","starred":""},{"id":"61x608616","creditnote_name":"","recommissioningreportsid":"608616","starred":""}]
/// headers : [{"name":"creditnote_name","label":"Contact Person","fieldType":"string"}]
/// selectedFilter : "101"
/// records_per_page : "100"
/// nameFields : ["creditnote_name"]
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
    String? recordsPerPage,
    List<String>? nameFields,
    bool? moreRecords,
    bool? orderBy,
    bool? sortOrder,
    String? page,
  }) {
    _records = records;
    _headers = headers;
    _selectedFilter = selectedFilter;
    _recordsPerPage = recordsPerPage;
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
    _recordsPerPage = json['records_per_page'];
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
  String? _recordsPerPage;
  List<String>? _nameFields;
  bool? _moreRecords;
  bool? _orderBy;
  bool? _sortOrder;
  String? _page;

  List<Records>? get records => _records;
  List<Headers>? get headers => _headers;
  String? get selectedFilter => _selectedFilter;
  String? get recordsPerPage => _recordsPerPage;
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
    map['records_per_page'] = _recordsPerPage;
    map['nameFields'] = _nameFields;
    map['moreRecords'] = _moreRecords;
    map['orderBy'] = _orderBy;
    map['sortOrder'] = _sortOrder;
    map['page'] = _page;
    return map;
  }
}

/// name : "creditnote_name"
/// label : "Contact Person"
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

/// id : "61x608658"
/// creditnote_name : ""
/// recommissioningreportsid : "608658"
/// starred : ""

Records recordsFromJson(String str) => Records.fromJson(json.decode(str));
String recordsToJson(Records data) => json.encode(data.toJson());

class Records {
  Records({
    String? id,
    String? creditnoteName,
    String? recommissioningreportsid,
    String? starred,
  }) {
    _id = id;
    _creditnoteName = creditnoteName;
    _recommissioningreportsid = recommissioningreportsid;
    _starred = starred;
  }

  Records.fromJson(dynamic json) {
    _id = json['id'];
    _creditnoteName = json['creditnote_name'];
    _recommissioningreportsid = json['recommissioningreportsid'];
    _starred = json['starred'];
  }
  String? _id;
  String? _creditnoteName;
  String? _recommissioningreportsid;
  String? _starred;

  String? get id => _id;
  String? get creditnoteName => _creditnoteName;
  String? get recommissioningreportsid => _recommissioningreportsid;
  String? get starred => _starred;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['creditnote_name'] = _creditnoteName;
    map['recommissioningreportsid'] = _recommissioningreportsid;
    map['starred'] = _starred;
    return map;
  }
}
