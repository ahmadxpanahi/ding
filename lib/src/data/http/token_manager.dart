import 'package:shared_preferences/shared_preferences.dart';

class TokenManager {
  TokenManager(this._sharedPreferences);

  static const _accessTokenKey = 'auth.accessToken';
  static const _tempTokenKey = 'auth.tempToken';
  static const _userIdKey = 'auth.userId';

  final SharedPreferences _sharedPreferences;

  Future<void> setAccessToken(String token) => _put(_accessTokenKey, token);

  String? getAccessToken() => _get(_accessTokenKey);

  Future<void> setUserId(int? id) => _putInt(_userIdKey, id);

  int? getUserId() => _getInt(_userIdKey);

  Future<void> removeAccessToken() => _remove(_accessTokenKey);

  Future<void> setTempToken(String token) => _put(_tempTokenKey, token);

  String? getTempToken() => _get(_tempTokenKey);

  Future<void> removeTempToken() => _remove(_tempTokenKey);

  Future<void> _put(String key, String value) =>
      _sharedPreferences.setString(key, value);

  Future<void> _putInt(String key, int? value) {
    if (value == null) {
      return Future.delayed(Duration.zero);
    }
    return _sharedPreferences.setInt(key, value);
  }

  String? _get(String key) {
    if (_sharedPreferences.containsKey(key)) {
      return _sharedPreferences.getString(key);
    }
    return '';
  }

  int? _getInt(String key) {
    if (_sharedPreferences.containsKey(key)) {
      return _sharedPreferences.getInt(key);
    }
    return null;
  }

  Future<void> _remove(String key) => _sharedPreferences.remove(key);
}
