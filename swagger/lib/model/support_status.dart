part of swagger.api;

class SupportStatus {
  /// The underlying value of this enum member.
  int value;

  SupportStatus._internal(this.value);

  static SupportStatus number1_ = SupportStatus._internal(1);
  static SupportStatus number2_ = SupportStatus._internal(2);
  static SupportStatus number3_ = SupportStatus._internal(3);

  SupportStatus.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(SupportStatus data) {
    return data.value;
  }
}

