import 'package:shared_preferences/shared_preferences.dart';

class TokenManager {
  TokenManager(this._sharedPreferences);

  static const _accessTokenKey = 'auth.accessToken';
  static const _tempTokenKey = 'auth.tempToken';

  final SharedPreferences _sharedPreferences;

  Future<void> setAccessToken(String token) => _put(_accessTokenKey, token);

  String? getAccessToken() => _get(_accessTokenKey);

  Future<void> removeAccessToken() => _remove(_accessTokenKey);

  Future<void> setTempToken(String token) => _put(_tempTokenKey, token);

  String? getTempToken() => _get(_tempTokenKey);

  Future<void> removeTempToken() => _remove(_tempTokenKey);

  Future<void> _put(String key, String value) =>
      _sharedPreferences.setString(key, value);

  String? _get(String key) {
    if (_sharedPreferences.containsKey(key)) {
      return _sharedPreferences.getString(key);
    }
    return '';
  }

  Future<void> _remove(String key) => _sharedPreferences.remove(key);
}
