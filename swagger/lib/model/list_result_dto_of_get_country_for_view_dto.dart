part of swagger.api;

class ListResultDtoOfGetCountryForViewDto {
  
  List<GetCountryForViewDto> items = [];
  
  ListResultDtoOfGetCountryForViewDto();

  @override
  String toString() {
    return 'ListResultDtoOfGetCountryForViewDto[items=$items, ]';
  }

  ListResultDtoOfGetCountryForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      GetCountryForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfGetCountryForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new ListResultDtoOfGetCountryForViewDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfGetCountryForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfGetCountryForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfGetCountryForViewDto.fromJson(value));
    }
    return map;
  }
}

