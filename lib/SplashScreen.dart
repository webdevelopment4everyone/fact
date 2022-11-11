import 'package:fact/utils/ConstantValue.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//
import 'LoginForm.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  SharedPreferences? sharedPreferences;

  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Positioned(
                top: 200,
                left: 50,
                right: 50,
                child: Container(
                    height: 100,
                    width: double.infinity,
                    child: const Image(
                      image: AssetImage(
                        'assets/icon/logo.png',
                      ),
                      alignment: Alignment.center,
                      height: 150.0,
                      width: 150.0,
                    )),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              const Padding(padding: EdgeInsets.only(top: 5.0)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                    ),
                    onPressed: () {},
                    child: const Text("Terms of Service")),
                Padding(padding: EdgeInsets.all(5.0)),
                const Text(
                  "and",
                  style: TextStyle(color: Colors.grey),
                ),
                const Padding(padding: EdgeInsets.all(5.0)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                    ),
                    onPressed: () {},
                    child: Text("Privacy Policy")),
              ])
            ],
          )),
    );
  }

  _navigateHome() async {
    await Future.delayed(const Duration(milliseconds: 2500), () {});
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LoginForm()));
  }
}
