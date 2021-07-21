part of swagger.api;

class StripeCreatePaymentSessionInput {
  
  int? paymentId = null;
  

  String? successUrl = null;
  

  String? cancelUrl = null;
  
  StripeCreatePaymentSessionInput();

  @override
  String toString() {
    return 'StripeCreatePaymentSessionInput[paymentId=$paymentId, successUrl=$successUrl, cancelUrl=$cancelUrl, ]';
  }

  StripeCreatePaymentSessionInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    paymentId =
        json['paymentId']
    ;
    successUrl =
        json['successUrl']
    ;
    cancelUrl =
        json['cancelUrl']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'paymentId': paymentId,
      'successUrl': successUrl,
      'cancelUrl': cancelUrl
     };
  }

  static List<StripeCreatePaymentSessionInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new StripeCreatePaymentSessionInput.fromJson(value)).toList();
  }

  static Map<String, StripeCreatePaymentSessionInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StripeCreatePaymentSessionInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StripeCreatePaymentSessionInput.fromJson(value));
    }
    return map;
  }
}

