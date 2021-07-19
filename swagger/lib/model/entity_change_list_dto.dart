part of swagger.api;

class EntityChangeListDto {
  
  int? userId = null;
  

  String? userName = null;
  

  DateTime? changeTime = null;
  

  String? entityTypeFullName = null;
  

  EntityChangeType? changeType = null;
  

  String? changeTypeName = null;
  

  int? entityChangeSetId = null;
  

  int? id = null;
  
  EntityChangeListDto();

  @override
  String toString() {
    return 'EntityChangeListDto[userId=$userId, userName=$userName, changeTime=$changeTime, entityTypeFullName=$entityTypeFullName, changeType=$changeType, changeTypeName=$changeTypeName, entityChangeSetId=$entityChangeSetId, id=$id, ]';
  }

  EntityChangeListDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userId =
        json['userId']
    ;
    userName =
        json['userName']
    ;
    changeTime = json['changeTime'] == null ? null : DateTime.parse(json['changeTime']);
    entityTypeFullName =
        json['entityTypeFullName']
    ;
    changeType =
      
      
      new EntityChangeType.fromJson(json['changeType'])
;
    changeTypeName =
        json['changeTypeName']
    ;
    entityChangeSetId =
        json['entityChangeSetId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'userName': userName,
      'changeTime': changeTime == null ? '' : changeTime!.toUtc().toIso8601String(),
      'entityTypeFullName': entityTypeFullName,
      'changeType': changeType,
      'changeTypeName': changeTypeName,
      'entityChangeSetId': entityChangeSetId,
      'id': id
     };
  }

  static List<EntityChangeListDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<EntityChangeListDto>() : json.map((value) => new EntityChangeListDto.fromJson(value)).toList();
  }

  static Map<String, EntityChangeListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EntityChangeListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EntityChangeListDto.fromJson(value));
    }
    return map;
  }
}

