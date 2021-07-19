part of swagger.api;

class UserDelegationDto {
  
  String username = null;
  

  DateTime startTime = null;
  

  DateTime endTime = null;
  

  int id = null;
  
  UserDelegationDto();

  @override
  String toString() {
    return 'UserDelegationDto[username=$username, startTime=$startTime, endTime=$endTime, id=$id, ]';
  }

  UserDelegationDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username =
        json['username']
    ;
    startTime = json['startTime'] == null ? null : DateTime.parse(json['startTime']);
    endTime = json['endTime'] == null ? null : DateTime.parse(json['endTime']);
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'startTime': startTime == null ? '' : startTime.toUtc().toIso8601String(),
      'endTime': endTime == null ? '' : endTime.toUtc().toIso8601String(),
      'id': id
     };
  }

  static List<UserDelegationDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserDelegationDto>() : json.map((value) => new UserDelegationDto.fromJson(value)).toList();
  }

  static Map<String, UserDelegationDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserDelegationDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserDelegationDto.fromJson(value));
    }
    return map;
  }
}

