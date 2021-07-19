part of swagger.api;

class PagedResultDtoOfEntityChangeListDto {
  
  int? totalCount = null;
  

  List<EntityChangeListDto> items = [];
  
  PagedResultDtoOfEntityChangeListDto();

  @override
  String toString() {
    return 'PagedResultDtoOfEntityChangeListDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfEntityChangeListDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      EntityChangeListDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfEntityChangeListDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new PagedResultDtoOfEntityChangeListDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfEntityChangeListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfEntityChangeListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfEntityChangeListDto.fromJson(value));
    }
    return map;
  }
}

