part of swagger.api;

class PagedResultDtoOfCategoryRoleListDto {
  
  int totalCount = null;
  

  List<CategoryRoleListDto> items = [];
  
  PagedResultDtoOfCategoryRoleListDto();

  @override
  String toString() {
    return 'PagedResultDtoOfCategoryRoleListDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfCategoryRoleListDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      CategoryRoleListDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfCategoryRoleListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfCategoryRoleListDto>() : json.map((value) => new PagedResultDtoOfCategoryRoleListDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfCategoryRoleListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfCategoryRoleListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfCategoryRoleListDto.fromJson(value));
    }
    return map;
  }
}

