part of swagger.api;

class SubscriptionPaymentStatus {
  /// The underlying value of this enum member.
  int? value;

  SubscriptionPaymentStatus._internal(this.value);

  static SubscriptionPaymentStatus number0_ = SubscriptionPaymentStatus._internal(0);
  static SubscriptionPaymentStatus number1_ = SubscriptionPaymentStatus._internal(1);
  static SubscriptionPaymentStatus number2_ = SubscriptionPaymentStatus._internal(2);
  static SubscriptionPaymentStatus number3_ = SubscriptionPaymentStatus._internal(3);
  static SubscriptionPaymentStatus number4_ = SubscriptionPaymentStatus._internal(4);
  static SubscriptionPaymentStatus number5_ = SubscriptionPaymentStatus._internal(5);

  SubscriptionPaymentStatus.fromJson(dynamic data) {
    switch (data) {
          case 0: value = data; break;
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
          case 4: value = data; break;
          case 5: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(SubscriptionPaymentStatus data) {
    return data.value;
  }
}

