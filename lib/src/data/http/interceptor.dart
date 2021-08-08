import 'dart:developer';

import 'package:ding/src/core/logger/logger.dart';
import 'package:http/http.dart';

import 'token_manager.dart';

class AccessTokenInterceptor {
  AccessTokenInterceptor(this._tokenManager);

  final TokenManager _tokenManager;

  void applyAccessToken(BaseRequest request) {
    final url = request.url.toString();

    String? token;

    if (url.endsWith('/api/v1/set-password') ||
        url.endsWith('/api/v1/verify/password') ||
        url.endsWith('/api/v1/verify/reset-password') ||
        url.endsWith('/api/v1/reset-password') ||
        url.endsWith('/api/v1/reset-account')) {
      token = _tokenManager.getTempToken();
    } else if (_needAccessToken(url)) {
      token = _tokenManager.getAccessToken();
    }

    // print('Apply $token to -> $url');

    if (token != null) {
      request.headers['Authorization'] = 'Bearer $token';
    }
  }

  bool _needAccessToken(String url) {
    return !url.endsWith('/register') && !url.endsWith('/verify');
  }
}
