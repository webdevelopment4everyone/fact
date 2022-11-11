import 'package:fact/otpgen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fact/networks/DioServiceClient.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:fact/networks/DioServiceClient.dart';
import 'package:fact/model/UserLeverDependency.dart';
import 'package:fact/model/finaloffice_dependency.dart';
import 'package:fact/model/officeinitialdata.dart';
import 'package:fact/model/servicereportpicklist/businessvertical.dart';
import 'package:fact/model/PreSignUpResponse.dart';

class Registration extends StatefulWidget {
  static const String title = 'Registration Page';

  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => RegistrationState();
}

class RegistrationState extends State<Registration> {
  DioServiceClient dio = DioServiceClient();

  List<Office?> office = [];
  //List<BusinessVertical?> businessVertical = [];
  List<String> businessVertical = [
    "Defence",
    "Mining & Construction",
    "Both Defence and Mining & Construction"
  ];
  List<ActivityCentre?> activityCentre = [];
  List<ProductionDivision?> productionDivision = [];
  List<RegionalOffice?> regionalOfficeList = [];
  List<DistrictOffice?> districtOffice = [];
  List<ServiceCentre?> serviceCentre = [];
  List<CustRole?> custRole = [];
  List<SubServiceManagerRole?> subServiceManagerRole = [];
  List<Designaion?> designaion = [];

  //designation
  void calldesignation(String req) async {
    UserLeverDependency? res = await dio.showdesignation(req);
    if (res!.statuscode == 1) {
      subServiceManagerRole = res.data!.subServiceManagerRole!;
      designaion = res.data!.designaion!;
    } else {
      print(res.statusMessage);
    }
  }

  void callinitdata() async {
    OfficeInitialdata? res = await dio.officedata();
    if (res!.statuscode == 1) {
      office = res.data!.office!;
      showofficedd();
    } else {
      print(res.statusMessage);
    }
  }

  void callofficedata(String req) async {
    FinalofficeDependency? response = await dio.activityaccessleveldata(req);
    if (response!.statuscode == 1) {
      activityCentre = response.data!.activityCentre!;
      productionDivision = response.data!.productionDivision!;
      regionalOfficeList = response.data!.regionalOffice!;
      districtOffice = response.data!.districtOffice!;
      serviceCentre = response.data!.serviceCentre!;
      custRole = response.data!.custRole!;

      print(response.statusMessage);
    } else {
      print(response.statusMessage);
    }
  }

  // void callserviceresdata() async {
  //   Businessvertical? response = await dio.bussvertical();
  //   if (response?.statuscode == 1) {
  //     businessVertical = response!.data!.businessVertical!;
  //   } else {
  //     print(response!.statusMessage);
  //   }
  // }

  bool visibilityOfficeLocation = false;
  bool visibilityrole = false;
  bool showPassword = true;
  bool viewPassword = true;
  FocusNode? passwordFocusNode;
  FocusNode? conPasswordFocusNode;

