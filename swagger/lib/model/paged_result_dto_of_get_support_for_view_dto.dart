part of swagger.api;

class PagedResultDtoOfGetSupportForViewDto {
  
  int totalCount = null;
  

  List<GetSupportForViewDto> items = [];
  
  PagedResultDtoOfGetSupportForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetSupportForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetSupportForViewDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetSupportForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetSupportForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetSupportForViewDto>() : json.map((value) => new PagedResultDtoOfGetSupportForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetSupportForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetSupportForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetSupportForViewDto.fromJson(value));
    }
    return map;
  }
}

