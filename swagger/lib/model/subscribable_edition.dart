part of swagger.api;

class SubscribableEdition {
  
  int? expiringEditionId = null;
  

  double? price = null;
  

  int? dayCount = null;
  

  EditionType? editionType = null;
  

  int? trialDayCount = null;
  

  int? waitingDayAfterExpire = null;
  

  bool? isActive = null;
  

  String? name = null;
  

  String? displayName = null;
  

  bool? isDeleted = null;
  

  int? deleterUserId = null;
  

  DateTime? deletionTime = null;
  

  DateTime? lastModificationTime = null;
  

  int? lastModifierUserId = null;
  

  DateTime? creationTime = null;
  

  int? creatorUserId = null;
  

  int? id = null;
  
  SubscribableEdition();

  @override
  String toString() {
    return 'SubscribableEdition[expiringEditionId=$expiringEditionId, price=$price, dayCount=$dayCount, editionType=$editionType, trialDayCount=$trialDayCount, waitingDayAfterExpire=$waitingDayAfterExpire, isActive=$isActive, name=$name, displayName=$displayName, isDeleted=$isDeleted, deleterUserId=$deleterUserId, deletionTime=$deletionTime, lastModificationTime=$lastModificationTime, lastModifierUserId=$lastModifierUserId, creationTime=$creationTime, creatorUserId=$creatorUserId, id=$id, ]';
  }

  SubscribableEdition.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    expiringEditionId =
        json['expiringEditionId']
    ;
    price =
        json['price'] == null ? null : json['price'].toDouble()
    ;
    dayCount =
        json['dayCount']
    ;
    editionType =
      
      
      new EditionType.fromJson(json['editionType'])
;
    trialDayCount =
        json['trialDayCount']
    ;
    waitingDayAfterExpire =
        json['waitingDayAfterExpire']
    ;
    isActive =
        json['isActive']
    ;
    name =
        json['name']
    ;
    displayName =
        json['displayName']
    ;
    isDeleted =
        json['isDeleted']
    ;
    deleterUserId =
        json['deleterUserId']
    ;
    deletionTime = json['deletionTime'] == null ? null : DateTime.parse(json['deletionTime']);
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
      'expiringEditionId': expiringEditionId,
      'price': price,
      'dayCount': dayCount,
      'editionType': editionType,
      'trialDayCount': trialDayCount,
      'waitingDayAfterExpire': waitingDayAfterExpire,
      'isActive': isActive,
      'name': name,
      'displayName': displayName,
      'isDeleted': isDeleted,
      'deleterUserId': deleterUserId,
      'deletionTime': deletionTime == null ? '' : deletionTime!.toUtc().toIso8601String(),
      'lastModificationTime': lastModificationTime == null ? '' : lastModificationTime!.toUtc().toIso8601String(),
      'lastModifierUserId': lastModifierUserId,
      'creationTime': creationTime == null ? '' : creationTime!.toUtc().toIso8601String(),
      'creatorUserId': creatorUserId,
      'id': id
     };
  }

  static List<SubscribableEdition> listFromJson(List<dynamic> json) {
    return json == null ? new List<SubscribableEdition>() : json.map((value) => new SubscribableEdition.fromJson(value)).toList();
  }

  static Map<String, SubscribableEdition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SubscribableEdition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SubscribableEdition.fromJson(value));
    }
    return map;
  }
}

