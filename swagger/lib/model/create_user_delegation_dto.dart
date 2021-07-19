part of swagger.api;

class CreateUserDelegationDto {
  
  int? targetUserId = null;
   // range from 1 to //

  DateTime? startTime = null;
  

  DateTime? endTime = null;
  
  CreateUserDelegationDto();

  @override
  String toString() {
    return 'CreateUserDelegationDto[targetUserId=$targetUserId, startTime=$startTime, endTime=$endTime, ]';
  }

  CreateUserDelegationDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    targetUserId =
        json['targetUserId']
    ;
    startTime = json['startTime'] == null ? null : DateTime.parse(json['startTime']);
    endTime = json['endTime'] == null ? null : DateTime.parse(json['endTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      'targetUserId': targetUserId,
      'startTime': startTime == null ? '' : startTime!.toUtc().toIso8601String(),
      'endTime': endTime == null ? '' : endTime!.toUtc().toIso8601String()
     };
  }

  static List<CreateUserDelegationDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateUserDelegationDto>() : json.map((value) => new CreateUserDelegationDto.fromJson(value)).toList();
  }

  static Map<String, CreateUserDelegationDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateUserDelegationDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateUserDelegationDto.fromJson(value));
    }
    return map;
  }
}

