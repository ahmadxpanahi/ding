part of swagger.api;

class PagedResultDtoOfCategoryUserListDto {
  
  int totalCount = null;
  

  List<CategoryUserListDto> items = [];
  
  PagedResultDtoOfCategoryUserListDto();

  @override
  String toString() {
    return 'PagedResultDtoOfCategoryUserListDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfCategoryUserListDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      CategoryUserListDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfCategoryUserListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfCategoryUserListDto>() : json.map((value) => new PagedResultDtoOfCategoryUserListDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfCategoryUserListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfCategoryUserListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfCategoryUserListDto.fromJson(value));
    }
    return map;
  }
}

