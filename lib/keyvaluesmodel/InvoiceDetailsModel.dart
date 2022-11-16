import 'dart:convert';

InvoiceDetailsModel ticketDetailsModelFromJson(String str) =>
    InvoiceDetailsModel.fromJson(json.decode(str));
String ticketDetailsModelToJson(InvoiceDetailsModel data) =>
    json.encode(data.toJson());

class InvoiceDetailsModel {
  TicketDetailsModel({
    int? statuscode,
    String? statusMessage,
    Data? data,
  }) {
    _statuscode = statuscode;
    _statusMessage = statusMessage;
    _data = data;
  }

  InvoiceDetailsModel.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _statusMessage = json['statusMessage'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? _statuscode;
  String? _statusMessage;
  Data? _data;
  InvoiceDetailsModel copyWith({
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
    String?  subject,
String?  customerno,
String?  contact_id,
String?  duedate,
String?  exciseduty,
String?  account_id,
String?  assigned_user_id,
String?  modifiedtime,
String?  source,
String?  salesorder_id,
String?  invoice_no,
String?  invoicedate,
String?  vtiger_purchaseorder,
String?  salescommission,
String?  invoicestatus,
String?  createdtime,
String?  potential_id,
String?  cf_949,
String?  bill_street,
String?  bill_pobox,
String?  bill_city,
String?  bill_state,
String?  bill_code,
String?  bill_country,
String?  ship_street,
String?  ship_pobox,
String?  ship_city,
String?  ship_state,
String?  ship_code,
String?  ship_country,
String?  terms_conditions,
String?  description,
  }) {
  _subject = subject;
_customerno = customerno;
_contact_id = contact_id;
_duedate = duedate;
_exciseduty = exciseduty;
_account_id = account_id;
_assigned_user_id = assigned_user_id;
_modifiedtime = modifiedtime;
_source = source;
_salesorder_id = salesorder_id;
_invoice_no = invoice_no;
_invoicedate = invoicedate;
_vtiger_purchaseorder = vtiger_purchaseorder;
_salescommission = salescommission;
_invoicestatus = invoicestatus;
_createdtime = createdtime;
_potential_id = potential_id;
_cf_949 = cf_949;
_bill_street = bill_street;
_bill_pobox = bill_pobox;
_bill_city = bill_city;
_bill_state = bill_state;
_bill_code = bill_code;
_bill_country = bill_country;
_ship_street = ship_street;
_ship_pobox = ship_pobox;
_ship_city = ship_city;
_ship_state = ship_state;
_ship_code = ship_code;
_ship_country = ship_country;
_terms_conditions = terms_conditions;
_description = description;
  }

  Record.fromJson(dynamic json) {
  _subject = json['subject'];
_customerno = json['customerno'];
_contact_id = json['contact_id'];
_duedate = json['duedate'];
_exciseduty = json['exciseduty'];
_account_id = json['account_id'];
_assigned_user_id = json['assigned_user_id'];
_modifiedtime = json['modifiedtime'];
_source = json['source'];
_salesorder_id = json['salesorder_id'];
_invoice_no = json['invoice_no'];
_invoicedate = json['invoicedate'];
_vtiger_purchaseorder = json['vtiger_purchaseorder'];
_salescommission = json['salescommission'];
_invoicestatus = json['invoicestatus'];
_createdtime = json['createdtime'];
_potential_id = json['potential_id'];
_cf_949 = json['cf_949'];
_bill_street = json['bill_street'];
_bill_pobox = json['bill_pobox'];
_bill_city = json['bill_city'];
_bill_state = json['bill_state'];
_bill_code = json['bill_code'];
_bill_country = json['bill_country'];
_ship_street = json['ship_street'];
_ship_pobox = json['ship_pobox'];
_ship_city = json['ship_city'];
_ship_state = json['ship_state'];
_ship_code = json['ship_code'];
_ship_country = json['ship_country'];
_terms_conditions = json['terms_conditions'];
_description = json['description'];
  }
  String?  _subject;
String?  _customerno;
String?  _contact_id;
String?  _duedate;
String?  _exciseduty;
String?  _account_id;
String?  _assigned_user_id;
String?  _modifiedtime;
String?  _source;
String?  _salesorder_id;
String?  _invoice_no;
String?  _invoicedate;
String?  _vtiger_purchaseorder;
String?  _salescommission;
String?  _invoicestatus;
String?  _createdtime;
String?  _potential_id;
String?  _cf_949;
String?  _bill_street;
String?  _bill_pobox;
String?  _bill_city;
String?  _bill_state;
String?  _bill_code;
String?  _bill_country;
String?  _ship_street;
String?  _ship_pobox;
String?  _ship_city;
String?  _ship_state;
String?  _ship_code;
String?  _ship_country;
String?  _terms_conditions;
String?  _description;
  Record copyWith({
    String?  subject,
String?  customerno,
String?  contact_id,
String?  duedate,
String?  exciseduty,
String?  account_id,
String?  assigned_user_id,
String?  modifiedtime,
String?  source,
String?  salesorder_id,
String?  invoice_no,
String?  invoicedate,
String?  vtiger_purchaseorder,
String?  salescommission,
String?  invoicestatus,
String?  createdtime,
String?  potential_id,
String?  cf_949,
String?  bill_street,
String?  bill_pobox,
String?  bill_city,
String?  bill_state,
String?  bill_code,
String?  bill_country,
String?  ship_street,
String?  ship_pobox,
String?  ship_city,
String?  ship_state,
String?  ship_code,
String?  ship_country,
String?  terms_conditions,
String?  description,
  }) =>
      Record(
        subject: subject ?? _subject,
        customerno: customerno ?? _customerno,
        contact_id: contact_id ?? _contact_id,
        duedate: duedate ?? _duedate,
        exciseduty: exciseduty ?? _exciseduty,
        account_id: account_id ?? _account_id,
        assigned_user_id: assigned_user_id ?? _assigned_user_id,
        modifiedtime: modifiedtime ?? _modifiedtime,
        source: source ?? _source,
        salesorder_id: salesorder_id ?? _salesorder_id,
        invoice_no: invoice_no ?? _invoice_no,
        invoicedate: invoicedate ?? _invoicedate,
        vtiger_purchaseorder: vtiger_purchaseorder ?? _vtiger_purchaseorder,
        salescommission: salescommission ?? _salescommission,
        invoicestatus: invoicestatus ?? _invoicestatus,
        createdtime: createdtime ?? _createdtime,
        potential_id: potential_id ?? _potential_id,
        cf_949: cf_949 ?? _cf_949,
        bill_street: bill_street ?? _bill_street,
        bill_pobox: bill_pobox ?? _bill_pobox,
        bill_city: bill_city ?? _bill_city,
        bill_state: bill_state ?? _bill_state,
        bill_code: bill_code ?? _bill_code,
        bill_country: bill_country ?? _bill_country,
        ship_street: ship_street ?? _ship_street,
        ship_pobox: ship_pobox ?? _ship_pobox,
        ship_city: ship_city ?? _ship_city,
        ship_state: ship_state ?? _ship_state,
        ship_code: ship_code ?? _ship_code,
        ship_country: ship_country ?? _ship_country,
        terms_conditions: terms_conditions ?? _terms_conditions,
        description: description ?? _description,
      );
  String?  get subject => _subject;
String?  get customerno => _customerno;
String?  get contact_id => _contact_id;
String?  get duedate => _duedate;
String?  get exciseduty => _exciseduty;
String?  get account_id => _account_id;
String?  get assigned_user_id => _assigned_user_id;
String?  get modifiedtime => _modifiedtime;
String?  get source => _source;
String?  get salesorder_id => _salesorder_id;
String?  get invoice_no => _invoice_no;
String?  get invoicedate => _invoicedate;
String?  get vtiger_purchaseorder => _vtiger_purchaseorder;
String?  get salescommission => _salescommission;
String?  get invoicestatus => _invoicestatus;
String?  get createdtime => _createdtime;
String?  get potential_id => _potential_id;
String?  get cf_949 => _cf_949;
String?  get bill_street => _bill_street;
String?  get bill_pobox => _bill_pobox;
String?  get bill_city => _bill_city;
String?  get bill_state => _bill_state;
String?  get bill_code => _bill_code;
String?  get bill_country => _bill_country;
String?  get ship_street => _ship_street;
String?  get ship_pobox => _ship_pobox;
String?  get ship_city => _ship_city;
String?  get ship_state => _ship_state;
String?  get ship_code => _ship_code;
String?  get ship_country => _ship_country;
String?  get terms_conditions => _terms_conditions;
String?  get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['subject'] = _subject;
map['customerno'] = _customerno;
map['contact_id'] = _contact_id;
map['duedate'] = _duedate;
map['exciseduty'] = _exciseduty;
map['account_id'] = _account_id;
map['assigned_user_id'] = _assigned_user_id;
map['modifiedtime'] = _modifiedtime;
map['source'] = _source;
map['salesorder_id'] = _salesorder_id;
map['invoice_no'] = _invoice_no;
map['invoicedate'] = _invoicedate;
map['vtiger_purchaseorder'] = _vtiger_purchaseorder;
map['salescommission'] = _salescommission;
map['invoicestatus'] = _invoicestatus;
map['createdtime'] = _createdtime;
map['potential_id'] = _potential_id;
map['cf_949'] = _cf_949;
map['bill_street'] = _bill_street;
map['bill_pobox'] = _bill_pobox;
map['bill_city'] = _bill_city;
map['bill_state'] = _bill_state;
map['bill_code'] = _bill_code;
map['bill_country'] = _bill_country;
map['ship_street'] = _ship_street;
map['ship_pobox'] = _ship_pobox;
map['ship_city'] = _ship_city;
map['ship_state'] = _ship_state;
map['ship_code'] = _ship_code;
map['ship_country'] = _ship_country;
map['terms_conditions'] = _terms_conditions;
map['description'] = _description;
    return map;
  }
}
