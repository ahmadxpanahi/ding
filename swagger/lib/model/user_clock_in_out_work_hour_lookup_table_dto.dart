part of swagger.api;

class UserClockInOutWorkHourLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  
  UserClockInOutWorkHourLookupTableDto();

  @override
  String toString() {
    return 'UserClockInOutWorkHourLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  UserClockInOutWorkHourLookupTableDto.fromJson(Map<String, dynamic>? json) {
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

  static List<UserClockInOutWorkHourLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new UserClockInOutWorkHourLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, UserClockInOutWorkHourLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserClockInOutWorkHourLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserClockInOutWorkHourLookupTableDto.fromJson(value));
    }
    return map;
  }
}

