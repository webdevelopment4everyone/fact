import 'dart:convert';

/// statuscode : 1
/// data : {"cust_role":[{"custrole":"Service Manager"},{"custrole":"Service Engineer"}],"service_centre":[{"servicecentre":"Ahmedabad"}],"district_office":[{"districtoffice":"Chennai"}],"regional_office":[{"regionaloffice":"Surat"}],"production_division":[{"productiondivision":"Ahmedabad"}],"activity_centre":[{"activitycentre":"NVS"}]}
/// statusMessage : "Successfully Fetched Data"

FinalofficeDependency finalofficeDependencyFromJson(String str) =>
    FinalofficeDependency.fromJson(json.decode(str));
String finalofficeDependencyToJson(FinalofficeDependency data) =>
    json.encode(data.toJson());

class FinalofficeDependency {
  FinalofficeDependency({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  FinalofficeDependency.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  FinalofficeDependency copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      FinalofficeDependency(
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

/// cust_role : [{"custrole":"Service Manager"},{"custrole":"Service Engineer"}]
/// service_centre : [{"servicecentre":"Ahmedabad"}]
/// district_office : [{"districtoffice":"Chennai"}]
/// regional_office : [{"regionaloffice":"Surat"}]
/// production_division : [{"productiondivision":"Ahmedabad"}]
/// activity_centre : [{"activitycentre":"NVS"}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<CustRole>? custRole,
    List<ServiceCentre>? serviceCentre,
    List<DistrictOffice>? districtOffice,
    List<RegionalOffice>? regionalOffice,
    List<ProductionDivision>? productionDivision,
    List<ActivityCentre>? activityCentre,
  }) {
    _custRole = custRole;
    _serviceCentre = serviceCentre;
    _districtOffice = districtOffice;
    _regionalOffice = regionalOffice;
    _productionDivision = productionDivision;
    _activityCentre = activityCentre;
  }

  Data.fromJson(dynamic json) {
    if (json['cust_role'] != null) {
      _custRole = [];
      json['cust_role'].forEach((v) {
        _custRole?.add(CustRole.fromJson(v));
      });
    }
    if (json['service_centre'] != null) {
      _serviceCentre = [];
      json['service_centre'].forEach((v) {
        _serviceCentre?.add(ServiceCentre.fromJson(v));
      });
    }
    if (json['district_office'] != null) {
      _districtOffice = [];
      json['district_office'].forEach((v) {
        _districtOffice?.add(DistrictOffice.fromJson(v));
      });
    }
    if (json['regional_office'] != null) {
      _regionalOffice = [];
      json['regional_office'].forEach((v) {
        _regionalOffice?.add(RegionalOffice.fromJson(v));
      });
    }
    if (json['production_division'] != null) {
      _productionDivision = [];
      json['production_division'].forEach((v) {
        _productionDivision?.add(ProductionDivision.fromJson(v));
      });
    }
    if (json['activity_centre'] != null) {
      _activityCentre = [];
      json['activity_centre'].forEach((v) {
        _activityCentre?.add(ActivityCentre.fromJson(v));
      });
    }
  }
  List<CustRole>? _custRole;
  List<ServiceCentre>? _serviceCentre;
  List<DistrictOffice>? _districtOffice;
  List<RegionalOffice>? _regionalOffice;
  List<ProductionDivision>? _productionDivision;
  List<ActivityCentre>? _activityCentre;
  Data copyWith({
    List<CustRole>? custRole,
    List<ServiceCentre>? serviceCentre,
    List<DistrictOffice>? districtOffice,
    List<RegionalOffice>? regionalOffice,
    List<ProductionDivision>? productionDivision,
    List<ActivityCentre>? activityCentre,
  }) =>
      Data(
        custRole: custRole ?? _custRole,
        serviceCentre: serviceCentre ?? _serviceCentre,
        districtOffice: districtOffice ?? _districtOffice,
        regionalOffice: regionalOffice ?? _regionalOffice,
        productionDivision: productionDivision ?? _productionDivision,
        activityCentre: activityCentre ?? _activityCentre,
      );
  List<CustRole>? get custRole => _custRole;
  List<ServiceCentre>? get serviceCentre => _serviceCentre;
  List<DistrictOffice>? get districtOffice => _districtOffice;
  List<RegionalOffice>? get regionalOffice => _regionalOffice;
  List<ProductionDivision>? get productionDivision => _productionDivision;
  List<ActivityCentre>? get activityCentre => _activityCentre;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_custRole != null) {
      map['cust_role'] = _custRole?.map((v) => v.toJson()).toList();
    }
    if (_serviceCentre != null) {
      map['service_centre'] = _serviceCentre?.map((v) => v.toJson()).toList();
    }
    if (_districtOffice != null) {
      map['district_office'] = _districtOffice?.map((v) => v.toJson()).toList();
    }
    if (_regionalOffice != null) {
      map['regional_office'] = _regionalOffice?.map((v) => v.toJson()).toList();
    }
    if (_productionDivision != null) {
      map['production_division'] =
          _productionDivision?.map((v) => v.toJson()).toList();
    }
    if (_activityCentre != null) {
      map['activity_centre'] = _activityCentre?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// activitycentre : "NVS"

ActivityCentre activityCentreFromJson(String str) =>
    ActivityCentre.fromJson(json.decode(str));
String activityCentreToJson(ActivityCentre data) => json.encode(data.toJson());

class ActivityCentre {
  ActivityCentre({
    String? activitycentre,
  }) {
    _activitycentre = activitycentre;
  }

  ActivityCentre.fromJson(dynamic json) {
    _activitycentre = json['activity_centre'];
  }
  String? _activitycentre;
  ActivityCentre copyWith({
    String? activitycentre,
  }) =>
      ActivityCentre(
        activitycentre: activitycentre ?? _activitycentre,
      );
  String? get activitycentre => _activitycentre;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['activity_centre'] = _activitycentre;
    return map;
  }
}

/// productiondivision : "Ahmedabad"

ProductionDivision productionDivisionFromJson(String str) =>
    ProductionDivision.fromJson(json.decode(str));
String productionDivisionToJson(ProductionDivision data) =>
    json.encode(data.toJson());

class ProductionDivision {
  ProductionDivision({
    String? productiondivision,
  }) {
    _productiondivision = productiondivision;
  }

