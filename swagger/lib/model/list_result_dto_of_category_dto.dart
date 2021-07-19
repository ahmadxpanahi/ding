part of swagger.api;

class ListResultDtoOfCategoryDto {
  
  List<CategoryDto> items = [];
  
  ListResultDtoOfCategoryDto();

  @override
  String toString() {
    return 'ListResultDtoOfCategoryDto[items=$items, ]';
  }

  ListResultDtoOfCategoryDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      CategoryDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfCategoryDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfCategoryDto>() : json.map((value) => new ListResultDtoOfCategoryDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfCategoryDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfCategoryDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfCategoryDto.fromJson(value));
    }
    return map;
  }
}

