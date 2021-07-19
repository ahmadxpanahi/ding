part of swagger.api;

class ListResultDtoOfFlatPermissionWithLevelDto {
  
  List<FlatPermissionWithLevelDto> items = [];
  
  ListResultDtoOfFlatPermissionWithLevelDto();

  @override
  String toString() {
    return 'ListResultDtoOfFlatPermissionWithLevelDto[items=$items, ]';
  }

  ListResultDtoOfFlatPermissionWithLevelDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      FlatPermissionWithLevelDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfFlatPermissionWithLevelDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfFlatPermissionWithLevelDto>() : json.map((value) => new ListResultDtoOfFlatPermissionWithLevelDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfFlatPermissionWithLevelDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfFlatPermissionWithLevelDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfFlatPermissionWithLevelDto.fromJson(value));
    }
    return map;
  }
}

