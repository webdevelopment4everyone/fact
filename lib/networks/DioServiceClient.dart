import 'dart:convert';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:dio/dio.dart';
import 'package:fact/utils/ConstantValue.dart';
import 'package:fact/utils/constants.dart';
import 'package:fact/model/pick_list_value/ProductRecord.dart' as productvalue;
import 'package:fact/model/PreSignUpResponse.dart';
import 'package:fact/model/LoginResponse.dart';

import 'package:fact/model/recommision/RecommissionListView.dart'
    as recomlistview;

import 'package:fact/model/recommision/RecommissionDetailview.dart'
    as detailviewrecom;

import 'package:fact/model/Dashboard/sr_percentage_details_model.dart' as spdm;
import 'package:fact/model/Dashboard/service_request_report_model.dart' as srrm;

import 'package:fact/model/UserLeverDependency.dart';
import 'package:fact/model/finaloffice_dependency.dart';
import 'package:fact/model/officeinitialdata.dart';
import 'package:fact/model/pick_list_value/DeliveryPreFetchData.dart';
import 'package:fact/model/serviceTicketModel/TicketListUpdateModel.dart';

import 'package:fact/model/servicereportpicklist/businessvertical.dart';
import 'package:fact/model/servicereportpicklist/picklistvalueservicerequest.dart';
import 'package:fact/model/servicereportpicklist/presignup.dart';
import 'package:fact/model/servicereportpicklist/subassemblypicklistvaluemodel.dart';

import 'package:fact/model/pick_list_value/ProductRecord.dart' as productvalue;

import 'package:fact/model/recommision/RecommissionListView.dart'
    as recomlistview;

import 'package:fact/model/recommision/RecommissionDetailview.dart'
    as detailviewrecom;

import 'AuthorizationInterceptor.dart';
import 'LoggerInterceptor.dart';
import 'Endpoints.dart';
import 'DioException.dart';

class DioServiceClient {
  //constructor

  DioServiceClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: Endpoints.baseURL,
            connectTimeout: 10000,
            receiveTimeout: 10000,
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
            LoggerInterceptor(),
          ]);

  late final Dio _dio;

  Future<PreSignUpResponse?> showregdata({
    required String badge_no,
    required String name,
    required String email,
    required String business_vertical,
    required String phone,
    required String user_password,
    required String confirm_password,
    required String designaion,
    required String cust_role,
    required String office,
    required String districtoffice,
    required String regionaloffice,
    required String serviceCenter,
    required String productiondivision,
    required String activitycenter,
    required String subrole,
    required String date_of_birth,
    required String date_of_joining,
    required String service_engineer_name,
  }) async {
    try {
      final response = await _dio.post(
        Endpoints.presignup,
        data: {
          'badge_no': badge_no,
          'name': name,
          'email': email,
          'business_vertical': business_vertical,
          'phone': phone,
          'user_password': user_password,
          'confirm_password': confirm_password,
          'designaion': designaion,
          'cust_role': cust_role,
          'office': office,
          'district_office': districtoffice,
          'regional_office': regionaloffice,
          'service_centre': serviceCenter,
          'production_division': productiondivision,
          'activity_centre': activitycenter,
          'sub_service_manager_role': subrole,
          'date_of_birth': date_of_birth,
          'date_of_joining': date_of_joining,
          'service_engineer_name': service_engineer_name,
        },
      );
      return PreSignUpResponse.fromJson(response.data);
    } on DioError catch (err) {
      EasyLoading.dismiss();
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    }
  }

  //Login user
  Future<LoginResponse?> loginBemlUser(
      {required String username, required String password}) async {
    try {
      final response = await _dio.post(
        Endpoints.login,
        data: {'username': username, 'password': password},
      );
      return LoginResponse.fromJson(response.data);
    } on DioError catch (err) {
      EasyLoading.dismiss();
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<PreSignUpResponse?> getotp(
      {required String? uid, required String otp}) async {
    try {
      final response = await _dio.post(
        Endpoints.usersignup,
        data: {
          'uid': uid,
          'otp': otp,
        },
      );
      return PreSignUpResponse.fromJson(response.data);
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    }
  }

  //office data
  Future<OfficeInitialdata?> officedata() async {
    try {
      final response = await _dio.post(
        Endpoints.getinitdata,
      );
      return OfficeInitialdata.fromJson(response.data);
    } on DioError catch (err) {
      EasyLoading.dismiss();
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  //access level data
  Future<FinalofficeDependency?> activityaccessleveldata(String? value) async {
    try {
      final response = await _dio.post(
        Endpoints.getofficeuserdependency,
        data: {
          'office': value,
          'access_token': ConstantValue.PRETOKEN,
          "useruniqueid": ConstantValue.PREUSERID
        },
      );
      return FinalofficeDependency.fromJson(response.data);
    } on DioError catch (err) {
      EasyLoading.dismiss();
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<spdm.SrPercentageDetailsModel?> getDashboardData() async {
    try {
      final response = await _dio.post(
        Endpoints.getDashboardPercentage,
        data: {
          'access_token': Constants.accessToken,
          'useruniqueid': Constants.userUniqueId
        },
      );

      if (response.statusCode == 200) {
        spdm.SrPercentageDetailsModel percentageData =
            spdm.SrPercentageDetailsModel.fromJson(response.data);
        print('DATA-> ${jsonEncode(response.data)}');
        return percentageData;
      }
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
    return null;
  }

  //designation
  Future<UserLeverDependency?> showdesignation(String? value) async {
    try {
      final response = await _dio.post(
        Endpoints.getuserleveldependency,
        data: {
          'cust_role': value,
          'access_token': ConstantValue.PRETOKEN,
          "useruniqueid": ConstantValue.PREUSERID
        },
      );
      return UserLeverDependency.fromJson(response.data);
    } on DioError catch (err) {
      EasyLoading.dismiss();
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<PreSignUpResponse?> resendotp({required String? uid}) async {
    try {
      final response = await _dio.post(
        Endpoints.resendotp,
        data: {
          'uid': uid,
        },
      );
      return PreSignUpResponse.fromJson(response.data);
    } on DioError catch (err) {
      EasyLoading.dismiss();
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    }
  }
}
