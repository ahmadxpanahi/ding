part of swagger.api;

class ApplicationLanguageListDto {
  
  int tenantId = null;
  

  String name = null;
  

  String displayName = null;
  

  String icon = null;
  

  bool isDisabled = null;
  

  bool isDeleted = null;
  

  int deleterUserId = null;
  

  DateTime deletionTime = null;
  

  DateTime lastModificationTime = null;
  

  int lastModifierUserId = null;
  

  DateTime creationTime = null;
  

  int creatorUserId = null;
  

  int id = null;
  
  ApplicationLanguageListDto();

  @override
  String toString() {
    return 'ApplicationLanguageListDto[tenantId=$tenantId, name=$name, displayName=$displayName, icon=$icon, isDisabled=$isDisabled, isDeleted=$isDeleted, deleterUserId=$deleterUserId, deletionTime=$deletionTime, lastModificationTime=$lastModificationTime, lastModifierUserId=$lastModifierUserId, creationTime=$creationTime, creatorUserId=$creatorUserId, id=$id, ]';
  }

  ApplicationLanguageListDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tenantId =
        json['tenantId']
    ;
    name =
        json['name']
    ;
    displayName =
        json['displayName']
    ;
    icon =
        json['icon']
    ;
    isDisabled =
        json['isDisabled']
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
      'tenantId': tenantId,
      'name': name,
      'displayName': displayName,
      'icon': icon,
      'isDisabled': isDisabled,
      'isDeleted': isDeleted,
      'deleterUserId': deleterUserId,
      'deletionTime': deletionTime == null ? '' : deletionTime.toUtc().toIso8601String(),
      'lastModificationTime': lastModificationTime == null ? '' : lastModificationTime.toUtc().toIso8601String(),
      'lastModifierUserId': lastModifierUserId,
      'creationTime': creationTime == null ? '' : creationTime.toUtc().toIso8601String(),
      'creatorUserId': creatorUserId,
      'id': id
     };
  }

  static List<ApplicationLanguageListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApplicationLanguageListDto>() : json.map((value) => new ApplicationLanguageListDto.fromJson(value)).toList();
  }

  static Map<String, ApplicationLanguageListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApplicationLanguageListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApplicationLanguageListDto.fromJson(value));
    }
    return map;
  }
}

