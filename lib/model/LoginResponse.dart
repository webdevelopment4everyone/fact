import 'dart:convert';
/// statuscode : 1
/// data : {"assign_user_id":"104","usercreatedid":"607809","usertype":"BEMLUSER","access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyaWQiOiIxMDQifQ.UKcmzrZmGCxgFSG6GiLUvF6lu989N1ilgGOdWkiQHeU","username":"36963","password":"Yash@7050","usermobilenumber":"+918523698563","userRole":"Service Manager","useruniqeid":"104","timestamp":1668164208,"message":"Thank You Have Been Login Succesfully"}
/// statusMessage : "Successfully Logged In"

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));
String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());
class LoginResponse {
  LoginResponse({
      int? statuscode, 
      Data? data, 
      String? statusMessage,}){
    _statuscode = statuscode;
    _data = data;
    _statusMessage = statusMessage;
}

  LoginResponse.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
  }
  int? _statuscode;
  Data? _data;
  String? _statusMessage;
LoginResponse copyWith({  int? statuscode,
  Data? data,
  String? statusMessage,
}) => LoginResponse(  statuscode: statuscode ?? _statuscode,
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

/// assign_user_id : "104"
/// usercreatedid : "607809"
/// usertype : "BEMLUSER"
/// access_token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyaWQiOiIxMDQifQ.UKcmzrZmGCxgFSG6GiLUvF6lu989N1ilgGOdWkiQHeU"
/// username : "36963"
/// password : "Yash@7050"
/// usermobilenumber : "+918523698563"
/// userRole : "Service Manager"
/// useruniqeid : "104"
/// timestamp : 1668164208
/// message : "Thank You Have Been Login Succesfully"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? assignUserId, 
      String? usercreatedid, 
      String? usertype, 
      String? accessToken, 
      String? username, 
      String? password, 
      String? usermobilenumber, 
      String? userRole, 
      String? useruniqeid, 
      int? timestamp, 
      String? message,}){
    _assignUserId = assignUserId;
    _usercreatedid = usercreatedid;
    _usertype = usertype;
    _accessToken = accessToken;
    _username = username;
    _password = password;
    _usermobilenumber = usermobilenumber;
    _userRole = userRole;
    _useruniqeid = useruniqeid;
    _timestamp = timestamp;
    _message = message;
}

  Data.fromJson(dynamic json) {
    _assignUserId = json['assign_user_id'];
    _usercreatedid = json['usercreatedid'];
    _usertype = json['usertype'];
    _accessToken = json['access_token'];
    _username = json['username'];
    _password = json['password'];
    _usermobilenumber = json['usermobilenumber'];
    _userRole = json['userRole'];
    _useruniqeid = json['useruniqeid'];
    _timestamp = json['timestamp'];
    _message = json['message'];
  }
  String? _assignUserId;
  String? _usercreatedid;
  String? _usertype;
  String? _accessToken;
  String? _username;
  String? _password;
  String? _usermobilenumber;
  String? _userRole;
  String? _useruniqeid;
  int? _timestamp;
  String? _message;
Data copyWith({  String? assignUserId,
  String? usercreatedid,
  String? usertype,
  String? accessToken,
  String? username,
  String? password,
  String? usermobilenumber,
  String? userRole,
  String? useruniqeid,
  int? timestamp,
  String? message,
}) => Data(  assignUserId: assignUserId ?? _assignUserId,
  usercreatedid: usercreatedid ?? _usercreatedid,
  usertype: usertype ?? _usertype,
  accessToken: accessToken ?? _accessToken,
  username: username ?? _username,
  password: password ?? _password,
  usermobilenumber: usermobilenumber ?? _usermobilenumber,
  userRole: userRole ?? _userRole,
  useruniqeid: useruniqeid ?? _useruniqeid,
  timestamp: timestamp ?? _timestamp,
  message: message ?? _message,
);
  String? get assignUserId => _assignUserId;
  String? get usercreatedid => _usercreatedid;
  String? get usertype => _usertype;
  String? get accessToken => _accessToken;
  String? get username => _username;
  String? get password => _password;
  String? get usermobilenumber => _usermobilenumber;
  String? get userRole => _userRole;
  String? get useruniqeid => _useruniqeid;
  int? get timestamp => _timestamp;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['assign_user_id'] = _assignUserId;
    map['usercreatedid'] = _usercreatedid;
    map['usertype'] = _usertype;
    map['access_token'] = _accessToken;
    map['username'] = _username;
    map['password'] = _password;
    map['usermobilenumber'] = _usermobilenumber;
    map['userRole'] = _userRole;
    map['useruniqeid'] = _useruniqeid;
    map['timestamp'] = _timestamp;
    map['message'] = _message;
    return map;
  }

}