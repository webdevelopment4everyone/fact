import 'dart:convert';

/// statuscode : 1
/// data : {"record":{"productname":"008705713485","product_no":"PRO156419","discontinued":"1","productcategory":"","manufacturer":"","vendor_id":{"value":"","label":""},"website":"","createdtime":"2022-09-29 07:24:22","modifiedtime":"2022-10-13 21:19:02","modifiedbyLabel":"Master Admin","modifiedby":"19x1","source":"CRM","starred":"","tags":"","plant_nameLabel":"Neyveli-Depot","plant_name":"51x143925","maintain_plant":"1101","qtyinstock":"0.000","reorderlevel":"0","assigned_user_idLabel":"Neyveli-Depot","assigned_user_id":"20x115","imagename":[],"description":"MOTHER BOARD"}}
/// statusMessage : "Successfully Fetched Data"

ProductDetailView productDetailViewFromJson(String str) =>
    ProductDetailView.fromJson(json.decode(str));
String productDetailViewToJson(ProductDetailView data) =>
    json.encode(data.toJson());

class ProductDetailView {
  ProductDetailView({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  ProductDetailView.fromJson(dynamic json) {
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

/// record : {"productname":"008705713485","product_no":"PRO156419","discontinued":"1","productcategory":"","manufacturer":"","vendor_id":{"value":"","label":""},"website":"","createdtime":"2022-09-29 07:24:22","modifiedtime":"2022-10-13 21:19:02","modifiedbyLabel":"Master Admin","modifiedby":"19x1","source":"CRM","starred":"","tags":"","plant_nameLabel":"Neyveli-Depot","plant_name":"51x143925","maintain_plant":"1101","qtyinstock":"0.000","reorderlevel":"0","assigned_user_idLabel":"Neyveli-Depot","assigned_user_id":"20x115","imagename":[],"description":"MOTHER BOARD"}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    Record? record,
  }) {
    _record = record;
  }

  Data.fromJson(dynamic json) {
    _record = json['record'] != null ? Record.fromJson(json['record']) : null;
  }
  Record? _record;

  Record? get record => _record;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_record != null) {
      map['record'] = _record?.toJson();
    }
    return map;
  }
}

/// productname : "008705713485"
/// product_no : "PRO156419"
/// discontinued : "1"
/// productcategory : ""
/// manufacturer : ""
/// vendor_id : {"value":"","label":""}
/// website : ""
/// createdtime : "2022-09-29 07:24:22"
/// modifiedtime : "2022-10-13 21:19:02"
/// modifiedbyLabel : "Master Admin"
/// modifiedby : "19x1"
/// source : "CRM"
/// starred : ""
/// tags : ""
/// plant_nameLabel : "Neyveli-Depot"
/// plant_name : "51x143925"
/// maintain_plant : "1101"
/// qtyinstock : "0.000"
/// reorderlevel : "0"
/// assigned_user_idLabel : "Neyveli-Depot"
/// assigned_user_id : "20x115"
/// imagename : []
/// description : "MOTHER BOARD"

Record recordFromJson(String str) => Record.fromJson(json.decode(str));
String recordToJson(Record data) => json.encode(data.toJson());

class Record {
  Record({
    String? productname,
    String? productNo,
    String? discontinued,
    String? productcategory,
    String? manufacturer,
    VendorId? vendorId,
    String? website,
    String? createdtime,
    String? modifiedtime,
    String? modifiedbyLabel,
    String? modifiedby,
    String? source,
    String? starred,
    String? tags,
    String? plantNameLabel,
    String? plantName,
    String? maintainPlant,
    String? qtyinstock,
    String? reorderlevel,
    String? assignedUserIdLabel,
    String? assignedUserId,
    String? description,
  }) {
    _productname = productname;
    _productNo = productNo;
    _discontinued = discontinued;
    _productcategory = productcategory;
    _manufacturer = manufacturer;
    _vendorId = vendorId;
    _website = website;
    _createdtime = createdtime;
    _modifiedtime = modifiedtime;
    _modifiedbyLabel = modifiedbyLabel;
    _modifiedby = modifiedby;
    _source = source;
    _starred = starred;
    _tags = tags;
    _plantNameLabel = plantNameLabel;
    _plantName = plantName;
    _maintainPlant = maintainPlant;
    _qtyinstock = qtyinstock;
    _reorderlevel = reorderlevel;
    _assignedUserIdLabel = assignedUserIdLabel;
    _assignedUserId = assignedUserId;

    _description = description;
  }

