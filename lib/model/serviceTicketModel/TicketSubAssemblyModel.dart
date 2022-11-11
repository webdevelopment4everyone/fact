import 'dart:convert';

/// statuscode : 1
/// data : {"ticketStatusCounts":{"OpenCount":"8","EngineerAssignedCount":"0","InProgressCount":"0","ClosedCount":"0"},"records":[{"purchase_ref":"55378","func_loc_id":"","ticket_date":"2022-10-01","ticketstatus":"Open","ticket_type":"SERVICE FOR SPARES PURCHASED","ticketid":"17x607826"}],"page":"1"}
/// statusMessage : "Successfully Fetched Data"

TicketSubAssemblyModel ticketSubAssemblyModelFromJson(String str) =>
    TicketSubAssemblyModel.fromJson(json.decode(str));
String ticketSubAssemblyModelToJson(TicketSubAssemblyModel data) =>
    json.encode(data.toJson());

class TicketSubAssemblyModel {
  TicketSubAssemblyModel({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  TicketSubAssemblyModel.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  TicketSubAssemblyModel copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      TicketSubAssemblyModel(
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

/// ticketStatusCounts : {"OpenCount":"8","EngineerAssignedCount":"0","InProgressCount":"0","ClosedCount":"0"}
/// records : [{"purchase_ref":"55378","func_loc_id":"","ticket_date":"2022-10-01","ticketstatus":"Open","ticket_type":"SERVICE FOR SPARES PURCHASED","ticketid":"17x607826"}]
/// page : "1"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    TicketStatusCounts? ticketStatusCounts,
    List<Records>? records,
    String? page,
  }) {
    _ticketStatusCounts = ticketStatusCounts;
    _records = records;
    _page = page;
  }

  Data.fromJson(dynamic json) {
    _ticketStatusCounts = json['ticketStatusCounts'] != null
        ? TicketStatusCounts.fromJson(json['ticketStatusCounts'])
        : null;
    if (json['records'] != null) {
      _records = [];
      json['records'].forEach((v) {
        _records?.add(Records.fromJson(v));
      });
    }
    _page = json['page'];
  }
  TicketStatusCounts? _ticketStatusCounts;
  List<Records>? _records;
  String? _page;
  Data copyWith({
    TicketStatusCounts? ticketStatusCounts,
    List<Records>? records,
    String? page,
  }) =>
      Data(
        ticketStatusCounts: ticketStatusCounts ?? _ticketStatusCounts,
        records: records ?? _records,
        page: page ?? _page,
      );
  TicketStatusCounts? get ticketStatusCounts => _ticketStatusCounts;
  List<Records>? get records => _records;
  String? get page => _page;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_ticketStatusCounts != null) {
      map['ticketStatusCounts'] = _ticketStatusCounts?.toJson();
    }
    if (_records != null) {
      map['records'] = _records?.map((v) => v.toJson()).toList();
    }
    map['page'] = _page;
    return map;
  }
}

/// purchase_ref : "55378"
/// func_loc_id : ""
/// ticket_date : "2022-10-01"
/// ticketstatus : "Open"
/// ticket_type : "SERVICE FOR SPARES PURCHASED"
/// ticketid : "17x607826"

Records recordsFromJson(String str) => Records.fromJson(json.decode(str));
String recordsToJson(Records data) => json.encode(data.toJson());

class Records {
  Records({
    String? purchaseRef,
    String? funcLocId,
    String? ticketDate,
    String? ticketstatus,
    String? date_of_delivery,
    String? ticketType,
    String? ticketid,
  }) {
    _purchaseRef = purchaseRef;
    _funcLocId = funcLocId;
    _ticketDate = ticketDate;
    _ticketstatus = ticketstatus;
    date_of_delivery = date_of_delivery;
    _ticketType = ticketType;
    _ticketid = ticketid;
  }

  Records.fromJson(dynamic json) {
    _purchaseRef = json['purchase_ref'];
    _funcLocId = json['func_loc_id'];
    _ticketDate = json['ticket_date'];
    date_of_delivery = json['date_of_delivery'];
    _ticketstatus = json['ticketstatus'];
    _ticketType = json['ticket_type'];
    _ticketid = json['ticketid'];
  }
  String? _purchaseRef;
  String? _funcLocId;
  String? _ticketDate;
  String? _ticketstatus;
  String? date_of_delivery;
  String? _ticketType;
  String? _ticketid;
  Records copyWith({
    String? purchaseRef,
    String? funcLocId,
    String? ticketDate,
    String? ticketstatus,
    String? date_of_delivery,
    String? ticketType,
    String? ticketid,
  }) =>
      Records(
        purchaseRef: purchaseRef ?? _purchaseRef,
        funcLocId: funcLocId ?? _funcLocId,
        ticketDate: ticketDate ?? _ticketDate,
        date_of_delivery: date_of_delivery ?? date_of_delivery,
        ticketstatus: ticketstatus ?? _ticketstatus,
        ticketType: ticketType ?? _ticketType,
        ticketid: ticketid ?? _ticketid,
      );
  String? get purchaseRef => _purchaseRef;
  String? get funcLocId => _funcLocId;
  String? get ticketDate => _ticketDate;
  String? get ticketstatus => _ticketstatus;
  String? get ticketType => _ticketType;
  String? get ticketid => _ticketid;
  String? get dateofdelivery => date_of_delivery;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['purchase_ref'] = _purchaseRef;
    map['func_loc_id'] = _funcLocId;
    map['ticket_date'] = _ticketDate;
    map['ticketstatus'] = _ticketstatus;
    map['ticket_type'] = _ticketType;
    map['date_of_delivery'] = date_of_delivery;
    map['ticketid'] = _ticketid;
    return map;
  }
}

/// OpenCount : "8"
/// EngineerAssignedCount : "0"
/// InProgressCount : "0"
/// ClosedCount : "0"

TicketStatusCounts ticketStatusCountsFromJson(String str) =>
    TicketStatusCounts.fromJson(json.decode(str));
String ticketStatusCountsToJson(TicketStatusCounts data) =>
    json.encode(data.toJson());

class TicketStatusCounts {
  TicketStatusCounts({
    String? openCount,
    String? engineerAssignedCount,
    String? inProgressCount,
    String? closedCount,
  }) {
    _openCount = openCount;
    _engineerAssignedCount = engineerAssignedCount;
    _inProgressCount = inProgressCount;
    _closedCount = closedCount;
  }

  TicketStatusCounts.fromJson(dynamic json) {
    _openCount = json['OpenCount'];
    _engineerAssignedCount = json['EngineerAssignedCount'];
    _inProgressCount = json['InProgressCount'];
    _closedCount = json['ClosedCount'];
  }
  String? _openCount;
  String? _engineerAssignedCount;
  String? _inProgressCount;
  String? _closedCount;
  TicketStatusCounts copyWith({
    String? openCount,
    String? engineerAssignedCount,
    String? inProgressCount,
    String? closedCount,
  }) =>
      TicketStatusCounts(
        openCount: openCount ?? _openCount,
        engineerAssignedCount: engineerAssignedCount ?? _engineerAssignedCount,
        inProgressCount: inProgressCount ?? _inProgressCount,
        closedCount: closedCount ?? _closedCount,
      );
  String? get openCount => _openCount;
  String? get engineerAssignedCount => _engineerAssignedCount;
  String? get inProgressCount => _inProgressCount;
  String? get closedCount => _closedCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['OpenCount'] = _openCount;
    map['EngineerAssignedCount'] = _engineerAssignedCount;
    map['InProgressCount'] = _inProgressCount;
    map['ClosedCount'] = _closedCount;
    return map;
  }
}
