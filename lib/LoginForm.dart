import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fact/ForgotPassword.dart';
import 'Registration.dart';
import 'package:fact/utils/ConstantValue.dart';

import 'package:fact/utils/constants.dart';

import 'package:fact/networks/DioServiceClient.dart';
import 'package:fact/model/LoginResponse.dart';
import 'package:fact/bottomNavigation.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  // create a instance

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

//For stateful widget we need a state class

class LoginScreenState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool showPassword = true;
  FocusNode? passwordFocusNode;
  SharedPreferences? sharedPreferences;
  final _mailController = TextEditingController();
  final _passwordController = TextEditingController();

  // init the dio client
  final DioServiceClient _dioClient = DioServiceClient();

  @override
  void initState() {
    super.initState();

    passwordFocusNode = FocusNode();
  }

  void setdata(
      String token, String userid, String userrole, String usertype) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences?.setString(ConstantValue.TOKEN, token);
    sharedPreferences?.setString(ConstantValue.USER_ID, userid);
    sharedPreferences?.setString(ConstantValue.USERROLE, userrole);
    sharedPreferences?.setString(ConstantValue.USERTYPE, usertype);
  }

  void getdata() async {
    sharedPreferences = await SharedPreferences.getInstance();
    ConstantValue.PRETOKEN = sharedPreferences?.getString(ConstantValue.TOKEN);
    ConstantValue.PREUSERID =
        sharedPreferences?.getString(ConstantValue.USER_ID);
    ConstantValue.PREUSERROLE =
        sharedPreferences?.getString(ConstantValue.USERROLE);
    ConstantValue.PREUSERTYPE =
        sharedPreferences?.getString(ConstantValue.USERTYPE);
  }

  @override
  void dispose() {
    super.dispose();
    passwordFocusNode?.dispose();
    _mailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        left: true,
        right: true,
        child: Material(
          child: Container(
              padding: const EdgeInsets.all(25.0),
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bgimage.png'),
                      fit: BoxFit.cover)),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    heading(),
                    emailField(),
                    passwordField(),
                    loginB(),
                    forgotpass(),
                    dividerLine(),
                    signupButton(),
                    textbox(),
                  ],
                ),
              )),
        ));
  }

  //final RxBool _showProgress = false.obs;

  Widget heading() {
    return Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Image(
                image: AssetImage(
                  'assets/icon/logo.png',
                ),
                height: 170.0,
                width: 170.0,
              ),
              Text(
                "",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40.0),
              ),
            ]));
  }

// we need email widget
  Widget emailField() {
    return Container(
      child: TextFormField(
        validator: (val) {
          if (val == null || val.isEmpty) {
            return "Please enter Username";
          }
          return null;
        },
        controller: _mailController,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          prefixIcon: Icon(Icons.person),
          hintText: "Username",
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }

  // we need password field
  Widget passwordField() {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: TextFormField(
        validator: (val) {
          if (val == null || val.isEmpty) {
            return "Please enter Password";
          }
          return null;
        },
        controller: _passwordController,
        focusNode: passwordFocusNode,
        cursorColor: Colors.red,
        onTap: () {
          setState(() {
            FocusScope.of(context).unfocus();
            FocusScope.of(context).requestFocus(passwordFocusNode);
          });
        },
        obscureText: showPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          prefixIcon: Icon(Icons.lock),
          hintText: "Password",
          fillColor: Colors.white,
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
    );
  }

  // we need forgot password widget
  Widget forgotpass() {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 10.0, left: 15.0, bottom: 15.0),
      child: GestureDetector(
        child: const Text(
          "Forgot Password ?",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ForgotPassword()),
          );
        },
      ),
    );
  }

  // need a button

  Widget loginB() {
    return Container(
      width: double.infinity,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                //  TODO tickettype file need to import files
                if (!_formKey.currentState!.validate()) {
                  return;
                }
                EasyLoading.show(status: 'submitting...');

                /// 66666   &&  ////Admin@123
                LoginResponse? response = await _dioClient.loginBemlUser(
                    username: _mailController.text,
                    password: _passwordController.text);
                if (response?.statuscode == 1) {
                  Constants.userUniqueId = response?.data?.assignUserId ?? '';
                  Constants.accessToken = response?.data?.accessToken ?? '';
                  Constants.loginUserRole = response?.data?.userRole ?? '';

                  setdata(
                      response!.data!.accessToken!,
                      response.data!.useruniqeid!,
                      response.data!.userRole!,
                      response.data!.usertype!);

                  print(response.data!.accessToken!);
                  ConstantValue.PRETOKEN = response.data!.accessToken!;
                  ConstantValue.PREUSERID = response.data!.useruniqeid!;
                  print("-----");
                  print(ConstantValue.PRETOKEN);

                  EasyLoading.dismiss();
                  showdio(response.statusMessage);

                  _navigateHome();

                  print(response.statusMessage);
                } else {
                  print(response?.statusMessage);
                  EasyLoading.dismiss();
                  showdio(response?.statusMessage);
                }
              },
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.symmetric(horizontal: 120.0, vertical: 17.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                primary: Color.fromRGBO(33, 110, 243, 1),
              ),
              child: const Text("Sign In",
                  style: TextStyle(
                    fontFamily: 'Sfpro',
                    fontSize: 14,
                    color: Colors.white,
                  )),
            ),
          ]),
    );
  }

  Widget dividerLine() {
    return Row(children: const <Widget>[
      Expanded(
          child: Divider(
        color: Colors.white,
        thickness: 2,
      )),
      Text(
        "   Or   ",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      Expanded(
          child: Divider(
        color: Colors.white,
        thickness: 2,
      )),
    ]);
  }

  // need a button
  Widget signupButton() {
    var mail = _mailController.text;
    var pass = _passwordController.text;
    return Container(
      width: 320,
      padding: EdgeInsets.only(top: 25.0, left: 10.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(33, 110, 243, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              //onPressed: () {},
              //style: ElevatedButton.styleFrom(primary: Color.fromRGBO(33, 110, 243, 1), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Confirm your login detail'),
                      content: Text("Mail ID : $mail \nPassword : $pass"),
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
                  },
                );
              },
              child: const Text(
                "Customer Register",
                style: TextStyle(fontSize: 12.0, fontFamily: 'Sfpro'),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 10.0, top: 10.0)),
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text("Clicked on Login Button"),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const Registration()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(33, 110, 243, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                child: const Text(
                  "BMEL Register",
                  style: TextStyle(fontFamily: 'Sfpro', fontSize: 12),
                )),
          ),
        ],
      ),
    );
  }

  // outside text
  Widget textbox() {
    return Container(
      padding: const EdgeInsets.only(top: 40.0),
      child: const Text(
        "Mining & Construction | Defence | Rail & Metro",
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
      ),
    );
  }

  _navigateHome() async {
    await Future.delayed(const Duration(milliseconds: 2500), () {});
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const BottomNavigation()));
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
