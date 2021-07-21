part of swagger.api;

class UserDeviceUserLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  

  String? userPhoneNumber = null;
  
  UserDeviceUserLookupTableDto();

  @override
  String toString() {
    return 'UserDeviceUserLookupTableDto[id=$id, displayName=$displayName, userPhoneNumber=$userPhoneNumber, ]';
  }

  UserDeviceUserLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    displayName =
        json['displayName']
    ;
    userPhoneNumber =
        json['userPhoneNumber']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'displayName': displayName,
      'userPhoneNumber': userPhoneNumber
     };
  }

  static List<UserDeviceUserLookupTableDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new UserDeviceUserLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, UserDeviceUserLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserDeviceUserLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserDeviceUserLookupTableDto.fromJson(value));
    }
    return map;
  }
}

