part of swagger.api;

class DynamicEntityPropertyDto {
  
  String? entityFullName = null;
  

  String? dynamicPropertyName = null;
  

  int? dynamicPropertyId = null;
  

  int? tenantId = null;
  

  int? id = null;
  
  DynamicEntityPropertyDto();

  @override
  String toString() {
    return 'DynamicEntityPropertyDto[entityFullName=$entityFullName, dynamicPropertyName=$dynamicPropertyName, dynamicPropertyId=$dynamicPropertyId, tenantId=$tenantId, id=$id, ]';
  }

  DynamicEntityPropertyDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    entityFullName =
        json['entityFullName']
    ;
    dynamicPropertyName =
        json['dynamicPropertyName']
    ;
    dynamicPropertyId =
        json['dynamicPropertyId']
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
      'entityFullName': entityFullName,
      'dynamicPropertyName': dynamicPropertyName,
      'dynamicPropertyId': dynamicPropertyId,
      'tenantId': tenantId,
      'id': id
     };
  }

  static List<DynamicEntityPropertyDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new DynamicEntityPropertyDto.fromJson(value)).toList();
  }

  static Map<String, DynamicEntityPropertyDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DynamicEntityPropertyDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DynamicEntityPropertyDto.fromJson(value));
    }
    return map;
  }
}

