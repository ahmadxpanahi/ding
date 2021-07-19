part of swagger.api;

class PagedResultDtoOfStateCountryLookupTableDto {
  
  int totalCount = null;
  

  List<StateCountryLookupTableDto> items = [];
  
  PagedResultDtoOfStateCountryLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfStateCountryLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfStateCountryLookupTableDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      StateCountryLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfStateCountryLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfStateCountryLookupTableDto>() : json.map((value) => new PagedResultDtoOfStateCountryLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfStateCountryLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfStateCountryLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfStateCountryLookupTableDto.fromJson(value));
    }
    return map;
  }
}

