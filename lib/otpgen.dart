import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:fact/LoginForm.dart';
import 'package:flutter/material.dart';

import 'package:fact/networks/DioServiceClient.dart';
import 'package:flutter/services.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../model/PreSignUpResponse.dart';
import 'otpverifiedscreen.dart';

class OtpGen extends StatefulWidget {
  const OtpGen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return OtpGenState();
  }
}

//For stateful widget we need a state class

class OtpGenState extends State<OtpGen> {
  final CountdownController _controller = CountdownController(autoStart: true);
  OtpFieldController otpController = OtpFieldController();
  @override
  void dispose() {
    super.dispose();
  }

  DioServiceClient dio = DioServiceClient();
  String? uniqueid = Get.arguments.toString();

  @override
  void initstate() {
    super.initState();
  }

  final _seeotp = TextEditingController();
  final _otp1 = TextEditingController();
  final _otp2 = TextEditingController();
  final _otp3 = TextEditingController();
  final _otp4 = TextEditingController();
  final _otp5 = TextEditingController();
  final _otp6 = TextEditingController();

  String? otpvalue;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          padding: const EdgeInsets.all(25.0),
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(color: Colors.white),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                heading(),
                OTPTextField(
                    controller: otpController,
                    length: 6,
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 45,
                    fieldStyle: FieldStyle.underline,
                    outlineBorderRadius: 15,
                    style: TextStyle(fontSize: 17),
                    onChanged: (pin) {
                      print("Changed: " + pin);
                    },
                    onCompleted: (pin) {
                      otpvalue = pin;
                      print("Completed: " + pin);
                    }),
                resendotp(),
                submit(),
              ],
            ),
          )),
    );
  }

  // for heading
  Widget heading() {
    return SizedBox(
        width: double.infinity,
        child: Column(children: <Widget>[
          Text("OTP Verification",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Padding(padding: EdgeInsets.all(5.0)),
          Text(
            "We sent the code to your registered mobile number and Email Id",
            style: TextStyle(fontSize: 14, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "6-Digit OTP",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.left,
              ),
              Countdown(
                  controller: _controller,
                  seconds: 60,
                  build: (BuildContext context, double time) => Text(
                      time.toString(),
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                  interval: Duration(milliseconds: 100),
                  onFinished: () {
                    print('Timer is done!');
                  })
            ],
          )
        ]));
  }

  // submit button
  Widget resendotp() {
    return Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "OTP not received ?",
                  style: TextStyle(color: Colors.grey),
                )),
            TextButton(
                onPressed: () async {
                  _controller.onRestart!();
                  PreSignUpResponse? res = await dio.resendotp(uid: uniqueid);
                  if (res?.statuscode == 1) {
                    showsnack("OTP have been Resend ");
                    uniqueid = res?.data?.uid;
                  } else {
                    showsnack("Something went wrong please try again later");
                  }
                },
                child: Text(
                  "Resend OTP",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ));
  }

  // submit button
  Widget submit() {
    return Container(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 50,
            width: 320,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(33, 110, 243, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              onPressed: () async {
                if (otpvalue?.length == 6) {
                  PreSignUpResponse? res =
                      await dio.getotp(uid: uniqueid, otp: otpvalue!);
                  print(res!.data!.uid);
                  print(res!.statuscode);

                  if (res.statuscode == 1) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const OtpVerified()),
                    );
                  } else if (res.statuscode == 0) {
                    showdio(res!.statusMessage);
                    // showsnack(res.statusMessage!);
                  }
                } else {
                  showdio(
                      "Enter 6 Digit OTP, Entered Value is less than 6 Digits");
                }
              },
              child: const Text(
                "SUBMIT",
                style: TextStyle(fontFamily: 'Sfpro', fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showsnack(String value) {
    final snackBar = SnackBar(
      content: Text(value),
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
