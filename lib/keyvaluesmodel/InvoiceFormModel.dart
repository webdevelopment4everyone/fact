import 'dart:convert';

InvoiceFormPageModel
InvoiceFormPageModelFromJson(String str) =>
    InvoiceFormPageModel.fromJson(json.decode(str));
String InvoiceFormPageModelToJson(
    InvoiceFormPageModel data) =>
    json.encode(data.toJson());

class InvoiceFormPageModel {
  InvoiceFormPageModel({
    List<LineItems>? lineItems,
  String?  subject,
String?  customerno,
String?  invoicedate,
String?  vtiger_purchaseorder,
String?  salescommission,
String?  invoicestatus,
String?  potential_id,
String?  salesorder_id,
String?  contact_id,
String?  duedate,
String?  exciseduty,
String?  account_id,
String?  assigned_user_id,
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
String?  region_id,
String?  currency_id,
  }){
  _subject = subject;
_customerno = customerno;
_invoicedate = invoicedate;
_vtiger_purchaseorder = vtiger_purchaseorder;
_salescommission = salescommission;
_invoicestatus = invoicestatus;
_potential_id = potential_id;
_salesorder_id = salesorder_id;
_contact_id = contact_id;
_duedate = duedate;
_exciseduty = exciseduty;
_account_id = account_id;
_assigned_user_id = assigned_user_id;
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
_region_id = region_id;
_currency_id = currency_id;
  }

  InvoiceFormPageModel.fromJson(dynamic json) {
    if (json['LineItems'] != null) {
      _lineItems = [];
      json['LineItems'].forEach((v) {
        _lineItems?.add(LineItems.fromJson(v));
      });
    }
   _subject = json['subject'];
_customerno = json['customerno'];
_invoicedate = json['invoicedate'];
_vtiger_purchaseorder = json['vtiger_purchaseorder'];
_salescommission = json['salescommission'];
_invoicestatus = json['invoicestatus'];
_potential_id = json['potential_id'];
_salesorder_id = json['salesorder_id'];
_contact_id = json['contact_id'];
_duedate = json['duedate'];
_exciseduty = json['exciseduty'];
_account_id = json['account_id'];
_assigned_user_id = json['assigned_user_id'];
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
_region_id = json['region_id'];
_currency_id = json['currency_id'];
  }
  List<LineItems>? _lineItems;
  String?  _subject;
String?  _customerno;
String?  _invoicedate;
String?  _vtiger_purchaseorder;
String?  _salescommission;
String?  _invoicestatus;
String?  _potential_id;
String?  _salesorder_id;
String?  _contact_id;
String?  _duedate;
String?  _exciseduty;
String?  _account_id;
String?  _assigned_user_id;
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
String?  _region_id;
String?  _currency_id;

  List<LineItems>? get lineItems => _lineItems;

  set lineItems(List<LineItems>? value) {
    _lineItems = value;
  }

  String?  get subject => _subject;
String?  get customerno => _customerno;
String?  get invoicedate => _invoicedate;
String?  get vtiger_purchaseorder => _vtiger_purchaseorder;
String?  get salescommission => _salescommission;
String?  get invoicestatus => _invoicestatus;
String?  get potential_id => _potential_id;
String?  get salesorder_id => _salesorder_id;
String?  get contact_id => _contact_id;
String?  get duedate => _duedate;
String?  get exciseduty => _exciseduty;
String?  get account_id => _account_id;
String?  get assigned_user_id => _assigned_user_id;
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
String?  get region_id => _region_id;
String?  get currency_id => _currency_id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_lineItems != null) {
      map['LineItems'] = _lineItems?.map((v) => v.toJson()).toList();
    }
    map['subject'] = _subject;
map['customerno'] = _customerno;
map['invoicedate'] = _invoicedate;
map['vtiger_purchaseorder'] = _vtiger_purchaseorder;
map['salescommission'] = _salescommission;
map['invoicestatus'] = _invoicestatus;
map['potential_id'] = _potential_id;
map['salesorder_id'] = _salesorder_id;
map['contact_id'] = _contact_id;
map['duedate'] = _duedate;
map['exciseduty'] = _exciseduty;
map['account_id'] = _account_id;
map['assigned_user_id'] = _assigned_user_id;
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
map['region_id'] = _region_id;
map['currency_id'] = _currency_id;
    return map;
  }

  set subject(String?  value) { _subject = value; }
set customerno(String?  value) { _customerno = value; }
set invoicedate(String?  value) { _invoicedate = value; }
set vtiger_purchaseorder(String?  value) { _vtiger_purchaseorder = value; }
set salescommission(String?  value) { _salescommission = value; }
set invoicestatus(String?  value) { _invoicestatus = value; }
set potential_id(String?  value) { _potential_id = value; }
set salesorder_id(String?  value) { _salesorder_id = value; }
set contact_id(String?  value) { _contact_id = value; }
set duedate(String?  value) { _duedate = value; }
set exciseduty(String?  value) { _exciseduty = value; }
set account_id(String?  value) { _account_id = value; }
set assigned_user_id(String?  value) { _assigned_user_id = value; }
set cf_949(String?  value) { _cf_949 = value; }
set bill_street(String?  value) { _bill_street = value; }
set bill_pobox(String?  value) { _bill_pobox = value; }
set bill_city(String?  value) { _bill_city = value; }
set bill_state(String?  value) { _bill_state = value; }
set bill_code(String?  value) { _bill_code = value; }
set bill_country(String?  value) { _bill_country = value; }
set ship_street(String?  value) { _ship_street = value; }
set ship_pobox(String?  value) { _ship_pobox = value; }
set ship_city(String?  value) { _ship_city = value; }
set ship_state(String?  value) { _ship_state = value; }
set ship_code(String?  value) { _ship_code = value; }
set ship_country(String?  value) { _ship_country = value; }
set terms_conditions(String?  value) { _terms_conditions = value; }
set description(String?  value) { _description = value; }
set region_id(String?  value) { _region_id = value; }
set currency_id(String?  value) { _currency_id = value; }
}

LineItems lineItemsFromJson(String str) => LineItems.fromJson(json.decode(str));
String lineItemsToJson(LineItems data) => json.encode(data.toJson());

class LineItems {
  LineItems({
    String?  productid,
    String?  quantity,
    String? listprice,
    String?  hdnGrandTotal,
  }) {
    _productid = productid;
    _quantity = quantity;
    _listprice = listprice;
    _hdnGrandTotal = hdnGrandTotal;
  }

  LineItems.fromJson(dynamic json) {
    _productid = json['productid'];
    _quantity = json['quantity'];
    _listprice = json['listprice'];
    _hdnGrandTotal = json['hdnGrandTotal'];
  }
  String?  _productid;
  String?  _quantity;
  String?  _listprice;
  String?  _hdnGrandTotal;

  String?  get productid => _productid;
  String?  get quantity => _quantity;
  String?  get listprice => _listprice;
  String?  get hdnGrandTotal => _hdnGrandTotal;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productid'] = _productid;
    map['quantity'] = _quantity;
    map['listprice'] = _listprice;
    map['hdnGrandTotal'] = _hdnGrandTotal;
    return map;
  }

  set productid(String?  value) { _productid = value; }
  set quantity(String?  value) { _quantity = value; }
  set listprice(String?  value) { _listprice = value; }
  set hdnGrandTotal(String?  value) { _hdnGrandTotal = value; }
}
