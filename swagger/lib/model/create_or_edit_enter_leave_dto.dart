part of swagger.api;

class CreateOrEditEnterLeaveDto {
  
  int? enterLeaveType = null;
  

  String? occurDate = null;
  

  String? occurTime = null;
  

  String? comment = null;
  

  int? status = null;
  

  String? rejectReason = null;
  

  int? rejectByUserId = null;
  

  int? approverUserId = null;
  

  int? id = null;
  
  CreateOrEditEnterLeaveDto();

  @override
  String toString() {
    return 'CreateOrEditEnterLeaveDto[enterLeaveType=$enterLeaveType, occurDate=$occurDate, occurTime=$occurTime, comment=$comment, status=$status, rejectReason=$rejectReason, rejectByUserId=$rejectByUserId, approverUserId=$approverUserId, id=$id, ]';
  }

  CreateOrEditEnterLeaveDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    enterLeaveType =


    json['enterLeaveType']
;
    occurDate = json['occurDate'] == null ? null : json['occurDate'];
    occurTime =
        json['occurTime']
    ;
    comment =
        json['comment']
    ;
    status =


    json['status']
;
    rejectReason =
        json['rejectReason']
    ;
    rejectByUserId =
        json['rejectByUserId']
    ;
    approverUserId =
        json['approverUserId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'enterLeaveType': enterLeaveType,
      'occurDate': occurDate == null ? '' : occurDate!,
      'occurTime': occurTime,
      'comment': comment,
      'status': status,
      'rejectReason': rejectReason,
      'rejectByUserId': rejectByUserId,
      'approverUserId': approverUserId,
      'id': id
     };
  }

  static List<CreateOrEditEnterLeaveDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CreateOrEditEnterLeaveDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditEnterLeaveDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditEnterLeaveDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditEnterLeaveDto.fromJson(value));
    }
    return map;
  }
}

