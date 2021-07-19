part of swagger.api;

class CreateOrEditUserWorkScheduleDto {
  
  int userId = null;
  

  int workScheduleId = null;
  

  int id = null;
  
  CreateOrEditUserWorkScheduleDto();

  @override
  String toString() {
    return 'CreateOrEditUserWorkScheduleDto[userId=$userId, workScheduleId=$workScheduleId, id=$id, ]';
  }

  CreateOrEditUserWorkScheduleDto.fromJson(Map<String, dynamic> json) {
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

  static List<CreateOrEditUserWorkScheduleDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateOrEditUserWorkScheduleDto>() : json.map((value) => new CreateOrEditUserWorkScheduleDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditUserWorkScheduleDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditUserWorkScheduleDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditUserWorkScheduleDto.fromJson(value));
    }
    return map;
  }
}

