part of swagger.api;

class CreateOrEditSupportDto {
  
  String? requestSubject = null;
  

  String? requestDescription = null;
  

  SupportType? requestType = null;
  

  SupportStatus? requestStatus = null;
  

  String? additionalDescription = null;
  

  int? deviceId = null;
  

  int? requestUserId = null;
  

  int? supportParentId = null;
  

  int? id = null;
  
  CreateOrEditSupportDto();

  @override
  String toString() {
    return 'CreateOrEditSupportDto[requestSubject=$requestSubject, requestDescription=$requestDescription, requestType=$requestType, requestStatus=$requestStatus, additionalDescription=$additionalDescription, deviceId=$deviceId, requestUserId=$requestUserId, supportParentId=$supportParentId, id=$id, ]';
  }

  CreateOrEditSupportDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    requestSubject =
        json['requestSubject']
    ;
    requestDescription =
        json['requestDescription']
    ;
    requestType =
      
      
      new SupportType.fromJson(json['requestType'])
;
    requestStatus =
      
      
      new SupportStatus.fromJson(json['requestStatus'])
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
      'requestDescription': requestDescription,
      'requestType': requestType,
      'requestStatus': requestStatus,
      'additionalDescription': additionalDescription,
      'deviceId': deviceId,
      'requestUserId': requestUserId,
      'supportParentId': supportParentId,
      'id': id
     };
  }

  static List<CreateOrEditSupportDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CreateOrEditSupportDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditSupportDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditSupportDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditSupportDto.fromJson(value));
    }
    return map;
  }
}

