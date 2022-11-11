/// statuscode : 1
/// data : {"ticketStatusCounts":{"OpenCount":"8","EngineerAssignedCount":"0","InProgressCount":"0","ClosedCount":"0"},"records":
/// [{"equipment_id":"BWS70-","smownerid":"87","equip_status":"operational","hmr":"123 Hrs","system_affected":"Responsible Agency_._BEML - Bangalore","func_loc_id":"","ticketstatus":"Open","ticket_type":"BREAKDOWN","ticketid":"17x64639","manual_equ_ser":"123","ticket_date":"2022-09-09","parent_id":"","sub_assembly":"NEW","purpose":"REHABILITATION"}],
///
///
/// "page":"1"}
/// statusMessage : "Successfully Fetched Data"

class TicketListUpdateModel {
  TicketListUpdateModel({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  TicketListUpdateModel.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  TicketListUpdateModel copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      TicketListUpdateModel(
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
/// records : [{"equipment_id":"BWS70-","smownerid":"87","equip_status":"operational","hmr":"123 Hrs","system_affected":"Responsible Agency_._BEML - Bangalore","func_loc_id":"","ticketstatus":"Open","ticket_type":"BREAKDOWN","ticketid":"17x64639","manual_equ_ser":"123","ticket_date":"2022-09-09","parent_id":"","sub_assembly":"NEW","purpose":"REHABILITATION"}]
/// page : "1"

class Data {
  Data({
    TicketStatusCounts? ticketStatusCounts,
    List<Records>? records,
    String? page,
    String? recordsPerPage,
    bool? moreRecords,
  }) {
    _ticketStatusCounts = ticketStatusCounts;
    _records = records;
    _page = page;
    _recordsPerPage = recordsPerPage;
    _moreRecords = moreRecords;
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
    _moreRecords = json['moreRecords'];
    _recordsPerPage = json['records_per_page'];
  }
  TicketStatusCounts? _ticketStatusCounts;
  List<Records>? _records;
  String? _page;
  String? _recordsPerPage;
  bool? _moreRecords;

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
  bool? get moreRecords => _moreRecords;
  String? get recordsPerPage => _recordsPerPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_ticketStatusCounts != null) {
      map['ticketStatusCounts'] = _ticketStatusCounts?.toJson();
    }
    if (_records != null) {
      map['records'] = _records?.map((v) => v.toJson()).toList();
    }
    map['page'] = _page;
    map['records_per_page'] = _recordsPerPage;
    map['moreRecords'] = _moreRecords;
    return map;
  }
}

/// equipment_id : "BWS70-"
/// smownerid : "87"
/// equip_status : "operational"
/// hmr : "123 Hrs"
/// system_affected : "Responsible Agency_._BEML - Bangalore"
/// func_loc_id : ""
/// ticketstatus : "Open"
/// ticket_type : "BREAKDOWN"
/// ticketid : "17x64639"
/// manual_equ_ser : "123"
/// ticket_date : "2022-09-09"
/// parent_id : ""
/// sub_assembly : "NEW"
/// purpose : "REHABILITATION"

class Records {
  Records(
      {String? equipmentId,
      String? smownerid,
      String? equipStatus,
      String? hmr,
      String? systemAffected,
      String? funcLocId,
      String? ticketstatus,
      String? ticketType,
      String? ticketid,
      String? manualEquSer,
      String? ticketDate,
      String? parentId,
      String? subAssembly,
      String? det_of_sub_asmbl,
      String? purpose,
      String? purchase_ref}) {
    _equipmentId = equipmentId;
    _smownerid = smownerid;
    _equipStatus = equipStatus;
    _hmr = hmr;
    _systemAffected = systemAffected;
    _funcLocId = funcLocId;
    _ticketstatus = ticketstatus;
    _ticketType = ticketType;
    _ticketid = ticketid;
    det_of_sub_asmbl = det_of_sub_asmbl;
    _manualEquSer = manualEquSer;
    _ticketDate = ticketDate;
    _parentId = parentId;
    _subAssembly = subAssembly;
    _purpose = purpose;
    purchase_ref = purchase_ref;
  }

  Records.fromJson(dynamic json) {
    _equipmentId = json['equipment_id'];
    _smownerid = json['smownerid'];
    _equipStatus = json['equip_status'];
    _hmr = json['hmr'];
    _systemAffected = json['system_affected'];
    _funcLocId = json['func_loc_id'];
    _ticketstatus = json['ticketstatus'];
    _ticketType = json['ticket_type'];
    _ticketid = json['ticketid'];
    _manualEquSer = json['manual_equ_ser'];
    _ticketDate = json['ticket_date'];
    _parentId = json['parent_id'];
    det_of_sub_asmbl = json['det_of_sub_asmbl'];
    _subAssembly = json['sub_assembly'];
    _purpose = json['purpose'];
    purchase_ref = json['purchase_ref'];
  }
  String? _equipmentId;
  String? _smownerid;
  String? _equipStatus;
  String? _hmr;
  String? _systemAffected;
  String? _funcLocId;
  String? _ticketstatus;
  String? det_of_sub_asmbl;
  String? _ticketType;
  String? _ticketid;
  String? _manualEquSer;
  String? _ticketDate;
  String? _parentId;
  String? _subAssembly;
  String? _purpose;
  String? purchase_ref;
  Records copyWith(
          {String? equipmentId,
          String? smownerid,
          String? equipStatus,
          String? hmr,
          String? systemAffected,
          String? funcLocId,
          String? ticketstatus,
          String? ticketType,
          String? ticketid,
          String? det_of_sub_asmbl,
          String? manualEquSer,
          String? ticketDate,
          String? parentId,
          String? subAssembly,
          String? purpose,
          String? purchase_ref}) =>
      Records(
        equipmentId: equipmentId ?? _equipmentId,
        smownerid: smownerid ?? _smownerid,
        equipStatus: equipStatus ?? _equipStatus,
        hmr: hmr ?? _hmr,
        systemAffected: systemAffected ?? _systemAffected,
        funcLocId: funcLocId ?? _funcLocId,
        ticketstatus: ticketstatus ?? _ticketstatus,
        ticketType: ticketType ?? _ticketType,
        det_of_sub_asmbl: det_of_sub_asmbl ?? det_of_sub_asmbl,
        ticketid: ticketid ?? _ticketid,
        manualEquSer: manualEquSer ?? _manualEquSer,
        ticketDate: ticketDate ?? _ticketDate,
        parentId: parentId ?? _parentId,
        subAssembly: subAssembly ?? _subAssembly,
        purpose: purpose ?? _purpose,
        purchase_ref: purchase_ref ?? purchase_ref,
      );
  String? get equipmentId => _equipmentId;
  String? get smownerid => _smownerid;
  String? get equipStatus => _equipStatus;
  String? get hmr => _hmr;
  String? get systemAffected => _systemAffected;
  String? get funcLocId => _funcLocId;
  String? get ticketstatus => _ticketstatus;
  String? get ticketType => _ticketType;
  String? get ticketid => _ticketid;
  String? get manualEquSer => _manualEquSer;
  String? get ticketDate => _ticketDate;
  String? get parentId => _parentId;
  String? get subAssembly => _subAssembly;
  String? get purpose => _purpose;
  String? get warrantysub => det_of_sub_asmbl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['equipment_id'] = _equipmentId;
    map['smownerid'] = _smownerid;
    map['equip_status'] = _equipStatus;
    map['hmr'] = _hmr;
    map['system_affected'] = _systemAffected;
    map['func_loc_id'] = _funcLocId;
    map['ticketstatus'] = _ticketstatus;
    map['ticket_type'] = _ticketType;
    map['ticketid'] = _ticketid;
    map['manual_equ_ser'] = _manualEquSer;
    map['ticket_date'] = _ticketDate;
    map['parent_id'] = _parentId;
    map['sub_assembly'] = _subAssembly;
    map['purpose'] = _purpose;
    map['purchase_ref'] = purchase_ref;
    map['det_of_sub_asmbl'] = det_of_sub_asmbl;
    return map;
  }
}

/// OpenCount : "8"
/// EngineerAssignedCount : "0"
/// InProgressCount : "0"
/// ClosedCount : "0"

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
