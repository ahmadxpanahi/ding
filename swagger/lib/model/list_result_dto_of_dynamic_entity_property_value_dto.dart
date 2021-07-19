part of swagger.api;

class ListResultDtoOfDynamicEntityPropertyValueDto {
  
  List<DynamicEntityPropertyValueDto> items = [];
  
  ListResultDtoOfDynamicEntityPropertyValueDto();

  @override
  String toString() {
    return 'ListResultDtoOfDynamicEntityPropertyValueDto[items=$items, ]';
  }

  ListResultDtoOfDynamicEntityPropertyValueDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      DynamicEntityPropertyValueDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfDynamicEntityPropertyValueDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfDynamicEntityPropertyValueDto>() : json.map((value) => new ListResultDtoOfDynamicEntityPropertyValueDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfDynamicEntityPropertyValueDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfDynamicEntityPropertyValueDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfDynamicEntityPropertyValueDto.fromJson(value));
    }
    return map;
  }
}