  Record.fromJson(dynamic json) {
    _productname = json['productname'];
    _productNo = json['product_no'];
    _discontinued = json['discontinued'];
    _productcategory = json['productcategory'];
    _manufacturer = json['manufacturer'];
    _vendorId =
        json['vendor_id'] != null ? VendorId.fromJson(json['vendor_id']) : null;
    _website = json['website'];
    _createdtime = json['createdtime'];
    _modifiedtime = json['modifiedtime'];
    _modifiedbyLabel = json['modifiedbyLabel'];
    _modifiedby = json['modifiedby'];
    _source = json['source'];
    _starred = json['starred'];
    _tags = json['tags'];
    _plantNameLabel = json['plant_nameLabel'];
    _plantName = json['plant_name'];
    _maintainPlant = json['maintain_plant'];
    _qtyinstock = json['qtyinstock'];
    _reorderlevel = json['reorderlevel'];
    _assignedUserIdLabel = json['assigned_user_idLabel'];
    _assignedUserId = json['assigned_user_id'];

    _description = json['description'];
  }
  String? _productname;
  String? _productNo;
  String? _discontinued;
  String? _productcategory;
  String? _manufacturer;
  VendorId? _vendorId;
  String? _website;
  String? _createdtime;
  String? _modifiedtime;
  String? _modifiedbyLabel;
  String? _modifiedby;
  String? _source;
  String? _starred;
  String? _tags;
  String? _plantNameLabel;
  String? _plantName;
  String? _maintainPlant;
  String? _qtyinstock;
  String? _reorderlevel;
  String? _assignedUserIdLabel;
  String? _assignedUserId;

  String? _description;

  String? get productname => _productname;
  String? get productNo => _productNo;
  String? get discontinued => _discontinued;
  String? get productcategory => _productcategory;
  String? get manufacturer => _manufacturer;
  VendorId? get vendorId => _vendorId;
  String? get website => _website;
  String? get createdtime => _createdtime;
  String? get modifiedtime => _modifiedtime;
  String? get modifiedbyLabel => _modifiedbyLabel;
  String? get modifiedby => _modifiedby;
  String? get source => _source;
  String? get starred => _starred;
  String? get tags => _tags;
  String? get plantNameLabel => _plantNameLabel;
  String? get plantName => _plantName;
  String? get maintainPlant => _maintainPlant;
  String? get qtyinstock => _qtyinstock;
  String? get reorderlevel => _reorderlevel;
  String? get assignedUserIdLabel => _assignedUserIdLabel;
  String? get assignedUserId => _assignedUserId;

  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productname'] = _productname;
    map['product_no'] = _productNo;
    map['discontinued'] = _discontinued;
    map['productcategory'] = _productcategory;
    map['manufacturer'] = _manufacturer;
    if (_vendorId != null) {
      map['vendor_id'] = _vendorId?.toJson();
    }
    map['website'] = _website;
    map['createdtime'] = _createdtime;
    map['modifiedtime'] = _modifiedtime;
    map['modifiedbyLabel'] = _modifiedbyLabel;
    map['modifiedby'] = _modifiedby;
    map['source'] = _source;
    map['starred'] = _starred;
    map['tags'] = _tags;
    map['plant_nameLabel'] = _plantNameLabel;
    map['plant_name'] = _plantName;
    map['maintain_plant'] = _maintainPlant;
    map['qtyinstock'] = _qtyinstock;
    map['reorderlevel'] = _reorderlevel;
    map['assigned_user_idLabel'] = _assignedUserIdLabel;
    map['assigned_user_id'] = _assignedUserId;

    map['description'] = _description;
    return map;
  }
}

/// value : ""
/// label : ""

VendorId vendorIdFromJson(String str) => VendorId.fromJson(json.decode(str));
String vendorIdToJson(VendorId data) => json.encode(data.toJson());

class VendorId {
  VendorId({
    String? value,
    String? label,
  }) {
    _value = value;
    _label = label;
  }

  VendorId.fromJson(dynamic json) {
    _value = json['value'];
    _label = json['label'];
  }
  String? _value;
  String? _label;

  String? get value => _value;
  String? get label => _label;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['value'] = _value;
    map['label'] = _label;
    return map;
  }
}
