import 'package:dio/dio.dart';

import '../../constants/string.dart';

/// ヘッダーに認証情報などを付加する
class HeaderInterceptor extends Interceptor {
  HeaderInterceptor([this.overwriteUrl]);

  String? overwriteUrl;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    // Referer や Origin など、Dio 経由のすべてのリクエストヘッダーに付加したい
    // キー・バリューを追加する。
    options.headers[referrer] = overwriteUrl ?? options.baseUrl;
    options.headers['Origin'] = options.baseUrl;
    options.headers['Accept'] = 'application/json';
    return handler.next(options);
  }
}
