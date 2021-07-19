part of swagger.api;

class ListResultDtoOfDynamicPropertyDto {
  
  List<DynamicPropertyDto> items = [];
  
  ListResultDtoOfDynamicPropertyDto();

  @override
  String toString() {
    return 'ListResultDtoOfDynamicPropertyDto[items=$items, ]';
  }

  ListResultDtoOfDynamicPropertyDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items =
      DynamicPropertyDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfDynamicPropertyDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfDynamicPropertyDto>() : json.map((value) => new ListResultDtoOfDynamicPropertyDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfDynamicPropertyDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfDynamicPropertyDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfDynamicPropertyDto.fromJson(value));
    }
    return map;
  }
}

