part of swagger.api;

class GetEnterLeaveForEditOutput {
  
  CreateOrEditEnterLeaveDto? enterLeave = null;
  
  GetEnterLeaveForEditOutput();

  @override
  String toString() {
    return 'GetEnterLeaveForEditOutput[enterLeave=$enterLeave, ]';
  }

  GetEnterLeaveForEditOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    enterLeave =
      
      
      new CreateOrEditEnterLeaveDto.fromJson(json['enterLeave'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'enterLeave': enterLeave
     };
  }

  static List<GetEnterLeaveForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetEnterLeaveForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetEnterLeaveForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetEnterLeaveForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetEnterLeaveForEditOutput.fromJson(value));
    }
    return map;
  }
}

