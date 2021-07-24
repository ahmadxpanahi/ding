import 'dart:convert';
import 'package:http/http.dart';
import 'package:ding/src/core/logger/logger.dart';
import 'interceptor.dart';
import 'token_manager.dart';

class RestClient extends BaseClient {
  RestClient(this.interceptor, this.tokenManager);

  final AccessTokenInterceptor interceptor;
  final TokenManager tokenManager;

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    interceptor.applyAccessToken(request);
    return await request.send().timeout(const Duration(seconds: 1500));
  }

  @override
  Future<Response> post(url,
      {Map<String, String>? headers, body, Encoding? encoding}) {
    Log.d('[HTTP ]: POST $url body: $body');
    return super.post(url, headers: headers, body: body, encoding: encoding);
  }

  @override
  Future<Response> get(url, {Map<String, String>? headers}) {
    Log.d('[HTTP]: GET $url');
    return super.get(url, headers: headers);
  }

  @override
  Future<Response> delete(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    Log.d('[HTTP]: DELETE $url');
    return super.delete(url, headers: headers);
  }

  @override
  Future<Response> put(url,
      {Map<String, String>? headers, body, Encoding? encoding}) {
    Log.d('[HTTP]: PUT $url body: $body');
    return super.put(url, headers: headers, body: body, encoding: encoding);
  }
}
