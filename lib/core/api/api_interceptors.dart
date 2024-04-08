import 'package:dio/dio.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/cache/cahche_helper.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[RegestrionApiKey.token] =
        CacheHelper().getData(key: RegestrionApiKey.token) != null
            ? 'FOODAPI ${CacheHelper().getData(key: RegestrionApiKey.token)}'
            : null;
    super.onRequest(options, handler);
  }
}
