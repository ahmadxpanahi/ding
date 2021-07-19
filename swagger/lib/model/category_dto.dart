part of swagger.api;

class CategoryDto {
  
  CategoryType? categoryType = null;
  

  int? parentId = null;
  

  String? code = null;
  

  String? displayName = null;
  

  int? memberCount = null;
  

  int? roleCount = null;
  

  DateTime? lastModificationTime = null;
  

  int? lastModifierUserId = null;
  

  DateTime? creationTime = null;
  

  int? creatorUserId = null;
  

  int? id = null;
  
  CategoryDto();

  @override
  String toString() {
    return 'CategoryDto[categoryType=$categoryType, parentId=$parentId, code=$code, displayName=$displayName, memberCount=$memberCount, roleCount=$roleCount, lastModificationTime=$lastModificationTime, lastModifierUserId=$lastModifierUserId, creationTime=$creationTime, creatorUserId=$creatorUserId, id=$id, ]';
  }

  CategoryDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    categoryType =
      
      
      new CategoryType.fromJson(json['categoryType'])
;
    parentId =
        json['parentId']
    ;
    code =
        json['code']
    ;
    displayName =
        json['displayName']
    ;
    memberCount =
        json['memberCount']
    ;
    roleCount =
        json['roleCount']
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
      'categoryType': categoryType,
      'parentId': parentId,
      'code': code,
      'displayName': displayName,
      'memberCount': memberCount,
      'roleCount': roleCount,
      'lastModificationTime': lastModificationTime == null ? '' : lastModificationTime!.toUtc().toIso8601String(),
      'lastModifierUserId': lastModifierUserId,
      'creationTime': creationTime == null ? '' : creationTime!.toUtc().toIso8601String(),
      'creatorUserId': creatorUserId,
      'id': id
     };
  }

  static List<CategoryDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new CategoryDto.fromJson(value)).toList();
  }

  static Map<String, CategoryDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CategoryDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CategoryDto.fromJson(value));
    }
    return map;
  }
}

