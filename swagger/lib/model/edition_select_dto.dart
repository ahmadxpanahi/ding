part of swagger.api;

class EditionSelectDto {
  
  int id = null;
  

  EditionType editionType = null;
  

  String name = null;
  

  String displayName = null;
  

  int expiringEditionId = null;
  

  double price = null;
  

  int dayCount = null;
  

  int trialDayCount = null;
  

  int waitingDayAfterExpire = null;
  

  bool isFree = null;
  

  bool isActive = null;
  

  AdditionalData additionalData = null;
  
  EditionSelectDto();

  @override
  String toString() {
    return 'EditionSelectDto[id=$id, editionType=$editionType, name=$name, displayName=$displayName, expiringEditionId=$expiringEditionId, price=$price, dayCount=$dayCount, trialDayCount=$trialDayCount, waitingDayAfterExpire=$waitingDayAfterExpire, isFree=$isFree, isActive=$isActive, additionalData=$additionalData, ]';
  }

  EditionSelectDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    editionType =
      
      
      new EditionType.fromJson(json['editionType'])
;
    name =
        json['name']
    ;
    displayName =
        json['displayName']
    ;
    expiringEditionId =
        json['expiringEditionId']
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
    isFree =
        json['isFree']
    ;
    isActive =
        json['isActive']
    ;
    additionalData =
      
      
      new AdditionalData.fromJson(json['additionalData'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'editionType': editionType,
      'name': name,
      'displayName': displayName,
      'expiringEditionId': expiringEditionId,
      'price': price,
      'dayCount': dayCount,
      'trialDayCount': trialDayCount,
      'waitingDayAfterExpire': waitingDayAfterExpire,
      'isFree': isFree,
      'isActive': isActive,
      'additionalData': additionalData
     };
  }

  static List<EditionSelectDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<EditionSelectDto>() : json.map((value) => new EditionSelectDto.fromJson(value)).toList();
  }

  static Map<String, EditionSelectDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EditionSelectDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EditionSelectDto.fromJson(value));
    }
    return map;
  }
}

