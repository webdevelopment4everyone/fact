import 'dart:convert';

EnquiryDetailsModel ticketDetailsModelFromJson(String str) =>
    EnquiryDetailsModel.fromJson(json.decode(str));
String ticketDetailsModelToJson(EnquiryDetailsModel data) =>
    json.encode(data.toJson());

class EnquiryDetailsModel {
  TicketDetailsModel({
    int? statuscode,
    String? statusMessage,
    Data? data,
  }) {
    _statuscode = statuscode;
    _statusMessage = statusMessage;
    _data = data;
  }

  EnquiryDetailsModel.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _statusMessage = json['statusMessage'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? _statuscode;
  String? _statusMessage;
  Data? _data;
  EnquiryDetailsModel copyWith({
    int? statuscode,
    String? statusMessage,
    Data? data,
  }) =>
      TicketDetailsModel(
        statuscode: statuscode ?? _statuscode,
        statusMessage: statusMessage ?? _statusMessage,
        data: data ?? _data,
      );
  int? get statuscode => _statuscode;
  String? get statusMessage => _statusMessage;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statuscode'] = _statuscode;
    map['statusMessage'] = _statusMessage;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

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
  Data copyWith({
    Record? record,
  }) =>
      Data(
        record: record ?? _record,
      );
  Record? get record => _record;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_record != null) {
      map['record'] = _record?.toJson();
    }
    return map;
  }
}

Record recordFromJson(String str) => Record.fromJson(json.decode(str));
String recordToJson(Record data) => json.encode(data.toJson());

class Record {
  Record({
    String?  quote_no,
String?  assigned_user_idLabel,
String?  createdtime,
String?  potential_id,
String?  validtill,
String?  carrier,
String?  assigned_user_id1,
String?  cf_2383,
String?  subject,
String?  source,
String?  modifiedtime,
String?  quotestage,
String?  contact_id,
String?  shipping,
String?  account_id,
String?  bill_street,
String?  bill_city,
String?  bill_state,
String?  bill_code,
String?  bill_country,
String?  bill_pobox,
String?  ship_street,
String?  ship_city,
String?  ship_state,
String?  ship_code,
String?  ship_country,
String?  ship_pobox,
String?  terms_conditions,
String?  description,
String?  region_id,
  }) {
   _quote_no = quote_no;
_assigned_user_idLabel = assigned_user_idLabel;
_createdtime = createdtime;
_potential_id = potential_id;
_validtill = validtill;
_carrier = carrier;
_assigned_user_id1 = assigned_user_id1;
_cf_2383 = cf_2383;
_subject = subject;
_source = source;
_modifiedtime = modifiedtime;
_quotestage = quotestage;
_contact_id = contact_id;
_shipping = shipping;
_account_id = account_id;
_bill_street = bill_street;
_bill_city = bill_city;
_bill_state = bill_state;
_bill_code = bill_code;
_bill_country = bill_country;
_bill_pobox = bill_pobox;
_ship_street = ship_street;
_ship_city = ship_city;
_ship_state = ship_state;
_ship_code = ship_code;
_ship_country = ship_country;
_ship_pobox = ship_pobox;
_terms_conditions = terms_conditions;
_description = description;
_region_id = region_id;
  }

