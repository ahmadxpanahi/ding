part of swagger.api;

class SupportType {
  /// The underlying value of this enum member.
  int value;

  SupportType._internal(this.value);

  static SupportType number1_ = SupportType._internal(1);
  static SupportType number2_ = SupportType._internal(2);
  static SupportType number3_ = SupportType._internal(3);
  static SupportType number4_ = SupportType._internal(4);

  SupportType.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
          case 4: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(SupportType data) {
    return data.value;
  }
}

