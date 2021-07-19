part of swagger.api;

class PagedResultDtoOfRequestUserLookupTableDto {
  
  int? totalCount = null;
  

  List<RequestUserLookupTableDto> items = [];
  
  PagedResultDtoOfRequestUserLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfRequestUserLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfRequestUserLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      RequestUserLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfRequestUserLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new PagedResultDtoOfRequestUserLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfRequestUserLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfRequestUserLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfRequestUserLookupTableDto.fromJson(value));
    }
    return map;
  }
}

