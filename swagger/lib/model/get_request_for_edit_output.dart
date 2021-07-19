part of swagger.api;

class GetRequestForEditOutput {
  
  CreateOrEditRequestDto? request = null;
  

  String? userName = null;
  
  GetRequestForEditOutput();

  @override
  String toString() {
    return 'GetRequestForEditOutput[request=$request, userName=$userName, ]';
  }

  GetRequestForEditOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    request =
      
      
      new CreateOrEditRequestDto.fromJson(json['request'])
;
    userName =
        json['userName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'request': request,
      'userName': userName
     };
  }

  static List<GetRequestForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetRequestForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetRequestForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetRequestForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetRequestForEditOutput.fromJson(value));
    }
    return map;
  }
}

