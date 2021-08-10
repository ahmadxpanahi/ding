part of swagger.api;

class GetEnterLeaveForViewDto extends RequestEnterLeave {
  
  EnterLeaveDto? enterLeave = null;
  

  String? requestByUser = null;
  
  GetEnterLeaveForViewDto();

  @override
  String toString() {
    return 'GetEnterLeaveForViewDto[enterLeave=$enterLeave, requestByUser=$requestByUser, ]';
  }

  @override
  String getId() {
    return (enterLeave?.id ?? -1).toString();
  }

  @override
  DateTime getDate(){
    return enterLeave?.occurDate ?? DateTime.now();
  }

  @override
  int getType(){
    return (enterLeave?.enterLeaveType?.value ?? 0) + 6;
  }

  @override
  int getStatus(){
    return (enterLeave?.status?.value ?? 0) + 6;
  }

  GetEnterLeaveForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    enterLeave =
      
      
      new EnterLeaveDto.fromJson(json['enterLeave'])
;
    requestByUser =
        json['requestByUser']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'enterLeave': enterLeave,
      'requestByUser': requestByUser
     };
  }

  static List<GetEnterLeaveForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new GetEnterLeaveForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetEnterLeaveForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetEnterLeaveForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetEnterLeaveForViewDto.fromJson(value));
    }
    return map;
  }
}

