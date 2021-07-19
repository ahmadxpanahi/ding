part of swagger.api;

class UserWorkScheduleWorkScheduleLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  
  UserWorkScheduleWorkScheduleLookupTableDto();

  @override
  String toString() {
    return 'UserWorkScheduleWorkScheduleLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  UserWorkScheduleWorkScheduleLookupTableDto.fromJson(Map<String, dynamic>? json) {
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

  static List<UserWorkScheduleWorkScheduleLookupTableDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<UserWorkScheduleWorkScheduleLookupTableDto>() : json.map((value) => new UserWorkScheduleWorkScheduleLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, UserWorkScheduleWorkScheduleLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserWorkScheduleWorkScheduleLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserWorkScheduleWorkScheduleLookupTableDto.fromJson(value));
    }
    return map;
  }
}