  Record.fromJson(dynamic json) {
    _quote_no = json['quote_no'];
_assigned_user_idLabel = json['assigned_user_idLabel'];
_createdtime = json['createdtime'];
_potential_id = json['potential_id'];
_validtill = json['validtill'];
_carrier = json['carrier'];
_assigned_user_id1 = json['assigned_user_id1'];
_cf_2383 = json['cf_2383'];
_subject = json['subject'];
_source = json['source'];
_modifiedtime = json['modifiedtime'];
_quotestage = json['quotestage'];
_contact_id = json['contact_id'];
_shipping = json['shipping'];
_account_id = json['account_id'];
_bill_street = json['bill_street'];
_bill_city = json['bill_city'];
_bill_state = json['bill_state'];
_bill_code = json['bill_code'];
_bill_country = json['bill_country'];
_bill_pobox = json['bill_pobox'];
_ship_street = json['ship_street'];
_ship_city = json['ship_city'];
_ship_state = json['ship_state'];
_ship_code = json['ship_code'];
_ship_country = json['ship_country'];
_ship_pobox = json['ship_pobox'];
_terms_conditions = json['terms_conditions'];
_description = json['description'];
_region_id = json['region_id'];
  }
  String?  _quote_no;
String?  _assigned_user_idLabel;
String?  _createdtime;
String?  _potential_id;
String?  _validtill;
String?  _carrier;
String?  _assigned_user_id1;
String?  _cf_2383;
String?  _subject;
String?  _source;
String?  _modifiedtime;
String?  _quotestage;
String?  _contact_id;
String?  _shipping;
String?  _account_id;
String?  _bill_street;
String?  _bill_city;
String?  _bill_state;
String?  _bill_code;
String?  _bill_country;
String?  _bill_pobox;
String?  _ship_street;
String?  _ship_city;
String?  _ship_state;
String?  _ship_code;
String?  _ship_country;
String?  _ship_pobox;
String?  _terms_conditions;
String?  _description;
String?  _region_id;
  Record copyWith({
    String?  quote_no,
String?  assigned_user_idLabel,
String?  createdtime,
String?  potential_id,
String?  validtill,
String?  carrier,
String?  assigned_user_id1,
String?  cf_2383,
String?  subject,
String?  source,
String?  modifiedtime,
String?  quotestage,
String?  contact_id,
String?  shipping,
String?  account_id,
String?  bill_street,
String?  bill_city,
String?  bill_state,
String?  bill_code,
String?  bill_country,
String?  bill_pobox,
String?  ship_street,
String?  ship_city,
String?  ship_state,
String?  ship_code,
String?  ship_country,
String?  ship_pobox,
String?  terms_conditions,
String?  description,
String?  region_id,
  }) =>
      Record(
        quote_no: quote_no ?? _quote_no,
        assigned_user_idLabel: assigned_user_idLabel ?? _assigned_user_idLabel,
        createdtime: createdtime ?? _createdtime,
        potential_id: potential_id ?? _potential_id,
        validtill: validtill ?? _validtill,
        carrier: carrier ?? _carrier,
        assigned_user_id1: assigned_user_id1 ?? _assigned_user_id1,
        cf_2383: cf_2383 ?? _cf_2383,
        subject: subject ?? _subject,
        source: source ?? _source,
        modifiedtime: modifiedtime ?? _modifiedtime,
        quotestage: quotestage ?? _quotestage,
        contact_id: contact_id ?? _contact_id,
        shipping: shipping ?? _shipping,
        account_id: account_id ?? _account_id,
        bill_street: bill_street ?? _bill_street,
        bill_city: bill_city ?? _bill_city,
        bill_state: bill_state ?? _bill_state,
        bill_code: bill_code ?? _bill_code,
        bill_country: bill_country ?? _bill_country,
        bill_pobox: bill_pobox ?? _bill_pobox,
        ship_street: ship_street ?? _ship_street,
        ship_city: ship_city ?? _ship_city,
        ship_state: ship_state ?? _ship_state,
        ship_code: ship_code ?? _ship_code,
        ship_country: ship_country ?? _ship_country,
        ship_pobox: ship_pobox ?? _ship_pobox,
        terms_conditions: terms_conditions ?? _terms_conditions,
        description: description ?? _description,
        region_id: region_id ?? _region_id,
      );
  String?  get quote_no => _quote_no;
String?  get assigned_user_idLabel => _assigned_user_idLabel;
String?  get createdtime => _createdtime;
String?  get potential_id => _potential_id;
String?  get validtill => _validtill;
String?  get carrier => _carrier;
String?  get assigned_user_id1 => _assigned_user_id1;
String?  get cf_2383 => _cf_2383;
String?  get subject => _subject;
String?  get source => _source;
String?  get modifiedtime => _modifiedtime;
String?  get quotestage => _quotestage;
String?  get contact_id => _contact_id;
String?  get shipping => _shipping;
String?  get account_id => _account_id;
String?  get bill_street => _bill_street;
String?  get bill_city => _bill_city;
String?  get bill_state => _bill_state;
String?  get bill_code => _bill_code;
String?  get bill_country => _bill_country;
String?  get bill_pobox => _bill_pobox;
String?  get ship_street => _ship_street;
String?  get ship_city => _ship_city;
String?  get ship_state => _ship_state;
String?  get ship_code => _ship_code;
String?  get ship_country => _ship_country;
String?  get ship_pobox => _ship_pobox;
String?  get terms_conditions => _terms_conditions;
String?  get description => _description;
String?  get region_id => _region_id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['quote_no'] = _quote_no;
map['assigned_user_idLabel'] = _assigned_user_idLabel;
map['createdtime'] = _createdtime;
map['potential_id'] = _potential_id;
map['validtill'] = _validtill;
map['carrier'] = _carrier;
map['assigned_user_id1'] = _assigned_user_id1;
map['cf_2383'] = _cf_2383;
map['subject'] = _subject;
map['source'] = _source;
map['modifiedtime'] = _modifiedtime;
map['quotestage'] = _quotestage;
map['contact_id'] = _contact_id;
map['shipping'] = _shipping;
map['account_id'] = _account_id;
map['bill_street'] = _bill_street;
map['bill_city'] = _bill_city;
map['bill_state'] = _bill_state;
map['bill_code'] = _bill_code;
map['bill_country'] = _bill_country;
map['bill_pobox'] = _bill_pobox;
map['ship_street'] = _ship_street;
map['ship_city'] = _ship_city;
map['ship_state'] = _ship_state;
map['ship_code'] = _ship_code;
map['ship_country'] = _ship_country;
map['ship_pobox'] = _ship_pobox;
map['terms_conditions'] = _terms_conditions;
map['description'] = _description;
map['region_id'] = _region_id;
    return map;
  }
}
