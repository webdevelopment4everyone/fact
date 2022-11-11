import 'dart:convert';

SubAssembReq subAssembReqFromJson(String str) =>
    SubAssembReq.fromJson(json.decode(str));
String subAssembReqToJson(SubAssembReq data) => json.encode(data.toJson());

class SubAssembReq {
  SubAssembReq({
    List<String>? subAssembly,
    String? oppName,
    String? phone,
    String? description,
    String? imagename,
    String? assignedUserId,
    String? ticketType,
    String? telePhone,
  }) {
    _subAssembly = subAssembly;
    _oppName = oppName;
    _phone = phone;
    _description = description;
    _imagename = imagename;
    _assignedUserId = assignedUserId;
    _ticketType = ticketType;
    _telePhone = telePhone;
  }

  set subAssembly(List<String>? value) {
    _subAssembly = value;
  }

  SubAssembReq.fromJson(dynamic json) {
    _subAssembly = json['sub_assembly'];
    _oppName = json['opp_name'];
    _phone = json['phone'];
    _description = json['description'];
    _imagename = json['imagename'];
    _assignedUserId = json['assigned_user_id'];
    _ticketType = json['ticket_type'];
    _telePhone = json['tele_phone'];
  }
  List<String>? _subAssembly;
  String? _oppName;
  String? _phone;
  String? _description;
  String? _imagename;
  String? _assignedUserId;
  String? _ticketType;
  String? _telePhone;
  SubAssembReq copyWith({
    List<String>? subAssembly,
    String? oppName,
    String? phone,
    String? description,
    String? imagename,
    String? assignedUserId,
    String? ticketType,
    String? telePhone,
  }) =>
      SubAssembReq(
        subAssembly: subAssembly ?? _subAssembly,
        oppName: oppName ?? _oppName,
        phone: phone ?? _phone,
        description: description ?? _description,
        imagename: imagename ?? _imagename,
        assignedUserId: assignedUserId ?? _assignedUserId,
        ticketType: ticketType ?? _ticketType,
        telePhone: telePhone ?? _telePhone,
      );
  List<String>? get subAssembly => _subAssembly;
  String? get oppName => _oppName;
  String? get phone => _phone;
  String? get description => _description;
  String? get imagename => _imagename;
  String? get assignedUserId => _assignedUserId;
  String? get ticketType => _ticketType;
  String? get telePhone => _telePhone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sub_assembly'] = _subAssembly;
    map['opp_name'] = _oppName;
    map['phone'] = _phone;
    map['description'] = _description;
    map['imagename'] = _imagename;
    map['assigned_user_id'] = _assignedUserId;
    map['ticket_type'] = _ticketType;
    map['tele_phone'] = _telePhone;
    return map;
  }

  set oppName(String? value) {
    _oppName = value;
  }

  set phone(String? value) {
    _phone = value;
  }

  set description(String? value) {
    _description = value;
  }

  set imagename(String? value) {
    _imagename = value;
  }

  set assignedUserId(String? value) {
    _assignedUserId = value;
  }

  set ticketType(String? value) {
    _ticketType = value;
  }

  set telePhone(String? value) {
    _telePhone = value;
  }
}
