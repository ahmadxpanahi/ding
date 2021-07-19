part of swagger.api;

class UserWorkScheduleUserLookupTableDto {
  
  int id = null;
  

  String displayName = null;
  
  UserWorkScheduleUserLookupTableDto();

  @override
  String toString() {
    return 'UserWorkScheduleUserLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  UserWorkScheduleUserLookupTableDto.fromJson(Map<String, dynamic> json) {
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

  static List<UserWorkScheduleUserLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserWorkScheduleUserLookupTableDto>() : json.map((value) => new UserWorkScheduleUserLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, UserWorkScheduleUserLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserWorkScheduleUserLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserWorkScheduleUserLookupTableDto.fromJson(value));
    }
    return map;
  }
}

