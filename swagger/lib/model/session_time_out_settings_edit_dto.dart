part of swagger.api;

class SessionTimeOutSettingsEditDto {
  
  bool? isEnabled = null;
  

  int? timeOutSecond = null;
   // range from 10 to 2147483647//

  int? showTimeOutNotificationSecond = null;
   // range from 10 to 2147483647//

  bool? showLockScreenWhenTimedOut = null;
  
  SessionTimeOutSettingsEditDto();

  @override
  String toString() {
    return 'SessionTimeOutSettingsEditDto[isEnabled=$isEnabled, timeOutSecond=$timeOutSecond, showTimeOutNotificationSecond=$showTimeOutNotificationSecond, showLockScreenWhenTimedOut=$showLockScreenWhenTimedOut, ]';
  }

  SessionTimeOutSettingsEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    isEnabled =
        json['isEnabled']
    ;
    timeOutSecond =
        json['timeOutSecond']
    ;
    showTimeOutNotificationSecond =
        json['showTimeOutNotificationSecond']
    ;
    showLockScreenWhenTimedOut =
        json['showLockScreenWhenTimedOut']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'isEnabled': isEnabled,
      'timeOutSecond': timeOutSecond,
      'showTimeOutNotificationSecond': showTimeOutNotificationSecond,
      'showLockScreenWhenTimedOut': showLockScreenWhenTimedOut
     };
  }

  static List<SessionTimeOutSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<SessionTimeOutSettingsEditDto>() : json.map((value) => new SessionTimeOutSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, SessionTimeOutSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SessionTimeOutSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SessionTimeOutSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

