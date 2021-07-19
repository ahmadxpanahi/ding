part of swagger.api;

class PagedResultDtoOfAuditLogListDto {
  
  int totalCount = null;
  

  List<AuditLogListDto> items = [];
  
  PagedResultDtoOfAuditLogListDto();

  @override
  String toString() {
    return 'PagedResultDtoOfAuditLogListDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfAuditLogListDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      AuditLogListDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfAuditLogListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfAuditLogListDto>() : json.map((value) => new PagedResultDtoOfAuditLogListDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfAuditLogListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfAuditLogListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfAuditLogListDto.fromJson(value));
    }
    return map;
  }
}

