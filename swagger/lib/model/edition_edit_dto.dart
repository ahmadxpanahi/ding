part of swagger.api;

class EditionEditDto {
  
  int? id = null;
  

  EditionType? editionType = null;
  

  String? displayName = null;
  

  double? price = null;
  

  int? dayCount = null;
  

  int? trialDayCount = null;
  

  int? waitingDayAfterExpire = null;
  

  int? expiringEditionId = null;
  

  bool? isActive = null;
  
  EditionEditDto();

  @override
  String toString() {
    return 'EditionEditDto[id=$id, editionType=$editionType, displayName=$displayName, price=$price, dayCount=$dayCount, trialDayCount=$trialDayCount, waitingDayAfterExpire=$waitingDayAfterExpire, expiringEditionId=$expiringEditionId, isActive=$isActive, ]';
  }

  EditionEditDto.fromJson(Map<String, dynamic>? json) {
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

  static List<EditionEditDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new EditionEditDto.fromJson(value)).toList();
  }

  static Map<String, EditionEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EditionEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EditionEditDto.fromJson(value));
    }
    return map;
  }
}

