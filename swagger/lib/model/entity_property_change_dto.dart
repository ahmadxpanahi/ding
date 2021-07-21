part of swagger.api;

class EntityPropertyChangeDto {
  
  int? entityChangeId = null;
  

  String? newValue = null;
  

  String? originalValue = null;
  

  String? propertyName = null;
  

  String? propertyTypeFullName = null;
  

  int? tenantId = null;
  

  int? id = null;
  
  EntityPropertyChangeDto();

  @override
  String toString() {
    return 'EntityPropertyChangeDto[entityChangeId=$entityChangeId, newValue=$newValue, originalValue=$originalValue, propertyName=$propertyName, propertyTypeFullName=$propertyTypeFullName, tenantId=$tenantId, id=$id, ]';
  }

  EntityPropertyChangeDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    entityChangeId =
        json['entityChangeId']
    ;
    newValue =
        json['newValue']
    ;
    originalValue =
        json['originalValue']
    ;
    propertyName =
        json['propertyName']
    ;
    propertyTypeFullName =
        json['propertyTypeFullName']
    ;
    tenantId =
        json['tenantId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'entityChangeId': entityChangeId,
      'newValue': newValue,
      'originalValue': originalValue,
      'propertyName': propertyName,
      'propertyTypeFullName': propertyTypeFullName,
      'tenantId': tenantId,
      'id': id
     };
  }

  static List<EntityPropertyChangeDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new EntityPropertyChangeDto.fromJson(value)).toList();
  }

  static Map<String, EntityPropertyChangeDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EntityPropertyChangeDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EntityPropertyChangeDto.fromJson(value));
    }
    return map;
  }
}

