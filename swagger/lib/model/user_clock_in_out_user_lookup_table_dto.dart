part of swagger.api;

class UserClockInOutUserLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  
  UserClockInOutUserLookupTableDto();

  @override
  String toString() {
    return 'UserClockInOutUserLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  UserClockInOutUserLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    displayName =
        json['displayName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'displayName': displayName
     };
  }

  static List<UserClockInOutUserLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new UserClockInOutUserLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, UserClockInOutUserLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserClockInOutUserLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserClockInOutUserLookupTableDto.fromJson(value));
    }
    return map;
  }
}

