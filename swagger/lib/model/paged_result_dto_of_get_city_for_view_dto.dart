part of swagger.api;

class PagedResultDtoOfGetCityForViewDto {
  
  int? totalCount = null;
  

  List<GetCityForViewDto> items = [];
  
  PagedResultDtoOfGetCityForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetCityForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetCityForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetCityForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetCityForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetCityForViewDto>() : json.map((value) => new PagedResultDtoOfGetCityForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetCityForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetCityForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetCityForViewDto.fromJson(value));
    }
    return map;
  }
}

