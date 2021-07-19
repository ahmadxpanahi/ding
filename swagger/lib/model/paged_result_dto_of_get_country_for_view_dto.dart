part of swagger.api;

class PagedResultDtoOfGetCountryForViewDto {
  
  int totalCount = null;
  

  List<GetCountryForViewDto> items = [];
  
  PagedResultDtoOfGetCountryForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetCountryForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetCountryForViewDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetCountryForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetCountryForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetCountryForViewDto>() : json.map((value) => new PagedResultDtoOfGetCountryForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetCountryForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetCountryForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetCountryForViewDto.fromJson(value));
    }
    return map;
  }
}

