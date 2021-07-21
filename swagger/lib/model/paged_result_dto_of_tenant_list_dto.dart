part of swagger.api;

class PagedResultDtoOfTenantListDto {
  
  int? totalCount = null;
  

  List<TenantListDto> items = [];
  
  PagedResultDtoOfTenantListDto();

  @override
  String toString() {
    return 'PagedResultDtoOfTenantListDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfTenantListDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      TenantListDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfTenantListDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new PagedResultDtoOfTenantListDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfTenantListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfTenantListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfTenantListDto.fromJson(value));
    }
    return map;
  }
}

