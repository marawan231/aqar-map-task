import 'package:aqar_map_task/core/config/app_config.dart';
import 'package:aqar_map_task/core/network/app_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final Dio dio = Dio();

Dio setupDio() {
  dio
    // ..options.connectTimeout = const Duration(seconds: 10)
    // ..options.receiveTimeout = const Duration(seconds: 10)
    ..options.baseUrl = AppConfig.baseUrl
    ..options.headers = {};
  dio.interceptors.add(AppInterceptors());
  dio.interceptors.add(
    PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      // responseHeader: true,
      responseBody: true,
      request: true,
    ),
  );
  return dio;
}
