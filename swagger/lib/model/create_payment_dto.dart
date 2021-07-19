part of swagger.api;

class CreatePaymentDto {
  
  int? editionId = null;
  

  int? deviceId = null;
  

  EditionType? editionType = null;
  

  SubscriptionPaymentGatewayType? subscriptionPaymentGatewayType = null;
  

  String? successUrl = null;
  

  String? errorUrl = null;
  
  CreatePaymentDto();

  @override
  String toString() {
    return 'CreatePaymentDto[editionId=$editionId, deviceId=$deviceId, editionType=$editionType, subscriptionPaymentGatewayType=$subscriptionPaymentGatewayType, successUrl=$successUrl, errorUrl=$errorUrl, ]';
  }

  CreatePaymentDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    editionId =
        json['editionId']
    ;
    deviceId =
        json['deviceId']
    ;
    editionType =
      
      
      new EditionType.fromJson(json['editionType'])
;
    subscriptionPaymentGatewayType =
      
      
      new SubscriptionPaymentGatewayType.fromJson(json['subscriptionPaymentGatewayType'])
;
    successUrl =
        json['successUrl']
    ;
    errorUrl =
        json['errorUrl']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'editionId': editionId,
      'deviceId': deviceId,
      'editionType': editionType,
      'subscriptionPaymentGatewayType': subscriptionPaymentGatewayType,
      'successUrl': successUrl,
      'errorUrl': errorUrl
     };
  }

  static List<CreatePaymentDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreatePaymentDto>() : json.map((value) => new CreatePaymentDto.fromJson(value)).toList();
  }

  static Map<String, CreatePaymentDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreatePaymentDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreatePaymentDto.fromJson(value));
    }
    return map;
  }
}

