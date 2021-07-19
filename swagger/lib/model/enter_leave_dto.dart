part of swagger.api;

class EnterLeaveDto {
  
  EnteringLeavingType? enterLeaveType = null;
  

  DateTime? occurDate = null;
  

  String? occurTime = null;
  

  RequestStatus? status = null;
  

  DateTime? creationTime = null;
  

  int? creatorUserId = null;
  

  int? id = null;
  
  EnterLeaveDto();

  @override
  String toString() {
    return 'EnterLeaveDto[enterLeaveType=$enterLeaveType, occurDate=$occurDate, occurTime=$occurTime, status=$status, creationTime=$creationTime, creatorUserId=$creatorUserId, id=$id, ]';
  }

  EnterLeaveDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    enterLeaveType =
      
      
      new EnteringLeavingType.fromJson(json['enterLeaveType'])
;
    occurDate = json['occurDate'] == null ? null : DateTime.parse(json['occurDate']);
    occurTime =
        json['occurTime']
    ;
    status =
      
      
      new RequestStatus.fromJson(json['status'])
;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
    creatorUserId =
        json['creatorUserId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'enterLeaveType': enterLeaveType,
      'occurDate': occurDate == null ? '' : occurDate!.toUtc().toIso8601String(),
      'occurTime': occurTime,
      'status': status,
      'creationTime': creationTime == null ? '' : creationTime!.toUtc().toIso8601String(),
      'creatorUserId': creatorUserId,
      'id': id
     };
  }

  static List<EnterLeaveDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<EnterLeaveDto>() : json.map((value) => new EnterLeaveDto.fromJson(value)).toList();
  }

  static Map<String, EnterLeaveDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EnterLeaveDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EnterLeaveDto.fromJson(value));
    }
    return map;
  }
}

