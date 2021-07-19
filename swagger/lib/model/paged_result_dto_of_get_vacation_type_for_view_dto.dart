part of swagger.api;

class PagedResultDtoOfGetVacationTypeForViewDto {
  
  int totalCount = null;
  

  List<GetVacationTypeForViewDto> items = [];
  
  PagedResultDtoOfGetVacationTypeForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetVacationTypeForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetVacationTypeForViewDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetVacationTypeForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetVacationTypeForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetVacationTypeForViewDto>() : json.map((value) => new PagedResultDtoOfGetVacationTypeForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetVacationTypeForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetVacationTypeForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetVacationTypeForViewDto.fromJson(value));
    }
    return map;
  }
}

