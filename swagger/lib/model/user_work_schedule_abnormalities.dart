part of swagger.api;

class UserWorkScheduleAbnormalities {
  /// The underlying value of this enum member.
  int? value;

  UserWorkScheduleAbnormalities._internal(this.value);

  static UserWorkScheduleAbnormalities number1_ = UserWorkScheduleAbnormalities._internal(1);
  static UserWorkScheduleAbnormalities number2_ = UserWorkScheduleAbnormalities._internal(2);
  static UserWorkScheduleAbnormalities number3_ = UserWorkScheduleAbnormalities._internal(3);
  static UserWorkScheduleAbnormalities number4_ = UserWorkScheduleAbnormalities._internal(4);
  static UserWorkScheduleAbnormalities number5_ = UserWorkScheduleAbnormalities._internal(5);
  static UserWorkScheduleAbnormalities number6_ = UserWorkScheduleAbnormalities._internal(6);
  static UserWorkScheduleAbnormalities number7_ = UserWorkScheduleAbnormalities._internal(7);
  static UserWorkScheduleAbnormalities number8_ = UserWorkScheduleAbnormalities._internal(8);
  static UserWorkScheduleAbnormalities number9_ = UserWorkScheduleAbnormalities._internal(9);

  UserWorkScheduleAbnormalities.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
          case 4: value = data; break;
          case 5: value = data; break;
          case 6: value = data; break;
          case 7: value = data; break;
          case 8: value = data; break;
          case 9: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(UserWorkScheduleAbnormalities data) {
    return data.value;
  }
}