  ProductionDivision.fromJson(dynamic json) {
    _productiondivision = json['production_division'];
  }
  String? _productiondivision;
  ProductionDivision copyWith({
    String? productiondivision,
  }) =>
      ProductionDivision(
        productiondivision: productiondivision ?? _productiondivision,
      );
  String? get productiondivision => _productiondivision;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['production_division'] = _productiondivision;
    return map;
  }
}

/// regionaloffice : "Surat"

RegionalOffice regionalOfficeFromJson(String str) =>
    RegionalOffice.fromJson(json.decode(str));
String regionalOfficeToJson(RegionalOffice data) => json.encode(data.toJson());

class RegionalOffice {
  RegionalOffice({
    String? regionaloffice,
  }) {
    _regionaloffice = regionaloffice;
  }

  RegionalOffice.fromJson(dynamic json) {
    _regionaloffice = json['regional_office'];
  }
  String? _regionaloffice;
  RegionalOffice copyWith({
    String? regionaloffice,
  }) =>
      RegionalOffice(
        regionaloffice: regionaloffice ?? _regionaloffice,
      );
  String? get regionaloffice => _regionaloffice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['regional_office'] = _regionaloffice;
    return map;
  }
}

/// districtoffice : "Chennai"

DistrictOffice districtOfficeFromJson(String str) =>
    DistrictOffice.fromJson(json.decode(str));
String districtOfficeToJson(DistrictOffice data) => json.encode(data.toJson());

class DistrictOffice {
  DistrictOffice({
    String? districtoffice,
  }) {
    _districtoffice = districtoffice;
  }

  DistrictOffice.fromJson(dynamic json) {
    _districtoffice = json['district_office'];
  }
  String? _districtoffice;
  DistrictOffice copyWith({
    String? districtoffice,
  }) =>
      DistrictOffice(
        districtoffice: districtoffice ?? _districtoffice,
      );
  String? get districtoffice => _districtoffice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['district_office'] = _districtoffice;
    return map;
  }
}

/// servicecentre : "Ahmedabad"

ServiceCentre serviceCentreFromJson(String str) =>
    ServiceCentre.fromJson(json.decode(str));
String serviceCentreToJson(ServiceCentre data) => json.encode(data.toJson());

class ServiceCentre {
  ServiceCentre({
    String? servicecentre,
  }) {
    _servicecentre = servicecentre;
  }

  ServiceCentre.fromJson(dynamic json) {
    _servicecentre = json['service_centre'];
  }
  String? _servicecentre;
  ServiceCentre copyWith({
    String? servicecentre,
  }) =>
      ServiceCentre(
        servicecentre: servicecentre ?? _servicecentre,
      );
  String? get servicecentre => _servicecentre;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['service_centre'] = _servicecentre;
    return map;
  }
}

/// custrole : "Service Manager"

CustRole custRoleFromJson(String str) => CustRole.fromJson(json.decode(str));
String custRoleToJson(CustRole data) => json.encode(data.toJson());

class CustRole {
  CustRole({
    String? custrole,
  }) {
    _custrole = custrole;
  }

  CustRole.fromJson(dynamic json) {
    _custrole = json['cust_role'];
  }
  String? _custrole;
  CustRole copyWith({
    String? custrole,
  }) =>
      CustRole(
        custrole: custrole ?? _custrole,
      );
  String? get custrole => _custrole;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cust_role'] = _custrole;
    return map;
  }
}
