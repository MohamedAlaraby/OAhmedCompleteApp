import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/helpers/constants.dart';
import 'package:flutter_complete_project/core/helpers/shared_prefs_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  ///private constructor as I don't want to create instance from it
  DioFactory._();
  static Dio? dio;
  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;
      addDioIntercepter();
      addDioHeaders();
      return dio!;
    } else {
      return dio!;
    }
  }

  static Future<void> addDioHeaders() async {
    final token =
        await SharedPrefsHelper.getSecuredString(SharedPrefKeys.userToken);
    log("token when adding headers are $token");
    dio?.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $token",
    };
  }

  static Future<void> setTokenAfterLogin(String token) async {
    log("setTokenAfterLogin $token");
    dio?.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $token",
    };
  }

  //To make the debugging easier.
  static void addDioIntercepter() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
