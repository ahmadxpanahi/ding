part of swagger.api;

class UserNotificationState {
  /// The underlying value of this enum member.
  int value;

  UserNotificationState._internal(this.value);

  static UserNotificationState number0_ = UserNotificationState._internal(0);
  static UserNotificationState number1_ = UserNotificationState._internal(1);

  UserNotificationState.fromJson(dynamic data) {
    switch (data) {
          case 0: value = data; break;
          case 1: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(UserNotificationState data) {
    return data.value;
  }
}

