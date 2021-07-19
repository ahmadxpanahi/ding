part of swagger.api;

class ListResultDtoOfGetCityForViewDto {
  
  List<GetCityForViewDto> items = [];
  
  ListResultDtoOfGetCityForViewDto();

  @override
  String toString() {
    return 'ListResultDtoOfGetCityForViewDto[items=$items, ]';
  }

  ListResultDtoOfGetCityForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      GetCityForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfGetCityForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfGetCityForViewDto>() : json.map((value) => new ListResultDtoOfGetCityForViewDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfGetCityForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfGetCityForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfGetCityForViewDto.fromJson(value));
    }
    return map;
  }
}

