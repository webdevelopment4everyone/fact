import 'dart:convert';

EnquiryFormDetailsModel
EnquiryFormDetailsModelFromJson(String str) =>
    EnquiryFormDetailsModel.fromJson(json.decode(str));
String EnquiryFormDetailsModelToJson(
    EnquiryFormDetailsModel data) =>
    json.encode(data.toJson());

class EnquiryFormDetailsModel {
  EnquiryFormDetailsModel({
    List<LineItems>? lineItems,
  String?  subject,
String?  potential_id,
String?  validtill,
String?  carrier,
String?  assigned_user_id1,
String?  cf_2383,
String?  assigned_user_id,
String?  quotestage,
String?  contact_id,
String?  shipping,
String?  account_id,
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
String?  currency_id,
String?  bill_street,
  }){
  _subject = subject;
_potential_id = potential_id;
_validtill = validtill;
_carrier = carrier;
_assigned_user_id1 = assigned_user_id1;
_cf_2383 = cf_2383;
_assigned_user_id = assigned_user_id;
_quotestage = quotestage;
_contact_id = contact_id;
_shipping = shipping;
_account_id = account_id;
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
_currency_id = currency_id;
_bill_street = bill_street;
  }

  EnquiryFormDetailsModel.fromJson(dynamic json) {
    if (json['LineItems'] != null) {
      _lineItems = [];
      json['LineItems'].forEach((v) {
        _lineItems?.add(LineItems.fromJson(v));
      });
    }
    _subject = json['subject'];
_potential_id = json['potential_id'];
_validtill = json['validtill'];
_carrier = json['carrier'];
_assigned_user_id1 = json['assigned_user_id1'];
_cf_2383 = json['cf_2383'];
_assigned_user_id = json['assigned_user_id'];
_quotestage = json['quotestage'];
_contact_id = json['contact_id'];
_shipping = json['shipping'];
_account_id = json['account_id'];
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
_currency_id = json['currency_id'];
_bill_street = json['bill_street'];
  }
  List<LineItems>? _lineItems;
  String?  _subject;
String?  _potential_id;
String?  _validtill;
String?  _carrier;
String?  _assigned_user_id1;
String?  _cf_2383;
String?  _assigned_user_id;
String?  _quotestage;
String?  _contact_id;
String?  _shipping;
String?  _account_id;
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
String?  _currency_id;
String?  _bill_street;

  List<LineItems>? get lineItems => _lineItems;

  set lineItems(List<LineItems>? value) {
    _lineItems = value;
  }

  String?  get subject => _subject;
String?  get potential_id => _potential_id;
String?  get validtill => _validtill;
String?  get carrier => _carrier;
String?  get assigned_user_id1 => _assigned_user_id1;
String?  get cf_2383 => _cf_2383;
String?  get assigned_user_id => _assigned_user_id;
String?  get quotestage => _quotestage;
String?  get contact_id => _contact_id;
String?  get shipping => _shipping;
String?  get account_id => _account_id;
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
String?  get currency_id => _currency_id;
String?  get bill_street => _bill_street;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_lineItems != null) {
      map['LineItems'] = _lineItems?.map((v) => v.toJson()).toList();
    }
    map['subject'] = _subject;
map['potential_id'] = _potential_id;
map['validtill'] = _validtill;
map['carrier'] = _carrier;
map['assigned_user_id1'] = _assigned_user_id1;
map['cf_2383'] = _cf_2383;
map['assigned_user_id'] = _assigned_user_id;
map['quotestage'] = _quotestage;
map['contact_id'] = _contact_id;
map['shipping'] = _shipping;
map['account_id'] = _account_id;
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
map['currency_id'] = _currency_id;
map['bill_street'] = _bill_street;
    return map;
  }

  set subject(String?  value) { _subject = value; }
set potential_id(String?  value) { _potential_id = value; }
set validtill(String?  value) { _validtill = value; }
set carrier(String?  value) { _carrier = value; }
set assigned_user_id1(String?  value) { _assigned_user_id1 = value; }
set cf_2383(String?  value) { _cf_2383 = value; }
set assigned_user_id(String?  value) { _assigned_user_id = value; }
set quotestage(String?  value) { _quotestage = value; }
set contact_id(String?  value) { _contact_id = value; }
set shipping(String?  value) { _shipping = value; }
set account_id(String?  value) { _account_id = value; }
set bill_city(String?  value) { _bill_city = value; }
set bill_state(String?  value) { _bill_state = value; }
set bill_code(String?  value) { _bill_code = value; }
set bill_country(String?  value) { _bill_country = value; }
set bill_pobox(String?  value) { _bill_pobox = value; }
set ship_street(String?  value) { _ship_street = value; }
set ship_city(String?  value) { _ship_city = value; }
set ship_state(String?  value) { _ship_state = value; }
set ship_code(String?  value) { _ship_code = value; }
set ship_country(String?  value) { _ship_country = value; }
set ship_pobox(String?  value) { _ship_pobox = value; }
set terms_conditions(String?  value) { _terms_conditions = value; }
set description(String?  value) { _description = value; }
set region_id(String?  value) { _region_id = value; }
set currency_id(String?  value) { _currency_id = value; }
set bill_street(String?  value) { _bill_street = value; }
}

LineItems lineItemsFromJson(String str) => LineItems.fromJson(json.decode(str));
String lineItemsToJson(LineItems data) => json.encode(data.toJson());

class LineItems {
  LineItems({
    String?  productid,
    String?  quantity,
    String? purchase_cost,
    String?  listprice,
    String?  hdnGrandTotal,
  }) {
    _productid = productid;
    _quantity = quantity;
    _purchase_cost = purchase_cost;
    _listprice = listprice;
    _hdnGrandTotal = hdnGrandTotal;
  }

  LineItems.fromJson(dynamic json) {
    _productid = json['productid'];
    _quantity = json['quantity'];
    _purchase_cost = json['purchase_cost'];
    _listprice = json['listprice'];
    _hdnGrandTotal = json['hdnGrandTotal'];
  }
  String?  _productid;
  String?  _quantity;
  String?  _purchase_cost;
  String?  _listprice;
  String?  _hdnGrandTotal;

  String?  get productid => _productid;
  String?  get quantity => _quantity;
  String?  get purchase_cost => _purchase_cost;
  String?  get listprice => _listprice;
  String?  get hdnGrandTotal => _hdnGrandTotal;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productid'] = _productid;
    map['quantity'] = _quantity;
    map['purchase_cost'] = _purchase_cost;
    map['listprice'] = _listprice;
    map['hdnGrandTotal'] = _hdnGrandTotal;
    return map;
  }

  set productid(String?  value) { _productid = value; }
  set quantity(String?  value) { _quantity = value; }
  set purchase_cost(String?  value) { _purchase_cost = value; }
  set listprice(String?  value) { _listprice = value; }
  set hdnGrandTotal(String?  value) { _hdnGrandTotal = value; }
}
