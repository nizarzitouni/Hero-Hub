import 'package:dio/dio.dart';

import '../services/cache_helper.dart';
import 'end_ponits.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    //Adding an authorization token to the headers of every outgoing request
    options.headers[ApiKey.token] =
        CacheHelper().getData(key: ApiKey.token) != null ? 'FOODAPI ${CacheHelper().getData(key: ApiKey.token)}' : null;
    super.onRequest(options, handler);
  }
}
