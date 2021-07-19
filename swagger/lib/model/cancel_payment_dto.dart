part of swagger.api;

class CancelPaymentDto {
  
  String? paymentId = null;
  

  SubscriptionPaymentGatewayType? gateway = null;
  
  CancelPaymentDto();

  @override
  String toString() {
    return 'CancelPaymentDto[paymentId=$paymentId, gateway=$gateway, ]';
  }

  CancelPaymentDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    paymentId =
        json['paymentId']
    ;
    gateway =
      
      
      new SubscriptionPaymentGatewayType.fromJson(json['gateway'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'paymentId': paymentId,
      'gateway': gateway
     };
  }

  static List<CancelPaymentDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CancelPaymentDto>() : json.map((value) => new CancelPaymentDto.fromJson(value)).toList();
  }

  static Map<String, CancelPaymentDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CancelPaymentDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CancelPaymentDto.fromJson(value));
    }
    return map;
  }
}

