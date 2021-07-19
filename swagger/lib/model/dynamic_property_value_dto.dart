part of swagger.api;

class DynamicPropertyValueDto {
  
  String value = null;
  

  int tenantId = null;
  

  int dynamicPropertyId = null;
  

  int id = null;
  
  DynamicPropertyValueDto();

  @override
  String toString() {
    return 'DynamicPropertyValueDto[value=$value, tenantId=$tenantId, dynamicPropertyId=$dynamicPropertyId, id=$id, ]';
  }

  DynamicPropertyValueDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value =
        json['value']
    ;
    tenantId =
        json['tenantId']
    ;
    dynamicPropertyId =
        json['dynamicPropertyId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'tenantId': tenantId,
      'dynamicPropertyId': dynamicPropertyId,
      'id': id
     };
  }

  static List<DynamicPropertyValueDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<DynamicPropertyValueDto>() : json.map((value) => new DynamicPropertyValueDto.fromJson(value)).toList();
  }

  static Map<String, DynamicPropertyValueDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DynamicPropertyValueDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DynamicPropertyValueDto.fromJson(value));
    }
    return map;
  }
}

