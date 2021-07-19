part of swagger.api;

class PagedResultDtoOfNameValueDto {
  
  int? totalCount = null;
  

  List<NameValueDto> items = [];
  
  PagedResultDtoOfNameValueDto();

  @override
  String toString() {
    return 'PagedResultDtoOfNameValueDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfNameValueDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      NameValueDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfNameValueDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfNameValueDto>() : json.map((value) => new PagedResultDtoOfNameValueDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfNameValueDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfNameValueDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfNameValueDto.fromJson(value));
    }
    return map;
  }
}

