part of swagger.api;

class ListResultDtoOfOrganizationUnitDto {
  
  List<OrganizationUnitDto> items = [];
  
  ListResultDtoOfOrganizationUnitDto();

  @override
  String toString() {
    return 'ListResultDtoOfOrganizationUnitDto[items=$items, ]';
  }

  ListResultDtoOfOrganizationUnitDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items =
      OrganizationUnitDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfOrganizationUnitDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfOrganizationUnitDto>() : json.map((value) => new ListResultDtoOfOrganizationUnitDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfOrganizationUnitDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfOrganizationUnitDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfOrganizationUnitDto.fromJson(value));
    }
    return map;
  }
}

