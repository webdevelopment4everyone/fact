import 'LoginForm.dart';
import 'package:flutter/material.dart';

class OtpVerified extends StatefulWidget {
  const OtpVerified({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return OtpVerifiedState();
  }
}

//For stateful widget we need a state class

class OtpVerifiedState extends State<OtpVerified> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          padding: const EdgeInsets.all(10.0),
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(color: Colors.white),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                heading(),
                info(),
                submit(),
              ],
            ),
          )),
    );
  }

  // for heading
  Widget heading() {
    return Container(
      alignment: Alignment.topCenter,
      child: Image(
        image: AssetImage('assets/images/check.png'),
        height: 150,
        width: 150,
      ),
    );
  }

  // for rest information
  Widget info() {
    return Container(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            Text("* Thank you for your valuable Registration",
                style: TextStyle(fontSize: 16.0), textAlign: TextAlign.center),
            Padding(padding: EdgeInsets.all(10.0)),
            Padding(padding: EdgeInsets.all(10.0)),
            Text(
                "* After successful verification, you will be communicated through SMS/Email",
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center),
            Padding(padding: EdgeInsets.all(10.0)),
          ],
        ));
  }

  //button to redirect
  Widget submit() {
    return Container(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 50,
            width: 340,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(33, 110, 243, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginForm()),
                );
              },
              child: const Text(
                "OK",
                style: TextStyle(fontFamily: 'Sfpro', fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
