part of swagger.api;

class SubscriptionStartType {
  /// The underlying value of this enum member.
  int value;

  SubscriptionStartType._internal(this.value);

  static SubscriptionStartType number1_ = SubscriptionStartType._internal(1);
  static SubscriptionStartType number2_ = SubscriptionStartType._internal(2);
  static SubscriptionStartType number3_ = SubscriptionStartType._internal(3);

  SubscriptionStartType.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(SubscriptionStartType data) {
    return data.value;
  }
}

