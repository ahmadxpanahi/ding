part of swagger.api;

class ListResultDtoOfRoleListDto {
  
  List<RoleListDto> items = [];
  
  ListResultDtoOfRoleListDto();

  @override
  String toString() {
    return 'ListResultDtoOfRoleListDto[items=$items, ]';
  }

  ListResultDtoOfRoleListDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items =
      RoleListDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfRoleListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfRoleListDto>() : json.map((value) => new ListResultDtoOfRoleListDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfRoleListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfRoleListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfRoleListDto.fromJson(value));
    }
    return map;
  }
}

