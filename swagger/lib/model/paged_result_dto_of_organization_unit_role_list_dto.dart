part of swagger.api;

class PagedResultDtoOfOrganizationUnitRoleListDto {
  
  int? totalCount = null;
  

  List<OrganizationUnitRoleListDto> items = [];
  
  PagedResultDtoOfOrganizationUnitRoleListDto();

  @override
  String toString() {
    return 'PagedResultDtoOfOrganizationUnitRoleListDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfOrganizationUnitRoleListDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      OrganizationUnitRoleListDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfOrganizationUnitRoleListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfOrganizationUnitRoleListDto>() : json.map((value) => new PagedResultDtoOfOrganizationUnitRoleListDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfOrganizationUnitRoleListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfOrganizationUnitRoleListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfOrganizationUnitRoleListDto.fromJson(value));
    }
    return map;
  }
}

