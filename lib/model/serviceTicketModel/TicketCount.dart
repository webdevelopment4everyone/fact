import 'dart:convert';

TicketCount ticketCountFromJson(String str) =>
    TicketCount.fromJson(json.decode(str));
String ticketCountToJson(TicketCount data) => json.encode(data.toJson());

class TicketCount {
  TicketCount({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  TicketCount.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  TicketCount copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      TicketCount(
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
    List<SrCounts>? sRCounts,
  }) {
    _sRCounts = sRCounts;
  }

  Data.fromJson(dynamic json) {
    if (json['SRCounts'] != null) {
      _sRCounts = [];
      json['SRCounts'].forEach((v) {
        _sRCounts?.add(SrCounts.fromJson(v));
      });
    }
  }

  List<SrCounts>? _sRCounts;

  Data copyWith({
    List<SrCounts>? sRCounts,
  }) =>
      Data(
        sRCounts: sRCounts ?? _sRCounts,
      );

  List<SrCounts>? get sRCounts => _sRCounts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_sRCounts != null) {
      map['SRCounts'] = _sRCounts?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

SrCounts srCountsFromJson(String str) => SrCounts.fromJson(json.decode(str));
String srCountsToJson(SrCounts data) => json.encode(data.toJson());

class SrCounts {
  SrCounts({
    String? count,
    String? key,
    String? label,
  }) {
    _count = count;
    _key = key;
    _label = label;
  }

  SrCounts.fromJson(dynamic json) {
    _count = json['count'];
    _key = json['key'];
    _label = json['label'];
  }

  String? _count;
  String? _key;
  String? _label;
  SrCounts copyWith({
    String? count,
    String? key,
    String? label,
  }) =>
      SrCounts(
        count: count ?? _count,
        key: key ?? _key,
        label: label ?? _label,
      );
  String? get count => _count;
  String? get key => _key;
  String? get label => _label;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = _count;
    map['key'] = _key;
    map['label'] = _label;
    return map;
  }
}
