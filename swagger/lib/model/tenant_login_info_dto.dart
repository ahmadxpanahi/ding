part of swagger.api;

class TenantLoginInfoDto {
  
  String? tenancyName = null;
  

  String? name = null;
  

  String? logoId = null;
  

  String? logoFileType = null;
  

  String? customCssId = null;
  

  DateTime? subscriptionEndDateUtc = null;
  

  bool? isInTrialPeriod = null;
  

  SubscriptionPaymentType? subscriptionPaymentType = null;
  

  EditionInfoDto? edition = null;
  

  DateTime? creationTime = null;
  

  int? dayCount = null;
  

  String? subscriptionDateString = null;
  

  String? creationTimeString = null;
  

  int? id = null;
  
  TenantLoginInfoDto();

  @override
  String toString() {
    return 'TenantLoginInfoDto[tenancyName=$tenancyName, name=$name, logoId=$logoId, logoFileType=$logoFileType, customCssId=$customCssId, subscriptionEndDateUtc=$subscriptionEndDateUtc, isInTrialPeriod=$isInTrialPeriod, subscriptionPaymentType=$subscriptionPaymentType, edition=$edition, creationTime=$creationTime, dayCount=$dayCount, subscriptionDateString=$subscriptionDateString, creationTimeString=$creationTimeString, id=$id, ]';
  }

  TenantLoginInfoDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    tenancyName =
        json['tenancyName']
    ;
    name =
        json['name']
    ;
    logoId =
        json['logoId']
    ;
    logoFileType =
        json['logoFileType']
    ;
    customCssId =
        json['customCssId']
    ;
    subscriptionEndDateUtc = json['subscriptionEndDateUtc'] == null ? null : DateTime.parse(json['subscriptionEndDateUtc']);
    isInTrialPeriod =
        json['isInTrialPeriod']
    ;
    subscriptionPaymentType =
      
      
      new SubscriptionPaymentType.fromJson(json['subscriptionPaymentType'])
;
    edition =
      
      
      new EditionInfoDto.fromJson(json['edition'])
;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
    dayCount =
        json['dayCount']
    ;
    subscriptionDateString =
        json['subscriptionDateString']
    ;
    creationTimeString =
        json['creationTimeString']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenancyName': tenancyName,
      'name': name,
      'logoId': logoId,
      'logoFileType': logoFileType,
      'customCssId': customCssId,
      'subscriptionEndDateUtc': subscriptionEndDateUtc == null ? '' : subscriptionEndDateUtc!.toUtc().toIso8601String(),
      'isInTrialPeriod': isInTrialPeriod,
      'subscriptionPaymentType': subscriptionPaymentType,
      'edition': edition,
      'creationTime': creationTime == null ? '' : creationTime!.toUtc().toIso8601String(),
      'dayCount': dayCount,
      'subscriptionDateString': subscriptionDateString,
      'creationTimeString': creationTimeString,
      'id': id
     };
  }

  static List<TenantLoginInfoDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<TenantLoginInfoDto>() : json.map((value) => new TenantLoginInfoDto.fromJson(value)).toList();
  }

  static Map<String, TenantLoginInfoDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantLoginInfoDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantLoginInfoDto.fromJson(value));
    }
    return map;
  }
}

