part of swagger.api;

class UserClockInOutType {
  /// The underlying value of this enum member.
  int value;

  UserClockInOutType._internal(this.value);

  static UserClockInOutType number1_ = UserClockInOutType._internal(1);
  static UserClockInOutType number2_ = UserClockInOutType._internal(2);
  static UserClockInOutType number3_ = UserClockInOutType._internal(3);
  static UserClockInOutType number4_ = UserClockInOutType._internal(4);

  UserClockInOutType.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
          case 4: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(UserClockInOutType data) {
    return data.value;
  }
}

