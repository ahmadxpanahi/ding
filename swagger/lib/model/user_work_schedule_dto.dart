part of swagger.api;

class UserWorkScheduleDto {
  
  int? userId = null;
  

  int? workScheduleId = null;
  

  int? id = null;
  
  UserWorkScheduleDto();

  @override
  String toString() {
    return 'UserWorkScheduleDto[userId=$userId, workScheduleId=$workScheduleId, id=$id, ]';
  }

  UserWorkScheduleDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userId =
        json['userId']
    ;
    workScheduleId =
        json['workScheduleId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'workScheduleId': workScheduleId,
      'id': id
     };
  }

  static List<UserWorkScheduleDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserWorkScheduleDto>() : json.map((value) => new UserWorkScheduleDto.fromJson(value)).toList();
  }

  static Map<String, UserWorkScheduleDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserWorkScheduleDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserWorkScheduleDto.fromJson(value));
    }
    return map;
  }
}

