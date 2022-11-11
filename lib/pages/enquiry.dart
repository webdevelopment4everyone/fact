import 'dart:convert';

// import 'package:bemlchsfinal/Utils/ConstantValue.dart';
// import 'package:bemlchsfinal/model/BaseResponseOfServiceReport.dart';
// import 'package:bemlchsfinal/model/service_report_list/EnquiryFormModel.dart';
// import 'package:bemlchsfinal/networks/DioServiceClient.dart';
// import 'package:bemlchsfinal/widgets/List_Widget/EnquiryFormListWidget.dart';
// import 'package:bemlchsfinal/widgets/bottomsheet/BsheetEnquiry.dart';
// import 'package:bemlchsfinal/widgets/models/EnquiryFormModel.dart';
import 'package:fact/dropdownmodel/EnquiryDetailsModel.dart';
import 'package:fact/keyvaluesmodel/EnquiryFormModel.dart';
import 'package:fact/model/BaseResponseOfServiceReport.dart';
import 'package:fact/networks/DioServiceClient.dart';
import 'package:fact/utils/ConstantValue.dart';
import 'package:fact/widgets/bottomsheet/BsheetEnquiry.dart';
import 'package:fact/widgets/list_widget/EnquiryFormListWidget.dart';
import 'package:fact/widgets/model/EnquiryFormModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
// import 'package:bemlchsfinal/model/pick_list_value/ProductRecord.dart'
// as productvalue;
import 'package:intl/intl.dart';
import 'package:fact/model/ProductRecord.dart' as productvalue;

// import '../model/servicereportpicklist/EnquiryDetailsModel.dart';

// import '../Bsheet/BsheetEnquiry.dart';
// import '../List_Widget/EnquiryFormListWidget.dart';
// import '../model/servicereportpicklist/EnquiryDetailsModel.dart';
// import 'List_Widget/EnquiryFormListWidget.dart';
// import 'bottomsheet/BsheetEnquiry.dart';
// import 'addproducts.dart';

class Enquiry extends StatefulWidget {
  const Enquiry({super.key});

  @override
  State<Enquiry> createState() => _EnquiryState();
}

class _EnquiryState extends State<Enquiry> {
  // Enquiry Details
  final TextEditingController _subject = TextEditingController();
  final TextEditingController _assignedTo = TextEditingController();
  final TextEditingController _opportName = TextEditingController();
  final TextEditingController _enquiryStage = TextEditingController();
  final TextEditingController _validUntil = TextEditingController();
  final TextEditingController _contactName = TextEditingController();
  final TextEditingController _carrier = TextEditingController();
  final TextEditingController _shipping = TextEditingController();
  final TextEditingController _inventManager = TextEditingController();
  final TextEditingController _orgName = TextEditingController();
  final TextEditingController _accepStatus = TextEditingController();

  // Address Details
  final TextEditingController _address = TextEditingController();
  final TextEditingController _shippingAdd = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _shippingSuburb = TextEditingController();
  final TextEditingController _state = TextEditingController();
  final TextEditingController _shippingState = TextEditingController();
  final TextEditingController _postCode = TextEditingController();
  final TextEditingController _shippingPostCode = TextEditingController();
  final TextEditingController _country = TextEditingController();
  final TextEditingController _shippingCountry = TextEditingController();
  final TextEditingController _poBox = TextEditingController();
  final TextEditingController _shippingPOBox = TextEditingController();

  // Terms And Conditions
  final TextEditingController _termsAndCond = TextEditingController();

  final TextEditingController _adjustment = TextEditingController();

  // Description Details
  final TextEditingController _description = TextEditingController();

  final TextEditingController _taxRegion = TextEditingController();
  final TextEditingController _currency = TextEditingController();
  final TextEditingController _taxMode = TextEditingController();

  final TextEditingController _quoteName = TextEditingController();

  static const values1 = <String>[
    'Organization',
    'Related To',
    'Shipping Address'
  ];

  static const values2 = <String>['Organization', 'Related To', 'Address'];

