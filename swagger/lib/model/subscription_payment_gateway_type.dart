part of swagger.api;

class SubscriptionPaymentGatewayType {
  /// The underlying value of this enum member.
  int? value;

  SubscriptionPaymentGatewayType._internal(this.value);

  static SubscriptionPaymentGatewayType number1_ = SubscriptionPaymentGatewayType._internal(1);
  static SubscriptionPaymentGatewayType number2_ = SubscriptionPaymentGatewayType._internal(2);
  static SubscriptionPaymentGatewayType number3_ = SubscriptionPaymentGatewayType._internal(3);
  static SubscriptionPaymentGatewayType number4_ = SubscriptionPaymentGatewayType._internal(4);

  SubscriptionPaymentGatewayType.fromJson(dynamic data) {
    switch (data) {
          case 1: value = data; break;
          case 2: value = data; break;
          case 3: value = data; break;
          case 4: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(SubscriptionPaymentGatewayType data) {
    return data.value;
  }
}

