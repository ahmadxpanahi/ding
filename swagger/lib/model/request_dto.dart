part of swagger.api;

class RequestDto {
  
  RequestType requestType = null;
  

  DateTime from = null;
  

  DateTime to = null;
  

  String comment = null;
  

  RequestStatus status = null;
  

  String rejectReason = null;
  

  int substituteUserId = null;
  

  int creatorUserId = null;
  

  DateTime creationTime = null;
  

  int id = null;
  
  RequestDto();

  @override
  String toString() {
    return 'RequestDto[requestType=$requestType, from=$from, to=$to, comment=$comment, status=$status, rejectReason=$rejectReason, substituteUserId=$substituteUserId, creatorUserId=$creatorUserId, creationTime=$creationTime, id=$id, ]';
  }

  RequestDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    requestType =
      
      
      new RequestType.fromJson(json['requestType'])
;
    from = json['from'] == null ? null : DateTime.parse(json['from']);
    to = json['to'] == null ? null : DateTime.parse(json['to']);
    comment =
        json['comment']
    ;
    status =
      
      
      new RequestStatus.fromJson(json['status'])
;
    rejectReason =
        json['rejectReason']
    ;
    substituteUserId =
        json['substituteUserId']
    ;
    creatorUserId =
        json['creatorUserId']
    ;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'requestType': requestType,
      'from': from == null ? '' : from.toUtc().toIso8601String(),
      'to': to == null ? '' : to.toUtc().toIso8601String(),
      'comment': comment,
      'status': status,
      'rejectReason': rejectReason,
      'substituteUserId': substituteUserId,
      'creatorUserId': creatorUserId,
      'creationTime': creationTime == null ? '' : creationTime.toUtc().toIso8601String(),
      'id': id
     };
  }

  static List<RequestDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestDto>() : json.map((value) => new RequestDto.fromJson(value)).toList();
  }

  static Map<String, RequestDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestDto.fromJson(value));
    }
    return map;
  }
}

