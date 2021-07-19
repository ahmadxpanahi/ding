part of swagger.api;

class SubscriptionPaymentListDto {
  
  String gateway = null;
  

  double amount = null;
  

  int editionId = null;
  

  int dayCount = null;
  

  String paymentPeriodType = null;
  

  String externalPaymentId = null;
  

  String payerId = null;
  

  String status = null;
  

  String editionDisplayName = null;
  

  int tenantId = null;
  

  String invoiceNo = null;
  

  DateTime lastModificationTime = null;
  

  int lastModifierUserId = null;
  

  DateTime creationTime = null;
  

  int creatorUserId = null;
  

  int id = null;
  
  SubscriptionPaymentListDto();

  @override
  String toString() {
    return 'SubscriptionPaymentListDto[gateway=$gateway, amount=$amount, editionId=$editionId, dayCount=$dayCount, paymentPeriodType=$paymentPeriodType, externalPaymentId=$externalPaymentId, payerId=$payerId, status=$status, editionDisplayName=$editionDisplayName, tenantId=$tenantId, invoiceNo=$invoiceNo, lastModificationTime=$lastModificationTime, lastModifierUserId=$lastModifierUserId, creationTime=$creationTime, creatorUserId=$creatorUserId, id=$id, ]';
  }

  SubscriptionPaymentListDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    gateway =
        json['gateway']
    ;
    amount =
        json['amount'] == null ? null : json['amount'].toDouble()
    ;
    editionId =
        json['editionId']
    ;
    dayCount =
        json['dayCount']
    ;
    paymentPeriodType =
        json['paymentPeriodType']
    ;
    externalPaymentId =
        json['externalPaymentId']
    ;
    payerId =
        json['payerId']
    ;
    status =
        json['status']
    ;
    editionDisplayName =
        json['editionDisplayName']
    ;
    tenantId =
        json['tenantId']
    ;
    invoiceNo =
        json['invoiceNo']
    ;
    lastModificationTime = json['lastModificationTime'] == null ? null : DateTime.parse(json['lastModificationTime']);
    lastModifierUserId =
        json['lastModifierUserId']
    ;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
    creatorUserId =
        json['creatorUserId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'gateway': gateway,
      'amount': amount,
      'editionId': editionId,
      'dayCount': dayCount,
      'paymentPeriodType': paymentPeriodType,
      'externalPaymentId': externalPaymentId,
      'payerId': payerId,
      'status': status,
      'editionDisplayName': editionDisplayName,
      'tenantId': tenantId,
      'invoiceNo': invoiceNo,
      'lastModificationTime': lastModificationTime == null ? '' : lastModificationTime.toUtc().toIso8601String(),
      'lastModifierUserId': lastModifierUserId,
      'creationTime': creationTime == null ? '' : creationTime.toUtc().toIso8601String(),
      'creatorUserId': creatorUserId,
      'id': id
     };
  }

  static List<SubscriptionPaymentListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<SubscriptionPaymentListDto>() : json.map((value) => new SubscriptionPaymentListDto.fromJson(value)).toList();
  }

  static Map<String, SubscriptionPaymentListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SubscriptionPaymentListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SubscriptionPaymentListDto.fromJson(value));
    }
    return map;
  }
}