  static const values3 = <String>['Add', 'Deduct'];

  String selectedValue1 = '';
  String selectedValue2 = '';
  String selectedValue3 = '';

  List<String> eqStaAftActTaken = [
    'On Road',
    'Of Road',
    'Running with Problem'
  ];

  List<Cf2383?> cf_2383 = [];
  List<Carrier?> carrier = [];
  List<Quotestage?> quotestage = [];
  List<HdnTaxType?> hdnTaxType = [];

  DioServiceClient dio = DioServiceClient();

  @override
  void initState() {
    callsalesorderdata();
    // print("Hi");
    super.initState();
  }

  //network call
  void callsalesorderdata() async {
    EnquiryDetailsModel? response = await dio.salesorderdata();
    if (response?.statuscode == 1) {
      carrier = response!.data!.carrier!;
      quotestage = response!.data!.quotestage!;
      cf_2383 = response!.data!.cf2383!;
      hdnTaxType = response!.data!.hdnTaxType!;
      print(response.statusMessage);
    } else {
      print(response?.statusMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enquiry Form',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Enquiry Details
            Container(
              child: ExpansionTile(
                title: Text(
                  "Enquiry Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  FormUI(
                      _subject, "Subject", "Enter Subject", () => null, false),
                  FormUI(_assignedTo, "Assigned To", "Enter Assigned To",
                      () => null, false),
                  FormUISearchUI(_opportName, "Opportunity Name", "Enter Opportunity Name", () => null, false),
                  FormUI(_enquiryStage, "Enquiry Stage", "Enter Enquiry Stage",
                      showstatusdd, true),
                  DateUI(_validUntil, "Valid Until", "Enter Valid Until", () => {datepicker(_validUntil)}, true),
                  FormUISearchUI(_contactName, "Contact Name", "Enter Contact Name", () => null, false),
                  FormUI(
                      _carrier, "Carrier", "Enter Carrier", showcarrierdd, true),
                  FormUI(_shipping, "Shipping", "Enter Shipping", () => null,
                      false),
                  FormUISearchUI(_inventManager, "Inventory Manager", "Enter Inventory Manager", () => null, false),
                  FormUISearchUI(_orgName, "Organization Name", "Enter Organization Name", () => null, false),
                  FormUI(_accepStatus, "Acceptance Status",
                      "Enter Acceptance Status", acceptanceStatusdd, false)
                ],
              ),
            ),

            // Address Details
            Container(
              child: ExpansionTile(
                title: Text(
                  "Address Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Center(
                      child: Text(
                    'Copy Billing Address from',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  )),
                  Column(
                    children: values1.map(
                      (value) {
                        return RadioListTile<String>(
                          value: value,
                          groupValue: selectedValue1,
                          title: Text(value),
                          onChanged: (value) {
                            setState(() {
                              this.selectedValue1 = value!;
                              print(selectedValue1);
                            });
                          },
                        );
                      },
                    ).toList(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                      child: Text(
                    'Copy Shipping Address from',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  )),
                  Column(
                    children: values2.map(
                      (value) {
                        return RadioListTile<String>(
                          value: value,
                          groupValue: selectedValue2,
                          title: Text(value),
                          onChanged: (value) {
                            setState(() {
                              this.selectedValue2 = value!;
                              print(selectedValue2);
                            });
                          },
                        );
                      },
                    ).toList(),
                  ),
                  FormUI(
                      _address, "Address", "Enter Address", () => null, false),
                  FormUI(_shippingAdd, "Shipping Address",
                      "Enter Shipping Address", () => null, false),
                  FormUI(_city, "City", "Enter City", () => null, false),
                  FormUI(_shippingSuburb, "Shipping Suburb",
                      "Enter Shipping Suburb", () => null, false),
                  FormUI(_state, "State", "Enter State", () => null, false),
                  FormUI(_shippingState, "Shipping State",
                      "Enter Shipping State", () => null, false),
                  FormUI(_postCode, "Postcode", "Enter Postcode", () => null,
                      false),
                  FormUI(_shippingPostCode, "Shipping Postcode",
                      "Enter Shipping Postcode", () => null, false),
                  FormUI(
                      _country, "Country", "Enter Country", () => null, false),
                  FormUI(_shippingCountry, "Shipping Country",
                      "Enter Shipping Country", () => null, false),
                  FormUI(_poBox, "PO Box", "Enter PO Box", () => null, false),
                  FormUI(_shippingPOBox, "Shipping PO Box",
                      "Enter Shipping PO Box", () => null, false)
                ],
              ),
            ),

            // Terms & Conditions
            Container(
              child: ExpansionTile(
                title: Text(
                  "Terms & Conditions",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  FormUI(_termsAndCond, "Terms And Conditions",
                      "Enter Terms And Conditions", () => null, false),
                ],
              ),
            ),

            // Description Details
            Container(
              child: ExpansionTile(
                title: Text(
                  "Description Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  FormUI(_description, "Description", "Enter Description",
                      () => null, false),
                ],
              ),
            ),

            // Item Details
            Container(
              child: ExpansionTile(
                title: Text(
                  "Item Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  FormUI(_taxRegion, "Tax Region", "Enter Tax Region", () => null, false),
                  FormUI(_currency, "Currency", "Enter Currency", () => null, false),
                  FormUI(_taxMode, "Tax Mode", "Enter Tax Mode", showtaxmodedd, true),
                  ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (_) => BshhetEnquiry(),
                      );
                    },
                    child: const Text('Add Parts'),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 400,
                        child: EnquiryFormListWidget(),
                      )
                    ],
                  ),
                ],
              ),
            ),

            // Bottom Form Sheet
            Container(
              padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow(children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("Items Total"),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("0.00"),
                    ),
                  ]),
                  TableRow(children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("Overall Discount"),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("0.00"),
                    ),
                  ]),
                  TableRow(children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("Charges"),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("0.00"),
                    ),
                  ]),
                  TableRow(children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("Pre Tax Total"),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("0.00"),
                    ),
                  ]),
                  TableRow(children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("Taxes On Charges"),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("0.00"),
                    ),
                  ]),
                  TableRow(children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("Deducted Taxes"),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("0.00"),
                    ),
                  ]),
                  TableRow(children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 10.0, left: 10.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Adjustment',
                              )),
                          Column(
                            children: values3.map(
                              (value) {
                                return RadioListTile<String>(
                                  value: value,
                                  groupValue: selectedValue3,
                                  title: Text(value),
                                  onChanged: (value) {
                                    setState(() {
                                      this.selectedValue3 = value!;
                                      print(selectedValue3);
                                    });
                                  },
                                );
                              },
                            ).toList(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: FormUI(_adjustment, " ", " ", () => null, false),
                    ),
                  ]),
                  TableRow(children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("Grand Total"),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                      child: Text("0.00"),
                    ),
                  ]),
                ],
              ),
            ),
            Center(
                    child: ElevatedButton(
                      onPressed: () { callDesignServiceReportCall(); },
                      child: const Text('Submit'),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  callDesignServiceReportCall() async {
    EnquiryFormDetailsModel demr =
    EnquiryFormDetailsModel();

    /// Enquiry Details
    demr.subject = _subject.text;
    demr.potential_id = _opportName.text;
    demr.validtill = _validUntil.text;
    demr.carrier = _carrier.text;
    demr.assigned_user_id1 = _inventManager.text;
    demr.cf_2383 = _accepStatus.text;
    demr.assigned_user_id = _assignedTo.text;
    demr.quotestage = _enquiryStage.text;
    demr.contact_id = _contactName.text;
    demr.shipping = _shipping.text;
    demr.account_id = _orgName.text;

    // Address Details
    demr.bill_street = _address.text;
    demr.bill_city = _city.text;
    demr.bill_state = _state.text;
    demr.bill_code = _postCode.text;
    demr.bill_country = _country.text;
    demr.bill_pobox = _poBox.text;
    demr.ship_street = _shippingAdd.text;
    demr.ship_city = _shippingSuburb.text;
    demr.ship_state = _shippingState.text;
    demr.ship_code = _shippingPostCode.text;
    demr.ship_country = _shippingCountry.text;
    demr.ship_pobox = _shippingPOBox.text;

    // Terms and Conditions
    demr.terms_conditions = _termsAndCond.text;

    // Description Details
    demr.description = _description.text;

    // Item Details
    demr.region_id = _taxRegion.text;
    demr.currency_id = _currency.text;

    final taskPartsList =
        Provider.of<EnquiryFormModelProvider>(context,
            listen: false)
            .itemsList;
    List<LineItems> items = [];
    LineItems lineitems = LineItems();

    if (taskPartsList.isNotEmpty) {
      for (int i = 0; i < taskPartsList.length; i++) {
        lineitems.productid = taskPartsList[i].itemName;
        lineitems.quantity = taskPartsList[i].quantity;
        lineitems.purchase_cost = taskPartsList[i].purchaseCost;
        lineitems.listprice = taskPartsList[i].sellingPrice;
        lineitems.hdnGrandTotal = taskPartsList[i].total;

        /// lineitems.line       ///line_vendor_id   this is vendor id need to pass
      }
      items.add(lineitems);
    } else {}

    demr.lineItems = items;

    dynamic overalreq = jsonEncode(demr);

    BaseResponseOfServiceReport? response = await dio.createGeneralInspection(
        accesstoken: ConstantValue.PRETOKEN,
        userid: ConstantValue.PREUSERID,
        value: overalreq);

    if (response?.statuscode == 1) {
      print(response?.statusMessage);
    } else if (response?.statuscode == 0) {
      showdio(response?.statusMessage);
      print(response?.statusMessage);
    }
  }

  void showdio(String? data) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            title: const Text(
              "Info",
              textAlign: TextAlign.center,
            ),
            content: Text('StatusCode : ${""}, \nStatusMessage : ${data}'),
            actions: <Widget>[
              TextButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF2A4083),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "OK",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          );
        });
  }

  Widget FormUI(
    TextEditingController? formcontroler,
    String? formlabel,
    String? hinttext,
    Function()? tap,
    bool boolvalue,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
          child: Text("$formlabel"),
        ),
        Padding(
            padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
            child: SingleChildScrollView(
              child: TextFormField(
                readOnly: boolvalue,
                controller: formcontroler,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  hintText: hinttext,
                  fillColor: Color(0xFFEDEDED),
                  filled: true,
                ),
                onTap: tap,
              ),
            ))
      ],
    );
  }

  Widget FormUISearchUI(
      TextEditingController? formcontroler,
      String? formlabel,
      String? hinttext,
      Function()? tap,
      bool boolvalue,
      ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
          child: Text("$formlabel"),
        ),
        Padding(
            padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
            child: SingleChildScrollView(
              child: TextFormField(
                autofocus: true,
                readOnly: boolvalue,
                controller: formcontroler,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        callSlNumber(formcontroler!.text);
                      },
                      icon: Icon(Icons.search)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  hintText: hinttext,
                  fillColor: Color(0xFFEDEDED),
                  filled: true,
                ),
                onTap: tap,
              ),
            ))
      ],
    );
  }

  Widget MultiLineUI(
      TextEditingController? formcontroler,
      String? formlabel,
      String? hinttext,
      String? prefixtext,
      Function()? tap,
      bool boolvalue,
      ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
          child: Text("$formlabel"),
        ),
        Padding(
            padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
            child: SingleChildScrollView(
              child: TextFormField(
                readOnly: boolvalue,
                controller: formcontroler,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  hintText: hinttext,
                  prefixText: prefixtext,
                  fillColor: Color(0xFFEDEDED),
                  filled: true,
                ),
                onTap: tap,
                minLines: 1,
                maxLines: 5,
              ),
            ))
      ],
    );
  }

  Widget DateUI(
      TextEditingController? formcontroler,
      String? formlabel,
      String? hinttext,
      Function()? tap,
      bool boolvalue,
      ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
          child: Text("$formlabel"),
        ),
        Padding(
            padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
            child: SingleChildScrollView(
              child: TextFormField(
                readOnly: boolvalue,
                controller: formcontroler,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.calendar_month,
                    color: Colors.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFEDEDED))),
                  hintText: hinttext,
                  fillColor: Color(0xFFEDEDED),
                  filled: true,
                ),
                onTap: tap,
              ),
            ))
      ],
    );
  }

  Future<Null> datepicker(TextEditingController con) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(
            2000), //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2101));

    if (pickedDate != null) {
      print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
      String formattedDate = DateFormat('d/M/y').format(pickedDate);
      print(
          formattedDate); //formatted date output using intl package =>  2021-03-16
      //you can implement different kind of Date Format here according to your requirement

      setState(() {
        con.text = formattedDate; //set output date to TextField value.
      });
    } else {
      print("Date is not selected");
    }
  }

  List<productvalue.ReferenceRecords?> refRecordData = [];

  void callSlNumber(String value) async {
    productvalue.RefrRecord? response = await dio.getproductId(value);
    if (response?.statuscode == 1) {
      refRecordData = response!.data!.referenceRecords!;
      if (refRecordData.length != 0) {
        showDialogProductAlert();
      }
      print(response.statusMessage);
    } else {
      print(response?.statusMessage);
    }
  }

  Future showDialogProductAlert() {
    return showDialog(
        context: context,
        builder: (context) {
          return showProductLabel();
        });
  }

  String? productID;

  Widget showProductLabel() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Products",
        textAlign: TextAlign.center,
      ),
      content: Container(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: refRecordData.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            setState(() {
                              _quoteName.text =
                              refRecordData[index]!.label!;
                              productID = refRecordData[index]!.value!;
                            });
                            Navigator.of(context).pop();
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              refRecordData[index]!.label!,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Divider(thickness: 1),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future showcarrierdd() {
    return showDialog(
        context: context,
        builder: (context) {
          return carrieralertdialog();
        });
  }

  // failDeSapNotiType SAP Notification Type
  Widget carrieralertdialog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Carrier",
        textAlign: TextAlign.center,
      ),
      content: Container(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: carrier.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            setState(() {
                              _carrier.text =
                              carrier[index]!.carrier!;
                            });
                            Navigator.of(context).pop();
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              carrier[index]!.carrier!,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Divider(thickness: 1),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future showstatusdd() {
    return showDialog(
        context: context,
        builder: (context) {
          return statusalertdialog();
        });
  }

  // failDeSapNotiType SAP Notification Type
  Widget statusalertdialog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Enquiry Stage",
        textAlign: TextAlign.center,
      ),
      content: Container(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: quotestage.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            setState(() {
                              _enquiryStage.text =
                              quotestage[index]!.quotestage!;
                            });
                            Navigator.of(context).pop();
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              quotestage[index]!.quotestage!,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Divider(thickness: 1),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future acceptanceStatusdd() {
    return showDialog(
        context: context,
        builder: (context) {
          return acceptancestatusdialog();
        });
  }

  Widget acceptancestatusdialog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Acceptance Status",
        textAlign: TextAlign.center,
      ),
      content: Container(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: cf_2383.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            setState(() {
                              _accepStatus.text =
                              cf_2383[index]!.cf2383!;
                            });
                            Navigator.of(context).pop();
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              cf_2383[index]!.cf2383!,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Divider(thickness: 1),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future showtaxmodedd() {
    return showDialog(
        context: context,
        builder: (context) {
          return taxmodealertdialog();
        });
  }

  Widget taxmodealertdialog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Tax Mode",
        textAlign: TextAlign.center,
      ),
      content: Container(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: hdnTaxType.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            setState(() {
                              _taxMode.text =
                              hdnTaxType[index]!.hdnTaxType!;
                            });
                            Navigator.of(context).pop();
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              hdnTaxType[index]!.hdnTaxType!,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Divider(thickness: 1),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
