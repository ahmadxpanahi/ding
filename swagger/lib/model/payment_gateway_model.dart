part of swagger.api;

class PaymentGatewayModel {
  
  SubscriptionPaymentGatewayType? gatewayType = null;
  

  bool? supportsRecurringPayments = null;
  
  PaymentGatewayModel();

  @override
  String toString() {
    return 'PaymentGatewayModel[gatewayType=$gatewayType, supportsRecurringPayments=$supportsRecurringPayments, ]';
  }

  PaymentGatewayModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    gatewayType =
      
      
      new SubscriptionPaymentGatewayType.fromJson(json['gatewayType'])
;
    supportsRecurringPayments =
        json['supportsRecurringPayments']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'gatewayType': gatewayType,
      'supportsRecurringPayments': supportsRecurringPayments
     };
  }

  static List<PaymentGatewayModel> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new PaymentGatewayModel.fromJson(value)).toList();
  }

  static Map<String, PaymentGatewayModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PaymentGatewayModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PaymentGatewayModel.fromJson(value));
    }
    return map;
  }
}

