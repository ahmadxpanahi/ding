part of swagger.api;

class CreateUserDeviceDto {
  
  int? userId = null;
  

  int? deviceId = null;
  

  int? id = null;
  
  CreateUserDeviceDto();

  @override
  String toString() {
    return 'CreateUserDeviceDto[userId=$userId, deviceId=$deviceId, id=$id, ]';
  }

  CreateUserDeviceDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userId =
        json['userId']
    ;
    deviceId =
        json['deviceId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'deviceId': deviceId,
      'id': id
     };
  }

  static List<CreateUserDeviceDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateUserDeviceDto>() : json.map((value) => new CreateUserDeviceDto.fromJson(value)).toList();
  }

  static Map<String, CreateUserDeviceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateUserDeviceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateUserDeviceDto.fromJson(value));
    }
    return map;
  }
}

