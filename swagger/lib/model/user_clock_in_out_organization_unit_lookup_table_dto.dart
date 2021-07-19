part of swagger.api;

class UserClockInOutOrganizationUnitLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  
  UserClockInOutOrganizationUnitLookupTableDto();

  @override
  String toString() {
    return 'UserClockInOutOrganizationUnitLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  UserClockInOutOrganizationUnitLookupTableDto.fromJson(Map<String, dynamic>? json) {
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

  static List<UserClockInOutOrganizationUnitLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserClockInOutOrganizationUnitLookupTableDto>() : json.map((value) => new UserClockInOutOrganizationUnitLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, UserClockInOutOrganizationUnitLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserClockInOutOrganizationUnitLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserClockInOutOrganizationUnitLookupTableDto.fromJson(value));
    }
    return map;
  }
}

