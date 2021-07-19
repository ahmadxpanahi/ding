part of swagger.api;

class PagedResultDtoOfCityStateLookupTableDto {
  
  int? totalCount = null;
  

  List<CityStateLookupTableDto> items = [];
  
  PagedResultDtoOfCityStateLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfCityStateLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfCityStateLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      CityStateLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfCityStateLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfCityStateLookupTableDto>() : json.map((value) => new PagedResultDtoOfCityStateLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfCityStateLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfCityStateLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfCityStateLookupTableDto.fromJson(value));
    }
    return map;
  }
}

