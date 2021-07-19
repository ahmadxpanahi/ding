part of swagger.api;

class SubscriptionPaymentType {
  /// The underlying value of this enum member.
  int value;

  SubscriptionPaymentType._internal(this.value);

  static SubscriptionPaymentType number0_ = SubscriptionPaymentType._internal(0);
  static SubscriptionPaymentType number1_ = SubscriptionPaymentType._internal(1);
  static SubscriptionPaymentType number2_ = SubscriptionPaymentType._internal(2);

  SubscriptionPaymentType.fromJson(dynamic data) {
    switch (data) {
          case 0: value = data; break;
          case 1: value = data; break;
          case 2: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(SubscriptionPaymentType data) {
    return data.value;
  }
}

