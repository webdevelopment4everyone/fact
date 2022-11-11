class ServiceRequestReportListModel {
  int? statuscode;
  Data? data;
  String? statusMessage;

  ServiceRequestReportListModel(
      {this.statuscode, this.data, this.statusMessage});

  ServiceRequestReportListModel.fromJson(Map<String, dynamic> json) {
    statuscode = json['statuscode'];
    data = json['data'] != null ? Data.fromJson(json['data']) : Data();
    statusMessage = json['statusMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statuscode'] = this.statuscode;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['statusMessage'] = this.statusMessage;
    return data;
  }
}

class Data {
  TicketStatusCounts? ticketStatusCounts;
  List<Records>? records;
  String? recordsPerPage;
  bool? moreRecords;
  String? page;

  Data(
      {this.ticketStatusCounts,
        this.records,
        this.recordsPerPage,
        this.moreRecords,
        this.page});

  Data.fromJson(Map<String, dynamic> json) {
    ticketStatusCounts = json['ticketStatusCounts'] != null
        ? TicketStatusCounts.fromJson(json['ticketStatusCounts'])
        : TicketStatusCounts();
    if (json['records'] != null) {
      records = <Records>[];
      json['records'].forEach((v) {
        records!.add(Records.fromJson(v));
      });
    }
    recordsPerPage = json['records_per_page'];
    moreRecords = json['moreRecords'];
    page = json['page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.ticketStatusCounts != null) {
      data['ticketStatusCounts'] = this.ticketStatusCounts!.toJson();
    }
    if (this.records != null) {
      data['records'] = this.records!.map((v) => v.toJson()).toList();
    }
    data['records_per_page'] = this.recordsPerPage;
    data['moreRecords'] = this.moreRecords;
    data['page'] = this.page;
    return data;
  }
}

class TicketStatusCounts {
  String? openCount;
  String? engineerAssignedCount;
  String? inProgressCount;
  String? closedCount;

  TicketStatusCounts(
      {this.openCount,
        this.engineerAssignedCount,
        this.inProgressCount,
        this.closedCount});

  TicketStatusCounts.fromJson(Map<String, dynamic> json) {
    openCount = json['OpenCount'];
    engineerAssignedCount = json['EngineerAssignedCount'];
    inProgressCount = json['InProgressCount'];
    closedCount = json['ClosedCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['OpenCount'] = this.openCount;
    data['EngineerAssignedCount'] = this.engineerAssignedCount;
    data['InProgressCount'] = this.inProgressCount;
    data['ClosedCount'] = this.closedCount;
    return data;
  }
}

class Records {
  String? ticketType;
  String? equipmentId;
  String? hmr;
  String? kilometerReading;
  String? smownerid;
  String? systemAffected;
  String? parentId;
  String? ticketNo;
  String? ticketstatus;
  String? ticketDate;
  String? ticketid;

  Records(
      {this.ticketType,
        this.equipmentId,
        this.hmr,
        this.kilometerReading,
        this.smownerid,
        this.systemAffected,
        this.parentId,
        this.ticketNo,
        this.ticketstatus,
        this.ticketDate,
        this.ticketid});

  Records.fromJson(Map<String, dynamic> json) {
    ticketType = json['ticket_type'];
    equipmentId = json['equipment_id'];
    hmr = json['hmr'];
    kilometerReading = json['kilometer_reading'];
    smownerid = json['smownerid'];
    systemAffected = json['system_affected'];
    parentId = json['parent_id'];
    ticketNo = json['ticket_no'];
    ticketstatus = json['ticketstatus'];
    ticketDate = json['ticket_date'];
    ticketid = json['ticketid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ticket_type'] = this.ticketType;
    data['equipment_id'] = this.equipmentId;
    data['hmr'] = this.hmr;
    data['kilometer_reading'] = this.kilometerReading;
    data['smownerid'] = this.smownerid;
    data['system_affected'] = this.systemAffected;
    data['parent_id'] = this.parentId;
    data['ticket_no'] = this.ticketNo;
    data['ticketstatus'] = this.ticketstatus;
    data['ticket_date'] = this.ticketDate;
    data['ticketid'] = this.ticketid;
    return data;
  }
}
