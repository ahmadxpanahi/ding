part of swagger.api;

class PagedResultDtoOfSupportSupportLookupTableDto {
  
  int? totalCount = null;
  

  List<SupportSupportLookupTableDto> items = [];
  
  PagedResultDtoOfSupportSupportLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfSupportSupportLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfSupportSupportLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      SupportSupportLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfSupportSupportLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfSupportSupportLookupTableDto>() : json.map((value) => new PagedResultDtoOfSupportSupportLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfSupportSupportLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfSupportSupportLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfSupportSupportLookupTableDto.fromJson(value));
    }
    return map;
  }
}

