import 'package:aqar_map_task/core/config/app_config.dart';
import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    super.onRequest(options, handler);
//add api_key as query parameter
    options.queryParameters['api_key'] = AppConfig.apiKey;
    // options.headers['X-API-KEY'] = AppConfig.nafathApiKey;
    //     'Bearer $token';
  }
}
