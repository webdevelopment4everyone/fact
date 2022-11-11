class PreSignUpModel {
  PreSignUpModel({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) {
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
  }

  PreSignUpModel.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
  PreSignUpModel copyWith({
    int? statuscode,
    Data? data,
    String? statusMessage,
  }) =>
      PreSignUpModel(
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

class Data {
  Data({
    String? badge_no,
    String? email,
    String? business_vertical,
    String? phone,
    String? user_password,
    String? confirm_password,
    String? designaion,
    String? cust_role,
    String? office,
    String? date_of_birth,
    String? date_of_joining,
    String? service_engineer_name,
  }) {
    _badge_no = badge_no;
    _email = email;
    _business_vertical = business_vertical;
    _phone = phone;
    _user_password = user_password;
    _confirm_password = confirm_password;
    _designaion = designaion;
    _cust_role = cust_role;
    _office = office;
    _date_of_birth = date_of_birth;
    _date_of_joining = date_of_joining;
    _service_engineer_name = service_engineer_name;
  }

  Data.fromJson(dynamic json) {
    _badge_no = json['badge_no'];
    _email = json['email'];
    _business_vertical = json['business_vertical'];
    _phone = json['phone'];
    _user_password = json['user_password'];
    _confirm_password = json['confirm_password'];
    _designaion = json['designaion'];
    _cust_role = json['cust_role'];
    _office = json['office'];
    _date_of_birth = json['date_of_birth'];
    _date_of_joining = json['date_of_joining'];
    _service_engineer_name = json['service_engineer_name'];
  }
  String? _badge_no;
  String? _email;
  String? _business_vertical;
  String? _phone;
  String? _user_password;
  String? _confirm_password;
  String? _designaion;
  String? _cust_role;
  String? _office;
  String? _date_of_birth;
  String? _date_of_joining;
  String? _service_engineer_name;
  Data copyWith({
    String? badge_no,
    String? email,
    String? business_vertical,
    String? phone,
    String? user_password,
    String? confirm_password,
    String? designaion,
    String? cust_role,
    String? office,
    String? date_of_birth,
    String? date_of_joining,
    String? service_engineer_name,
  }) =>
      Data(
        badge_no: badge_no ?? _badge_no,
        email: email ?? _email,
        business_vertical: business_vertical ?? _business_vertical,
        phone: phone ?? _phone,
        user_password: user_password ?? _user_password,
        confirm_password: confirm_password ?? _confirm_password,
        designaion: designaion ?? _designaion,
        cust_role: cust_role ?? _cust_role,
        office: office ?? _office,
        date_of_birth: date_of_birth ?? _date_of_birth,
        date_of_joining: date_of_joining ?? _date_of_joining,
        service_engineer_name: service_engineer_name ?? _service_engineer_name,
      );
  String? get badge_no => _badge_no;
  String? get email => _email;
  String? get business_vertical => _business_vertical;
  String? get phone => _phone;
  String? get user_password => _user_password;
  String? get confirm_password => _confirm_password;
  String? get designaion => _designaion;
  String? get cust_role => _cust_role;
  String? get office => _office;
  String? get date_of_birth => _date_of_birth;
  String? get date_of_joining => _date_of_joining;
  String? get service_engineer_name => _service_engineer_name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['badge_no'] = _badge_no;
    map['email'] = _email;
    map['business_vertical'] = _business_vertical;
    map['phone'] = _phone;
    map['user_password'] = _user_password;
    map['confirm_password'] = _confirm_password;
    map['designaion'] = _designaion;
    map['cust_role'] = _cust_role;
    map['office'] = _office;
    map['date_of_birth'] = _date_of_birth;
    map['date_of_joining'] = _date_of_joining;
    map['service_engineer_name'] = _service_engineer_name;
    return map;
  }
}

// class PreSignUpModel {
//   late final String? badge_no;
//   late final String? email;
//   late final String? business_vertical;
//   late final String? phone;
//   late final String? user_password;
//   late final String? confirm_password;
//   late final String? designaion;
//   late final String? cust_role;
//   late final String? office;
//   late final String? date_of_birth;
//   late final String? date_of_joining;
//   late final String? service_engineer_name;
//
//   PreSignUpModel(
//       this.badge_no,
//       this.email,
//       this.business_vertical,
//       this.phone,
//       this.user_password,
//       this.confirm_password,
//       this.designaion,
//       this.cust_role,
//       this.office,
//       this.date_of_birth,
//       this.date_of_joining,
//       this.service_engineer_name,
//       );
//
//   PreSignUpModel copyWith({
//     String? badge_no,
//     String? email,
//     String? business_vertical,
//     String? phone,
//     String? user_password,
//     String? confirm_password,
//     String? designaion,
//     String? cust_role,
//     String? office,
//     String? date_of_birth,
//     String? date_of_joining,
//     String? service_engineer_name,
//   }){
//     return PreSignUpModel(
//         badge_no ?? this.badge_no,
//         email ?? this.email,
//         business_vertical ?? this.business_vertical,
//         phone ?? this.phone,
//         user_password ?? this.user_password,
//         confirm_password ?? this.confirm_password,
//         designaion ?? this.designaion,
//         cust_role ?? this.cust_role,
//         office ?? this.office,
//         date_of_birth ?? this.date_of_birth,
//         date_of_joining ?? this.date_of_joining,
//         service_engineer_name ?? this.service_engineer_name,
//     );
//   }
//
//   Map<String, dynamic> toMap() {
//     return<String, dynamic>{
//       'badge_no' : badge_no,
//       'email' : email,
//       'business_vertical' : business_vertical,
//       'phone' : phone,
//       'user_password' : user_password,
//       'confirm_password' : confirm_password,
//       'designaion' : designaion,
//       'cust_role' : cust_role,
//       'office' : office,
//       'date_of_birth' : date_of_birth,
//       'date_of_joining' : date_of_joining,
//       'service_engineer_name' : service_engineer_name,
//     };
//   }
//
//   factory PreSignUpModel.fromMap(Map<String, dynamic> map){
//     return PreSignUpModel(
//         map['badge_no'] as String,
//         map['email'] as String,
//         map['business_vertical'] as String,
//         map['phone'] as String,
//         map['user_password'] as String,
//         map['confirm_password'] as String,
//         map['designaion'] as String,
//         map['cust_role'] as String,
//         map['office'] as String,
//         map['date_of_birth'] as String,
//         map['date_of_joining'] as String,
//         map['service_engineer_name'] as String
//     );
//   }
//
//   String toJson() => json.encode(toMap());
//
//   factory PreSignUpModel.fromJson(String source) => PreSignUpModel.fromMap(json.decode(source) as Map<String, dynamic>);
//
//   @override
//   String toString() => 'PreSignUp('
//       'badgeno: $badge_no, '
//       'email: $email'
//       'business_vertical: $business_vertical'
//       'phone: $phone'
//       'user_password: $user_password'
//       'confirm_password: $confirm_password'
//       'designaion: $designaion'
//       'cust_role: $cust_role'
//       'office: $office'
//       'date_of_birth: $date_of_birth'
//       'date_of_joining: $date_of_joining'
//       'service_engineer_name: $service_engineer_name'
//       ')';
//
//   @override
//   bool operator == (Object other) {
//     if (identical(this, other)) return true;
//
//     return other is PreSignUpModel &&
//         other.badge_no == badge_no &&
//         other.email == email &&
//         other.business_vertical == business_vertical &&
//         other.phone == phone &&
//         other.user_password == user_password &&
//         other.confirm_password == confirm_password &&
//         other.designaion == designaion &&
//         other.cust_role == cust_role &&
//         other.office == office &&
//         other.date_of_birth == date_of_birth &&
//         other.date_of_joining == date_of_joining &&
//         other.service_engineer_name == service_engineer_name;
//   }
//
//   @override
//   int get hashCode => badge_no.hashCode ^ email.hashCode ^ business_vertical.hashCode ^ phone.hashCode ^ user_password.hashCode ^ confirm_password.hashCode ^ designaion.hashCode ^ cust_role.hashCode ^ office.hashCode ^ date_of_birth.hashCode ^ date_of_joining.hashCode ^ service_engineer_name.hashCode;
// }