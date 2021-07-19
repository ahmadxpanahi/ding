part of swagger.api;

class PagedResultDtoOfSupportUserLookupTableDto {
  
  int totalCount = null;
  

  List<SupportUserLookupTableDto> items = [];
  
  PagedResultDtoOfSupportUserLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfSupportUserLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfSupportUserLookupTableDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      SupportUserLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfSupportUserLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfSupportUserLookupTableDto>() : json.map((value) => new PagedResultDtoOfSupportUserLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfSupportUserLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfSupportUserLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfSupportUserLookupTableDto.fromJson(value));
    }
    return map;
  }
}

