part of swagger.api;

class EditionCreateDto {
  
  int? id = null;
  

  EditionType? editionType = null;
  

  String? displayName = null;
  

  double? price = null;
  

  int? dayCount = null;
  

  int? trialDayCount = null;
  

  int? waitingDayAfterExpire = null;
  

  int? expiringEditionId = null;
  

  bool? isActive = null;
  
  EditionCreateDto();

  @override
  String toString() {
    return 'EditionCreateDto[id=$id, editionType=$editionType, displayName=$displayName, price=$price, dayCount=$dayCount, trialDayCount=$trialDayCount, waitingDayAfterExpire=$waitingDayAfterExpire, expiringEditionId=$expiringEditionId, isActive=$isActive, ]';
  }

  EditionCreateDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    editionType =
      
      
      new EditionType.fromJson(json['editionType'])
;
    displayName =
        json['displayName']
    ;
    price =
        json['price'] == null ? null : json['price'].toDouble()
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
    isActive =
        json['isActive']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'editionType': editionType,
      'displayName': displayName,
      'price': price,
      'dayCount': dayCount,
      'trialDayCount': trialDayCount,
      'waitingDayAfterExpire': waitingDayAfterExpire,
      'expiringEditionId': expiringEditionId,
      'isActive': isActive
     };
  }

  static List<EditionCreateDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new EditionCreateDto.fromJson(value)).toList();
  }

  static Map<String, EditionCreateDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EditionCreateDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EditionCreateDto.fromJson(value));
    }
    return map;
  }
}