  final TextEditingController _badgeno = TextEditingController();
  final TextEditingController _busvertical = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _dob = TextEditingController();
  final TextEditingController _doj = TextEditingController();
  final TextEditingController _mail = TextEditingController();
  final TextEditingController _office = TextEditingController();
  final TextEditingController _accesslevel = TextEditingController();
  final TextEditingController _role = TextEditingController();
  final TextEditingController _designation = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpass = TextEditingController();
  final TextEditingController _custRole = TextEditingController();
  final TextEditingController _serviceCentre = TextEditingController();
  final TextEditingController _districtOffice = TextEditingController();
  final TextEditingController _regionalOffice = TextEditingController();
  final TextEditingController _productionDivision = TextEditingController();
  final TextEditingController _activityCentre = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  @override
  void initState() {
    //callserviceresdata();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //var _isHidden;
    return Scaffold(
      body: SafeArea(
          left: true,
          right: true,
          top: true,
          bottom: true,
          child: Material(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10.0),
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bgimage.png'),
                        fit: BoxFit.fill)),
                child: Form(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      heading(),
                      dividerLine(),
                      FormUIBadge(_badgeno, "Badge Number", "Badge Number",
                          () => null, false),
                      FormUI(
                          _busvertical,
                          "Business Vertical",
                          "Select Business Vertical",
                          showbusinessVerticaldd,
                          true),
                      FormUI(_name, "Name", "Enter Name", () => null, false),
                      FormUI(_dob, "Date of Birth", "Enter Date of Birth",
                          () => {datepicker(_dob)}, true),
                      FormUI(_doj, "Date of Joining", "Enter Date of Joining",
                          () => {datepicker(_doj)}, true),
                      FormUI(_mail, "Email ID", "Enter mail id", () => null,
                          false),
                      FormUI(_office, "Office", "Select Office", callinitdata,
                          true), //showofficedd
                      if (_office.text == "Corporate Office-BEML Soudha") ...[
                        //showofficelocationdd
                      ] else if (_office.text ==
                          "Marketing Headquarter-Unity Buildings") ...[
                        Container()
                      ] else if (_office.text == "Regional Office") ...[
                        FormUI(
                            _regionalOffice,
                            "Regional Office",
                            "Select Regional Office",
                            () => {showregionalofficelocationdd()},
                            true), //showofficelocationdd
                      ] else if (_office.text == "District Office") ...[
                        FormUI(
                            _districtOffice,
                            "District Office",
                            "Select District Office",
                            () => {showdistofficelocationdd()},
                            true), //showofficelocationdd
                      ] else if (_office.text == "Activity Centre") ...[
                        FormUI(
                            _activityCentre,
                            "Activity Centre",
                            "Select Activity Centre",
                            () => {showactivityofficelocationdd()},
                            true), //showofficelocationdd
                      ] else if (_office.text == "Service Centre") ...[
                        FormUI(
                            _serviceCentre,
                            "Service Centre",
                            "Select Service Centre",
                            () => {showserviceofficelocationdd()},
                            true), //showofficelocationdd
                      ] else if (_office.text == "Production Division") ...[
                        FormUI(
                            _productionDivision,
                            "Production Division",
                            "Select Production Division",
                            () => {showproductionofficelocationdd()},
                            true), //showofficelocationdd
                      ] else if (_office.text ==
                          "International Business Division-New Delhi") ...[
                        Container() //showofficelocationdd
                      ],
                      if (_office.text.isNotEmpty) ...[
                        FormUI(_accesslevel, 'Access Level',
                            'Select Access Level', showalndd, true),
                        if (_accesslevel.text == 'Service Manager') ...[
                          FormUI(_role, "Role", "Select Role",
                              () => {showroledd()}, true), //showroledd
                          FormUI(
                              _designation,
                              "Designation",
                              "Select Designation",
                              () => {showdesignationdd()},
                              true),
                        ] else ...[
                          FormUI(
                              _designation,
                              "Designation",
                              "Select Designation",
                              () => {showdesignationdd()},
                              true),
                        ],
                      ],
                      passwordField(),
                      confirmpasswordField(),
                      footerview(),
                      phonefiled(),
                      regButton(),
                    ],
                  ),
                ))),
          )),
    );
  }

  // password field
  Widget passwordField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
          child: Text(
            "Password",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
            child: SingleChildScrollView(
              child: TextFormField(
                controller: _password,
                cursorColor: Colors.red,
                onTap: () {
                  setState(() {
                    FocusScope.of(context).unfocus();
                    FocusScope.of(context).requestFocus(passwordFocusNode);
                  });
                },
                obscureText: showPassword,
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
                  hintText: "* Password",
                  fillColor: Color(0xFFEDEDED),
                  filled: true,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye)),
                ),
              ),
            ))
      ],
    );
  }

  // Confirm password field
  Widget confirmpasswordField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
          child: Text(
            "Confirm Password",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
            child: SingleChildScrollView(
              child: TextFormField(
                controller: _confirmpass,
                focusNode: passwordFocusNode,
                cursorColor: Colors.red,
                onTap: () {
                  setState(() {
                    FocusScope.of(context).unfocus();
                    FocusScope.of(context).requestFocus(passwordFocusNode);
                  });
                },
                obscureText: viewPassword,
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
                  hintText: "* Re-Type Password",
                  fillColor: Color(0xFFEDEDED),
                  filled: true,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          viewPassword = !viewPassword;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye)),
                ),
              ),
            ))
      ],
    );
  }

  // header of the form
  Widget heading() {
    return Container(
      child: Image(
        image: AssetImage(
          'assets/images/white_logo.png',
        ),
        height: 170.0,
        width: 170.0,
      ),
    );
  }

  //divider
  Widget dividerLine() {
    return Row(children: <Widget>[
      Padding(padding: EdgeInsets.only(left: 10.0, right: 10.0)),
      Expanded(
          child: Divider(
        color: Colors.white,
        thickness: 1,
      )),
      Text(
        "   BEML Registration   ",
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Sfpro',
            fontSize: 14.0,
            fontWeight: FontWeight.bold),
      ),
      Expanded(
          child: Divider(
        color: Colors.white,
        thickness: 1,
      )),
      Padding(padding: EdgeInsets.only(left: 10.0, right: 10.0)),
    ]);
  }

  // footerpart
  Widget footerview() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Align(
          alignment: Alignment.centerLeft,
        ),
        Text(
          'Enter Your Mobile Number',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        Padding(padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0)),
        Text(
          '(OTP will be sent to verify your mobile number)',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        Padding(padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0)),
        Divider(
          color: Colors.white,
          thickness: 2,
        ),
      ]),
    );
  }

  //phone field
  String? phonenumber;
  Widget phonefiled() {
    return Container(
      padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
      child: IntlPhoneField(
          cursorColor: Colors.red,
          controller: _phone,
          decoration: InputDecoration(
            fillColor: Color(0xFFEDEDED),
            filled: true,
            labelText: 'Phone NUmber',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          initialCountryCode: 'IN',
          onChanged: (phone) {
            print(phone.completeNumber);

            phonenumber = phone.completeNumber;
          },
          onSubmitted: (val) {
            _phone.text = val;
            print(val);
          },
          onCountryChanged: (country) {
            print(country.name);
          }),
    );
  }

  // registration a button
  Widget regButton() {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: SizedBox(
        height: 50,
        width: 360,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(33, 110, 243, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))),
          onPressed: () async {
            PreSignUpResponse? res = await dio.showregdata(
                badge_no: _badgeno.text,
                name: _name.text,
                email: _mail.text,
                business_vertical: _busvertical.text,
                phone: phonenumber ?? _phone.text,
                user_password: _password.text,
                confirm_password: _confirmpass.text,
                designaion: _designation.text,
                cust_role: _accesslevel.text,
                office: _office.text,
                districtoffice: _districtOffice.text,
                regionaloffice: _regionalOffice.text,
                serviceCenter: _serviceCentre.text,
                productiondivision: _productionDivision.text,
                activitycenter: _activityCentre.text,
                subrole: _role.text,
                date_of_birth: _dob.text,
                date_of_joining: _doj.text,
                service_engineer_name: _name.text);
            if (res!.statuscode == 1) {
              // final SharedPreferences prefs =
              //     await SharedPreferences.getInstance();
              String? _uid = res!.data!.uid;
              // prefs.setString('uid', _uid!);
              // prefs.setString('userid', '87687687');

              print("status 1");
              Get.to(OtpGen(), arguments: _uid);
            } else {
              showdio(res!.statusMessage);
            }
          },
          child: const Text(
            "Register",
            style: TextStyle(fontFamily: 'Sfpro', fontSize: 14),
          ),
        ),
      ),
    );
  }

  //dynamic ui code
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
          child: Text(
            "$formlabel",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
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

  Widget FormUIBadge(
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
          child: Text(
            "$formlabel",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
            child: SingleChildScrollView(
              child: TextFormField(
                readOnly: boolvalue,
                keyboardType: TextInputType.number,
                maxLength: 5,
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

  //dynamic datepicker
  Future<Null> datepicker(TextEditingController con) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        initialDate: DateTime.now(),
        firstDate: DateTime(
            1950), //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime.now());

    if (pickedDate != null) {
      print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
      String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
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

  Future showofficedd() {
    return showDialog(
        context: context,
        builder: (context) {
          return officealertdilog();
        });
  }

  // Office data
  Widget officealertdilog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Office",
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
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: office.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              setState(() {
                                _office.text = office[index]!.office!;
                                callofficedata(_office.text);
                              });
                              Navigator.of(context).pop();
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                office[index]!.office!,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(thickness: 1),
                        ],
                      );
                    },
                  ),
                  isAlwaysShown: true,
                  showTrackOnHover: true,
                  thickness: 15,
                  radius: Radius.circular(15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future showbusinessVerticaldd() {
    return showDialog(
        context: context,
        builder: (context) {
          return businessVerticalalertdilog();
        });
  }

  // Office data
  Widget businessVerticalalertdilog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Business Vertical",
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
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: businessVertical.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              setState(() {
                                _busvertical.text = businessVertical[index];
                              });
                              Navigator.of(context).pop();
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                businessVertical[index],
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(thickness: 1),
                        ],
                      );
                    },
                  ),
                  isAlwaysShown: true,
                  showTrackOnHover: true,
                  thickness: 15,
                  radius: Radius.circular(15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // cust_role show dialog
  Future showcustroleofficelocationdd() {
    return showDialog(
        context: context,
        builder: (context) {
          return custroleofficelocationalertdilog();
        });
  }

  Widget custroleofficelocationalertdilog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Custom role",
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
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: custRole.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              setState(() {
                                _custRole.text = custRole[index]!.custrole!;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                custRole[index]!.custrole!,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(thickness: 1),
                        ],
                      );
                    },
                  ),
                  isAlwaysShown: true,
                  showTrackOnHover: true,
                  thickness: 15,
                  radius: Radius.circular(15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //activity(office location) show dialog
  Future showactivityofficelocationdd() {
    return showDialog(
        context: context,
        builder: (context) {
          return activityofficelocationalertdilog();
        });
  }

  Widget activityofficelocationalertdilog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Activity Center",
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
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: activityCentre.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              setState(() {
                                _activityCentre.text =
                                    activityCentre[index]!.activitycentre!;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                activityCentre[index]!.activitycentre!,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(thickness: 1),
                        ],
                      );
                    },
                  ),
                  isAlwaysShown: true,
                  showTrackOnHover: true,
                  thickness: 15,
                  radius: Radius.circular(15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //district(office location) show dialog
  Future showdistofficelocationdd() {
    return showDialog(
        context: context,
        builder: (context) {
          return distofficelocationalertdilog();
        });
  }

  Widget distofficelocationalertdilog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "District Office",
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
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: districtOffice.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              setState(() {
                                _districtOffice.text =
                                    districtOffice[index]!.districtoffice!;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                districtOffice[index]!.districtoffice!,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(thickness: 1),
                        ],
                      );
                    },
                  ),
                  isAlwaysShown: true,
                  showTrackOnHover: true,
                  thickness: 15,
                  radius: Radius.circular(15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //service(office location) show dialog
  Future showserviceofficelocationdd() {
    return showDialog(
        context: context,
        builder: (context) {
          return serviceofficelocationalertdilog();
        });
  }

  Widget serviceofficelocationalertdilog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Service Center",
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
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: serviceCentre.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              setState(() {
                                _serviceCentre.text =
                                    serviceCentre[index]!.servicecentre!;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                serviceCentre[index]!.servicecentre!,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(thickness: 1),
                        ],
                      );
                    },
                  ),
                  isAlwaysShown: true,
                  showTrackOnHover: true,
                  thickness: 15,
                  radius: Radius.circular(15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //regional (office location) show dialog
  Future showregionalofficelocationdd() {
    // print(regionalOfficeList.length);
    // print(regionalOfficeList);
    //
    // for (int i = 0; i < regionalOfficeList.length; i++) {
    //   print(regionalOfficeList[i]!.regionaloffice);
    // }
    return showDialog(
        context: context,
        builder: (context) {
          return regionalofficelocationalertdilog();
        });
  }

  Widget regionalofficelocationalertdilog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Regional office",
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
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: regionalOfficeList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              setState(() {
                                _regionalOffice.text =
                                    regionalOfficeList[index]!.regionaloffice!;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                regionalOfficeList[index]!.regionaloffice!,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(thickness: 1),
                        ],
                      );
                    },
                  ),
                  isAlwaysShown: true,
                  showTrackOnHover: true,
                  thickness: 15,
                  radius: Radius.circular(15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //production (office location) show dialog
  Future showproductionofficelocationdd() {
    return showDialog(
        context: context,
        builder: (context) {
          return productionofficelocationalertdilog();
        });
  }

  Widget productionofficelocationalertdilog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Production Division",
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
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: productionDivision.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              setState(() {
                                _productionDivision.text =
                                    productionDivision[index]!
                                        .productiondivision!;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                productionDivision[index]!.productiondivision!,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(thickness: 1),
                        ],
                      );
                    },
                  ),
                  isAlwaysShown: true,
                  showTrackOnHover: true,
                  thickness: 15,
                  radius: Radius.circular(15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //Access level
  Future showalndd() {
    return showDialog(
        context: context,
        builder: (context) {
          return alalertdilog();
        });
  }

  Widget alalertdilog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Access Level",
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
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: custRole.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              setState(() {
                                _accesslevel.text = custRole[index]!.custrole!;
                                calldesignation(_accesslevel.text);
                              });
                              Navigator.of(context).pop();
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                custRole[index]!.custrole!,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(thickness: 1),
                        ],
                      );
                    },
                  ),
                  isAlwaysShown: true,
                  showTrackOnHover: true,
                  thickness: 15,
                  radius: Radius.circular(15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //Role dropdown
  Future showroledd() {
    return showDialog(
        context: context,
        builder: (context) {
          return rolealertdilog();
        });
  }

  Widget rolealertdilog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Role",
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
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: subServiceManagerRole.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              setState(() {
                                _role.text = subServiceManagerRole[index]!
                                    .subServiceManagerRole!;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                subServiceManagerRole[index]!
                                    .subServiceManagerRole!,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(thickness: 1),
                        ],
                      );
                    },
                  ),
                  thumbVisibility: true,
                  showTrackOnHover: true,
                  thickness: 15,
                  radius: Radius.circular(15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //designation dropdown
  Future showdesignationdd() {
    return showDialog(
        context: context,
        builder: (context) {
          return designationalertdilog();
        });
  }

  Widget designationalertdilog() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: const Text(
        "Designation",
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
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: designaion.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              setState(() {
                                _designation.text =
                                    designaion[index]!.designaion!;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                designaion[index]!.designaion!,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Divider(thickness: 1),
                        ],
                      );
                    },
                  ),
                  isAlwaysShown: true,
                  showTrackOnHover: true,
                  thickness: 15,
                  radius: Radius.circular(15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void showdio(String? data) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            title: const Text(
              "INFO",
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
}
