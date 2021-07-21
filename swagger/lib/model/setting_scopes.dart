part of swagger.api;

class SettingScopes {
  /// The underlying value of this enum member.
  int? value;

  SettingScopes._internal(this.value);

  static SettingScopes number1_ = SettingScopes._internal(1);
  static SettingScopes number2_ = SettingScopes._internal(2);
  static SettingScopes number4_ = SettingScopes._internal(4);
  static SettingScopes number7_ = SettingScopes._internal(7);

  SettingScopes.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 4: value = data; break;
          case 7: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(SettingScopes data) {
    return data.value;
  }
}

