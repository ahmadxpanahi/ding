part of swagger.api;

class UserClockInOutWorkScheduleLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  
  UserClockInOutWorkScheduleLookupTableDto();

  @override
  String toString() {
    return 'UserClockInOutWorkScheduleLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  UserClockInOutWorkScheduleLookupTableDto.fromJson(Map<String, dynamic>? json) {
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

  static List<UserClockInOutWorkScheduleLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new UserClockInOutWorkScheduleLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, UserClockInOutWorkScheduleLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserClockInOutWorkScheduleLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserClockInOutWorkScheduleLookupTableDto.fromJson(value));
    }
    return map;
  }
}

