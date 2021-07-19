part of swagger.api;

class StripePaymentResultOutput {
  
  bool? paymentDone = null;
  
  StripePaymentResultOutput();

  @override
  String toString() {
    return 'StripePaymentResultOutput[paymentDone=$paymentDone, ]';
  }

  StripePaymentResultOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    paymentDone =
        json['paymentDone']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'paymentDone': paymentDone
     };
  }

  static List<StripePaymentResultOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new StripePaymentResultOutput.fromJson(value)).toList();
  }

  static Map<String, StripePaymentResultOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StripePaymentResultOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StripePaymentResultOutput.fromJson(value));
    }
    return map;
  }
}

