part of swagger.api;

class DynamicPropertyDto {
  
  String? propertyName = null;
  

  String? displayName = null;
  

  String? inputType = null;
  

  String? permission = null;
  

  int? tenantId = null;
  

  int? id = null;
  
  DynamicPropertyDto();

  @override
  String toString() {
    return 'DynamicPropertyDto[propertyName=$propertyName, displayName=$displayName, inputType=$inputType, permission=$permission, tenantId=$tenantId, id=$id, ]';
  }

  DynamicPropertyDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    propertyName =
        json['propertyName']
    ;
    displayName =
        json['displayName']
    ;
    inputType =
        json['inputType']
    ;
    permission =
        json['permission']
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
      'propertyName': propertyName,
      'displayName': displayName,
      'inputType': inputType,
      'permission': permission,
      'tenantId': tenantId,
      'id': id
     };
  }

  static List<DynamicPropertyDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<DynamicPropertyDto>() : json.map((value) => new DynamicPropertyDto.fromJson(value)).toList();
  }

  static Map<String, DynamicPropertyDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DynamicPropertyDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DynamicPropertyDto.fromJson(value));
    }
    return map;
  }
}

