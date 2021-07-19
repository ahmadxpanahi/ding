part of swagger.api;

class EditionListDto {
  
  EditionType? editionType = null;
  

  String? name = null;
  

  String? displayName = null;
  

  double? price = null;
  

  int? dayCount = null;
  

  int? waitingDayAfterExpire = null;
  

  int? trialDayCount = null;
  

  String? expiringEditionDisplayName = null;
  

  bool? isActive = null;
  

  List<NameValue> featureValues = [];
  

  int? id = null;
  
  EditionListDto();

  @override
  String toString() {
    return 'EditionListDto[editionType=$editionType, name=$name, displayName=$displayName, price=$price, dayCount=$dayCount, waitingDayAfterExpire=$waitingDayAfterExpire, trialDayCount=$trialDayCount, expiringEditionDisplayName=$expiringEditionDisplayName, isActive=$isActive, featureValues=$featureValues, id=$id, ]';
  }

  EditionListDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    editionType =
      
      
      new EditionType.fromJson(json['editionType'])
;
    name =
        json['name']
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
    waitingDayAfterExpire =
        json['waitingDayAfterExpire']
    ;
    trialDayCount =
        json['trialDayCount']
    ;
    expiringEditionDisplayName =
        json['expiringEditionDisplayName']
    ;
    isActive =
        json['isActive']
    ;
    featureValues =
      NameValue.listFromJson(json['featureValues'])
;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'editionType': editionType,
      'name': name,
      'displayName': displayName,
      'price': price,
      'dayCount': dayCount,
      'waitingDayAfterExpire': waitingDayAfterExpire,
      'trialDayCount': trialDayCount,
      'expiringEditionDisplayName': expiringEditionDisplayName,
      'isActive': isActive,
      'featureValues': featureValues,
      'id': id
     };
  }

  static List<EditionListDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<EditionListDto>() : json.map((value) => new EditionListDto.fromJson(value)).toList();
  }

  static Map<String, EditionListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EditionListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EditionListDto.fromJson(value));
    }
    return map;
  }
}

