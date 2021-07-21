part of swagger.api;

class WeekDays {
  /// The underlying value of this enum member.
  int? value;

  WeekDays._internal(this.value);

  static WeekDays number0_ = WeekDays._internal(0);
  static WeekDays number1_ = WeekDays._internal(1);
  static WeekDays number2_ = WeekDays._internal(2);
  static WeekDays number3_ = WeekDays._internal(3);
  static WeekDays number4_ = WeekDays._internal(4);
  static WeekDays number5_ = WeekDays._internal(5);
  static WeekDays number6_ = WeekDays._internal(6);

  WeekDays.fromJson(dynamic data) {
    switch (data) {
          case 0: value = data; break;
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
          case 4: value = data; break;
          case 5: value = data; break;
          case 6: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(WeekDays data) {
    return data.value;
  }
}

