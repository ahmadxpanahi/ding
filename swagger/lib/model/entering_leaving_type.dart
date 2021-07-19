part of swagger.api;

class EnteringLeavingType {
  /// The underlying value of this enum member.
  int value;

  EnteringLeavingType._internal(this.value);

  static EnteringLeavingType number1_ = EnteringLeavingType._internal(1);
  static EnteringLeavingType number2_ = EnteringLeavingType._internal(2);

  EnteringLeavingType.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(EnteringLeavingType data) {
    return data.value;
  }
}

