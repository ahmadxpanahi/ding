part of swagger.api;

class PagedResultDtoOfGetPurchasingResourceForViewDto {
  
  int totalCount = null;
  

  List<GetPurchasingResourceForViewDto> items = [];
  
  PagedResultDtoOfGetPurchasingResourceForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetPurchasingResourceForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetPurchasingResourceForViewDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetPurchasingResourceForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetPurchasingResourceForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetPurchasingResourceForViewDto>() : json.map((value) => new PagedResultDtoOfGetPurchasingResourceForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetPurchasingResourceForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetPurchasingResourceForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetPurchasingResourceForViewDto.fromJson(value));
    }
    return map;
  }
}

