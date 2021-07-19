part of swagger.api;

class EditionDeviceDto {
  
  int? editionId = null;
  

  int? deviceId = null;
  

  int? purchasingResourceId = null;
  

  EditionType? editionType = null;
  

  String? editionName = null;
  

  double? editionPrice = null;
  

  int? dayCount = null;
  

  int? trialDayCount = null;
  

  int? waitingDayAfterExpire = null;
  

  int? expiringEditionId = null;
  

  int? maxUserCount = null;
  

  int? maxLocationCount = null;
  

  int? id = null;
  
  EditionDeviceDto();

  @override
  String toString() {
    return 'EditionDeviceDto[editionId=$editionId, deviceId=$deviceId, purchasingResourceId=$purchasingResourceId, editionType=$editionType, editionName=$editionName, editionPrice=$editionPrice, dayCount=$dayCount, trialDayCount=$trialDayCount, waitingDayAfterExpire=$waitingDayAfterExpire, expiringEditionId=$expiringEditionId, maxUserCount=$maxUserCount, maxLocationCount=$maxLocationCount, id=$id, ]';
  }

  EditionDeviceDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    editionId =
        json['editionId']
    ;
    deviceId =
        json['deviceId']
    ;
    purchasingResourceId =
        json['purchasingResourceId']
    ;
    editionType =
      
      
      new EditionType.fromJson(json['editionType'])
;
    editionName =
        json['editionName']
    ;
    editionPrice =
        json['editionPrice'] == null ? null : json['editionPrice'].toDouble()
    ;
    dayCount =
        json['dayCount']
    ;
    trialDayCount =
        json['trialDayCount']
    ;
    waitingDayAfterExpire =
        json['waitingDayAfterExpire']
    ;
    expiringEditionId =
        json['expiringEditionId']
    ;
    maxUserCount =
        json['maxUserCount']
    ;
    maxLocationCount =
        json['maxLocationCount']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'editionId': editionId,
      'deviceId': deviceId,
      'purchasingResourceId': purchasingResourceId,
      'editionType': editionType,
      'editionName': editionName,
      'editionPrice': editionPrice,
      'dayCount': dayCount,
      'trialDayCount': trialDayCount,
      'waitingDayAfterExpire': waitingDayAfterExpire,
      'expiringEditionId': expiringEditionId,
      'maxUserCount': maxUserCount,
      'maxLocationCount': maxLocationCount,
      'id': id
     };
  }

  static List<EditionDeviceDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new EditionDeviceDto.fromJson(value)).toList();
  }

  static Map<String, EditionDeviceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EditionDeviceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EditionDeviceDto.fromJson(value));
    }
    return map;
  }
}

