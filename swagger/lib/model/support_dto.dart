part of swagger.api;

class SupportDto {
  
  String requestSubject = null;
  

  SupportType requestType = null;
  

  SupportStatus requestStatus = null;
  

  String requestDescription = null;
  

  String additionalDescription = null;
  

  int deviceId = null;
  

  int requestUserId = null;
  

  int supportParentId = null;
  

  int id = null;
  
  SupportDto();

  @override
  String toString() {
    return 'SupportDto[requestSubject=$requestSubject, requestType=$requestType, requestStatus=$requestStatus, requestDescription=$requestDescription, additionalDescription=$additionalDescription, deviceId=$deviceId, requestUserId=$requestUserId, supportParentId=$supportParentId, id=$id, ]';
  }

  SupportDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    requestSubject =
        json['requestSubject']
    ;
    requestType =
      
      
      new SupportType.fromJson(json['requestType'])
;
    requestStatus =
      
      
      new SupportStatus.fromJson(json['requestStatus'])
;
    requestDescription =
        json['requestDescription']
    ;
    additionalDescription =
        json['additionalDescription']
    ;
    deviceId =
        json['deviceId']
    ;
    requestUserId =
        json['requestUserId']
    ;
    supportParentId =
        json['supportParentId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'requestSubject': requestSubject,
      'requestType': requestType,
      'requestStatus': requestStatus,
      'requestDescription': requestDescription,
      'additionalDescription': additionalDescription,
      'deviceId': deviceId,
      'requestUserId': requestUserId,
      'supportParentId': supportParentId,
      'id': id
     };
  }

  static List<SupportDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<SupportDto>() : json.map((value) => new SupportDto.fromJson(value)).toList();
  }

  static Map<String, SupportDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SupportDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SupportDto.fromJson(value));
    }
    return map;
  }
}

