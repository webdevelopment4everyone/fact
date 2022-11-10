import 'dart:convert';

import 'package:dio/dio.dart';

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
}
