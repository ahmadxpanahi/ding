part of swagger.api;

class PagedResultDtoOfCityCountryLookupTableDto {
  
  int? totalCount = null;
  

  List<CityCountryLookupTableDto> items = [];
  
  PagedResultDtoOfCityCountryLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfCityCountryLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfCityCountryLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      CityCountryLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfCityCountryLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfCityCountryLookupTableDto>() : json.map((value) => new PagedResultDtoOfCityCountryLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfCityCountryLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfCityCountryLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfCityCountryLookupTableDto.fromJson(value));
    }
    return map;
  }
}

