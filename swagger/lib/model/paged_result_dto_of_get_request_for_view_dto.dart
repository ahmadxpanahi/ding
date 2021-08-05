part of swagger.api;

class PagedResultDtoOfGetRequestForViewDto {
  
  int? totalCount = null;
  

  List<GetRequestForViewDto> items = [];
  
  PagedResultDtoOfGetRequestForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetRequestForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetRequestForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['result']['totalCount']
    ;
    items =
      GetRequestForViewDto.listFromJson(json['result']['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetRequestForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new PagedResultDtoOfGetRequestForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetRequestForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetRequestForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetRequestForViewDto.fromJson(value));
    }
    return map;
  }
}

