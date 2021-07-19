part of swagger.api;

class PagedResultDtoOfLanguageTextListDto {
  
  int totalCount = null;
  

  List<LanguageTextListDto> items = [];
  
  PagedResultDtoOfLanguageTextListDto();

  @override
  String toString() {
    return 'PagedResultDtoOfLanguageTextListDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfLanguageTextListDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      LanguageTextListDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfLanguageTextListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfLanguageTextListDto>() : json.map((value) => new PagedResultDtoOfLanguageTextListDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfLanguageTextListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfLanguageTextListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfLanguageTextListDto.fromJson(value));
    }
    return map;
  }
}

