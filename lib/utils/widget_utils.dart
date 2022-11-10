import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetUtils {
  static WidgetUtils? _instance;

  WidgetUtils._internal() {
    _instance = this;
  }

  factory WidgetUtils() => _instance ?? WidgetUtils._internal();

  inputDecorationForTextField({String labelText = ''}) {
    return InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black87),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
        labelStyle: const TextStyle(fontSize: 14.0,color: Colors.black),
        labelText: labelText);
  }

  void snackBarMessenger(message, {duration = 2}) {
    Get.rawSnackbar(
        message: message,
        instantInit: true,
        isDismissible: true,
        snackStyle: SnackStyle.FLOATING,
        margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, Get.width / 4),
        duration: Duration(seconds: duration),
        animationDuration: Duration(seconds: 0));
  }
}
