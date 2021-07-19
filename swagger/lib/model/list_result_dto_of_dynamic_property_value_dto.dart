part of swagger.api;

class ListResultDtoOfDynamicPropertyValueDto {
  
  List<DynamicPropertyValueDto> items = [];
  
  ListResultDtoOfDynamicPropertyValueDto();

  @override
  String toString() {
    return 'ListResultDtoOfDynamicPropertyValueDto[items=$items, ]';
  }

  ListResultDtoOfDynamicPropertyValueDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      DynamicPropertyValueDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfDynamicPropertyValueDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfDynamicPropertyValueDto>() : json.map((value) => new ListResultDtoOfDynamicPropertyValueDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfDynamicPropertyValueDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfDynamicPropertyValueDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfDynamicPropertyValueDto.fromJson(value));
    }
    return map;
  }
}

