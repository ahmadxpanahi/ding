part of swagger.api;

class PagedResultDtoOfGetStateForViewDto {
  
  int? totalCount = null;
  

  List<GetStateForViewDto> items = [];
  
  PagedResultDtoOfGetStateForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetStateForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetStateForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetStateForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetStateForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new PagedResultDtoOfGetStateForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetStateForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetStateForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetStateForViewDto.fromJson(value));
    }
    return map;
  }
}

