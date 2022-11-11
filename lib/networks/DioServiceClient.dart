import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fact/dropdownmodel/EnquiryDetailsModel.dart';
import 'package:fact/model/BaseResponseOfServiceReport.dart';
import 'package:fact/utils/ConstantValue.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'AuthorizationInterceptor.dart';
import 'LoggerInterceptor.dart';
import 'Endpoints.dart';
import 'DioException.dart';
import 'package:fact/keyvaluesmodel/EnquiryDetailsModel.dart' as mdetail;
import 'package:fact/model/ProductRecord.dart' as productvalue;


class DioServiceClient {
  //constructor

  DioServiceClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: Endpoints.baseURLLOCAL,
            connectTimeout: 10000,
            receiveTimeout: 10000,
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
            LoggerInterceptor(),
          ]);

  late final Dio _dio;

  Future<BaseResponseOfServiceReport?> createGeneralInspection(
      {required dynamic value,
      required String? accesstoken,
      required String? userid}) async {
    try {
      final response = await _dio.post(
        Endpoints.srReportBreakdown,
        data: {
          'module': 'ServiceReports',
          'values': value,
          'sourceModule': "ServiceReports",
          'access_token': accesstoken,
          'useruniqueid': userid
        },
      );
      return BaseResponseOfServiceReport.fromJson(response.data);
    } on DioError catch (err) {
      EasyLoading.dismiss();
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    }
  }

  Future<productvalue.RefrRecord?> getproductId(String value) async {
    try {
      final response = await _dio.post(
        Endpoints.getReferenceRecords,
        data: {
          'searchValue': value,
          'module': "Products",
          'access_token': ConstantValue.PRETOKEN,
          "useruniqueid": ConstantValue.PREUSERID
        },
      );
      return productvalue.RefrRecord.fromJson(response.data);
    } on DioError catch (err) {
      EasyLoading.dismiss();
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<EnquiryDetailsModel?> salesorderdata() async {
    try {
      final response = await _dio.post(
        Endpoints.getPickListValueOfModule,
        data: {
          'module': "Quotes",
          'access_token': ConstantValue.PRETOKEN,
          "useruniqueid": ConstantValue.PREUSERID
        },
      );
      return EnquiryDetailsModel.fromJson(response.data);
    } on DioError catch (err) {
      // EasyLoading.dismiss();
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<mdetail.Record?> getSalesDetails(String value) async {
    try {
      final response = await _dio.post(
        Endpoints.getDetailofProduct,
        data: {
          'module': "Quotes",
          'access_token': ConstantValue.PRETOKEN,
          'record': "4x608697",
          "useruniqueid": ConstantValue.PREUSERID
        },
      );

      mdetail.EnquiryDetailsModel? tick =
      mdetail.EnquiryDetailsModel.fromJson(response.data);
      return tick.data!.record!;
    } on DioError catch (err) {
      EasyLoading.dismiss();
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }
}


