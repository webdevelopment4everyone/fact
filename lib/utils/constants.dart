import 'package:flutter/material.dart';

class Constants {
  ///navigation route keys
  static const String KEY_LOGIN_SCREEN_ROUTE = '/loginScreen';

  ///preference keys
  static const String PREF_KEY_EMAIL = 'email';

  ///api constants
  static const String KEY_CONTENT_TYPE = 'Content-Type';

  ///api body keys
  static const String KEY_USER_ID = 'user_id';

  ///
  static const String ASSET_ROOT = 'assets/';
  static const String CENTER_BUTTON = '${ASSET_ROOT}center_button.png';

  ///Api Status codes
  static const int STATUS_CODE_OK = 200;
  static const int STATUS_CODE_CREATE = 201;
  static const int STATUS_CODE_UNAUTHORIZED = 401;
  static const int STATUS_CODE_BAD_REQUEST = 403;

  static String authTokenValue = '';

  //This variable is used to check while role is assigned to logged in user.
  static String loginUserRole = '';
  static String accessToken = ''; //eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyaWQiOiI3MCJ9.KgSrDN4K0qJf6D7d5KF1PbZkoXh_sPuC8vyeNXNpyic
  static String userUniqueId = '';

  //refresh screen notifier keys
  static const String updateFailedPartDetails = 'update_failed_part_details';
//static GlobalKey<NavigatorState> navigatorKeyState;
}
