class SrPercentageDetailsModel {
  int? statuscode;
  Data? data;
  String? statusMessage;

  SrPercentageDetailsModel({this.statuscode, this.data, this.statusMessage});

  SrPercentageDetailsModel.fromJson(Map<String, dynamic> json) {
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
  List<SrPercentage>? srPercentage;

  Data({this.srPercentage});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['sr_percentage'] != null) {
      srPercentage = <SrPercentage>[];
      json['sr_percentage'].forEach((v) {
        srPercentage!.add(SrPercentage.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.srPercentage != null) {
      data['sr_percentage'] =
          this.srPercentage!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SrPercentage {
  String? label;
  String? key;
  String? count;
  dynamic percent;
  String? engineerAssignedCount;
  String? inProgressCount;
  String? closedCount;

  SrPercentage(
      {this.label,
        this.key,
        this.count,
        this.percent,
        this.engineerAssignedCount,
        this.inProgressCount,
        this.closedCount});

  SrPercentage.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    key = json['key'];
    count = json['count'];
    percent = json['percent'];
    engineerAssignedCount = json['EngineerAssignedCount'];
    inProgressCount = json['InProgressCount'];
    closedCount = json['ClosedCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['label'] = this.label;
    data['key'] = this.key;
    data['count'] = this.count;
    data['percent'] = this.percent;
    data['EngineerAssignedCount'] = this.engineerAssignedCount;
    data['InProgressCount'] = this.inProgressCount;
    data['ClosedCount'] = this.closedCount;
    return data;
  }
}
