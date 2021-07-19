part of swagger.api;

class PagedResultDtoOfOrganizationUnitUserListDto {
  
  int totalCount = null;
  

  List<OrganizationUnitUserListDto> items = [];
  
  PagedResultDtoOfOrganizationUnitUserListDto();

  @override
  String toString() {
    return 'PagedResultDtoOfOrganizationUnitUserListDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfOrganizationUnitUserListDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      OrganizationUnitUserListDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfOrganizationUnitUserListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfOrganizationUnitUserListDto>() : json.map((value) => new PagedResultDtoOfOrganizationUnitUserListDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfOrganizationUnitUserListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfOrganizationUnitUserListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfOrganizationUnitUserListDto.fromJson(value));
    }
    return map;
  }
}

