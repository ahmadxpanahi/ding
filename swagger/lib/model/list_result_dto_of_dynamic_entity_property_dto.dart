part of swagger.api;

class ListResultDtoOfDynamicEntityPropertyDto {
  
  List<DynamicEntityPropertyDto> items = [];
  
  ListResultDtoOfDynamicEntityPropertyDto();

  @override
  String toString() {
    return 'ListResultDtoOfDynamicEntityPropertyDto[items=$items, ]';
  }

  ListResultDtoOfDynamicEntityPropertyDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items =
      DynamicEntityPropertyDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfDynamicEntityPropertyDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfDynamicEntityPropertyDto>() : json.map((value) => new ListResultDtoOfDynamicEntityPropertyDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfDynamicEntityPropertyDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfDynamicEntityPropertyDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfDynamicEntityPropertyDto.fromJson(value));
    }
    return map;
  }
}

