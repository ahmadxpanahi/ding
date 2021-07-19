part of swagger.api;

class DynamicEntityPropertyValueDto {
  
  String? value = null;
  

  String? entityId = null;
  

  int? dynamicEntityPropertyId = null;
  

  int? id = null;
  
  DynamicEntityPropertyValueDto();

  @override
  String toString() {
    return 'DynamicEntityPropertyValueDto[value=$value, entityId=$entityId, dynamicEntityPropertyId=$dynamicEntityPropertyId, id=$id, ]';
  }

  DynamicEntityPropertyValueDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    value =
        json['value']
    ;
    entityId =
        json['entityId']
    ;
    dynamicEntityPropertyId =
        json['dynamicEntityPropertyId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'entityId': entityId,
      'dynamicEntityPropertyId': dynamicEntityPropertyId,
      'id': id
     };
  }

  static List<DynamicEntityPropertyValueDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<DynamicEntityPropertyValueDto>() : json.map((value) => new DynamicEntityPropertyValueDto.fromJson(value)).toList();
  }

  static Map<String, DynamicEntityPropertyValueDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DynamicEntityPropertyValueDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DynamicEntityPropertyValueDto.fromJson(value));
    }
    return map;
  }
}

