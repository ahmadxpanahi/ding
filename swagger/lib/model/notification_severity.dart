part of swagger.api;

class NotificationSeverity {
  /// The underlying value of this enum member.
  int value;

  NotificationSeverity._internal(this.value);

  static NotificationSeverity number0_ = NotificationSeverity._internal(0);
  static NotificationSeverity number1_ = NotificationSeverity._internal(1);
  static NotificationSeverity number2_ = NotificationSeverity._internal(2);
  static NotificationSeverity number3_ = NotificationSeverity._internal(3);
  static NotificationSeverity number4_ = NotificationSeverity._internal(4);

  NotificationSeverity.fromJson(dynamic data) {
    switch (data) {
          case 0: value = data; break;
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
          case 4: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(NotificationSeverity data) {
    return data.value;
  }
}

