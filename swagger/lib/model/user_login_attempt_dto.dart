part of swagger.api;

class UserLoginAttemptDto {
  
  String tenancyName = null;
  

  String userNameOrEmail = null;
  

  String clientIpAddress = null;
  

  String clientName = null;
  

  String browserInfo = null;
  

  String result = null;
  

  DateTime creationTime = null;
  
  UserLoginAttemptDto();

  @override
  String toString() {
    return 'UserLoginAttemptDto[tenancyName=$tenancyName, userNameOrEmail=$userNameOrEmail, clientIpAddress=$clientIpAddress, clientName=$clientName, browserInfo=$browserInfo, result=$result, creationTime=$creationTime, ]';
  }

  UserLoginAttemptDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tenancyName =
        json['tenancyName']
    ;
    userNameOrEmail =
        json['userNameOrEmail']
    ;
    clientIpAddress =
        json['clientIpAddress']
    ;
    clientName =
        json['clientName']
    ;
    browserInfo =
        json['browserInfo']
    ;
    result =
        json['result']
    ;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      'tenancyName': tenancyName,
      'userNameOrEmail': userNameOrEmail,
      'clientIpAddress': clientIpAddress,
      'clientName': clientName,
      'browserInfo': browserInfo,
      'result': result,
      'creationTime': creationTime == null ? '' : creationTime.toUtc().toIso8601String()
     };
  }

  static List<UserLoginAttemptDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserLoginAttemptDto>() : json.map((value) => new UserLoginAttemptDto.fromJson(value)).toList();
  }

  static Map<String, UserLoginAttemptDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserLoginAttemptDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserLoginAttemptDto.fromJson(value));
    }
    return map;
  }
}

