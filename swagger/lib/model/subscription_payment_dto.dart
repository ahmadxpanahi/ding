part of swagger.api;

class SubscriptionPaymentDto {
  
  String? description = null;
  

  SubscriptionPaymentGatewayType? gateway = null;
  

  double? amount = null;
  

  int? editionId = null;
  

  int? tenantId = null;
  

  int? dayCount = null;
  

  String? paymentId = null;
  

  String? payerId = null;
  

  String? editionDisplayName = null;
  

  int? invoiceNo = null;
  

  SubscriptionPaymentStatus? status = null;
  

  bool? isRecurring = null;
  

  String? externalPaymentId = null;
  

  String? successUrl = null;
  

  String? errorUrl = null;
  

  EditionType? editionType = null;
  

  int? id = null;
  
  SubscriptionPaymentDto();

  @override
  String toString() {
    return 'SubscriptionPaymentDto[description=$description, gateway=$gateway, amount=$amount, editionId=$editionId, tenantId=$tenantId, dayCount=$dayCount, paymentId=$paymentId, payerId=$payerId, editionDisplayName=$editionDisplayName, invoiceNo=$invoiceNo, status=$status, isRecurring=$isRecurring, externalPaymentId=$externalPaymentId, successUrl=$successUrl, errorUrl=$errorUrl, editionType=$editionType, id=$id, ]';
  }

  SubscriptionPaymentDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    description =
        json['description']
    ;
    gateway =
      
      
      new SubscriptionPaymentGatewayType.fromJson(json['gateway'])
;
    amount =
        json['amount'] == null ? null : json['amount'].toDouble()
    ;
    editionId =
        json['editionId']
    ;
    tenantId =
        json['tenantId']
    ;
    dayCount =
        json['dayCount']
    ;
    paymentId =
        json['paymentId']
    ;
    payerId =
        json['payerId']
    ;
    editionDisplayName =
        json['editionDisplayName']
    ;
    invoiceNo =
        json['invoiceNo']
    ;
    status =
      
      
      new SubscriptionPaymentStatus.fromJson(json['status'])
;
    isRecurring =
        json['isRecurring']
    ;
    externalPaymentId =
        json['externalPaymentId']
    ;
    successUrl =
        json['successUrl']
    ;
    errorUrl =
        json['errorUrl']
    ;
    editionType =
      
      
      new EditionType.fromJson(json['editionType'])
;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'gateway': gateway,
      'amount': amount,
      'editionId': editionId,
      'tenantId': tenantId,
      'dayCount': dayCount,
      'paymentId': paymentId,
      'payerId': payerId,
      'editionDisplayName': editionDisplayName,
      'invoiceNo': invoiceNo,
      'status': status,
      'isRecurring': isRecurring,
      'externalPaymentId': externalPaymentId,
      'successUrl': successUrl,
      'errorUrl': errorUrl,
      'editionType': editionType,
      'id': id
     };
  }

  static List<SubscriptionPaymentDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new SubscriptionPaymentDto.fromJson(value)).toList();
  }

  static Map<String, SubscriptionPaymentDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SubscriptionPaymentDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SubscriptionPaymentDto.fromJson(value));
    }
    return map;
  }
}

