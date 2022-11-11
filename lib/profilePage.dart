import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:fact/Request/SRD.dart';
import 'package:fact/Request/ServiceReportBreakDown.dart';
import 'package:fact/beml_app_theme.dart';
import 'package:fact/model/LoginResponse.dart';
import 'package:fact/networks/DioServiceClient.dart';

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final DioServiceClient _dioClient = DioServiceClient();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BemlAppTheme.buildLightTheme().backgroundColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(children: <Widget>[
          getAppBarUI(),
          Expanded(
            child: SingleChildScrollView(
              child: Card(
                margin: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    namelabel(),
                    dateofbirth(),
                    badgeno(),
                    designation(),
                    email(),
                    phone()
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            height: 1,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.6),
                    blurRadius: 8,
                    offset: const Offset(4, 4),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                  highlightColor: Colors.transparent,
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Save',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget getAppBarUI() {
    return Container(
      decoration: BoxDecoration(
        color: BemlAppTheme.buildLightTheme().backgroundColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 4.0),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 8, right: 8),
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.close),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Container(
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
            )
          ],
        ),
      ),
    );
  }

  Widget namelabel() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 10.0),
          child: Text(
            "Full Name",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 7.0, left: 30.0, right: 40.0),
          child: Container(
            child: TextField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                isDense: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12), //<-- SEE HERE
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                fillColor: Color(0xFFEDEDED),
                filled: false,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget dateofbirth() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 10.0),
          child: Text(
            "Date Of Birth",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 7.0, left: 30.0, right: 40.0),
          child: Container(
            child: TextField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                isDense: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12), //<-- SEE HERE
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                fillColor: Color(0xFFEDEDED),
                filled: false,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget badgeno() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 10.0),
          child: Text(
            "Badge No",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 7.0, left: 30.0, right: 40.0),
          child: Container(
            child: TextField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                isDense: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12), //<-- SEE HERE
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                fillColor: Color(0xFFEDEDED),
                filled: false,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget designation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 10.0),
          child: Text(
            "Designation",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 7.0, left: 30.0, right: 40.0),
          child: Container(
            child: TextField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                isDense: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12), //<-- SEE HERE
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                fillColor: Color(0xFFEDEDED),
                filled: false,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget email() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 10.0),
          child: Text(
            "Email",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 7.0, left: 30.0, right: 40.0),
          child: Container(
            child: TextField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                isDense: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12), //<-- SEE HERE
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                fillColor: Color(0xFFEDEDED),
                filled: false,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget phone() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: 20.0, left: 30.0, right: 10.0, bottom: 10.0),
          child: Text(
            "Phone Number",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 7.0, left: 30.0, right: 40.0),
          child: Container(
            child: TextField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                isDense: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12), //<-- SEE HERE
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12)),
                fillColor: Color(0xFFEDEDED),
                filled: false,
              ),
            ),
          ),
        )
      ],
    );
  }

  // Name field
  Widget name() {
    return Container(
      height: 80,
      width: 340,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Positioned(
            left: 10.0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Full Name",
                textAlign: TextAlign.left,
              ),
            ),
          ),
          TextFormField()
        ],
      ),
    );
  }

  // Date of Birth

  // action buttons
  Widget actionbtn() {
    return Container(
        height: 80,
        width: 340,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                width: 130,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Cancel"),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)))),
                ),
              ),
              Text("        "),
              SizedBox(
                height: 50,
                width: 130,
                child: ElevatedButton(
                  onPressed: () {
                    ///  ServiceNetworkCall service = new ServiceNetworkCall();
                    //  service.makeServiceCall();
                  },
                  child: Text("Done"),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)))),
                ),
              )
            ]));
  }

  //Network calll goes here

}
