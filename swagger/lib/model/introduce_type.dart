part of swagger.api;

class IntroduceType {
  /// The underlying value of this enum member.
  int value;

  IntroduceType._internal(this.value);

  static IntroduceType number1_ = IntroduceType._internal(1);
  static IntroduceType number2_ = IntroduceType._internal(2);
  static IntroduceType number3_ = IntroduceType._internal(3);
  static IntroduceType number4_ = IntroduceType._internal(4);
  static IntroduceType number5_ = IntroduceType._internal(5);

  IntroduceType.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
          case 4: value = data; break;
          case 5: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(IntroduceType data) {
    return data.value;
  }
}

