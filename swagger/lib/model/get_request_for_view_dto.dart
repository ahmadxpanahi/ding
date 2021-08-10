part of swagger.api;

class GetRequestForViewDto extends RequestEnterLeave {
  
  RequestDto? request = null;
  

  String? substituteUser = null;
  

  String? requestByUser = null;
  
  GetRequestForViewDto();

  @override
  String toString() {
    return 'GetRequestForViewDto[request=$request, substituteUser=$substituteUser, requestByUser=$requestByUser, ]';
  }

  @override
  String getId() {
    return (request?.id ?? -1).toString();
  }

  @override
  DateTime getDate(){
    return request?.creationTime ?? DateTime.now();
  }

  @override
  int getType(){
    return request?.requestType?.value ?? -1;
  }

  @override
  int getStatus(){
    return request?.status?.value ?? -1;
  }

  GetRequestForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    request =
      
      
      new RequestDto.fromJson(json['request'])
;
    substituteUser =
        json['substituteUser']
    ;
    requestByUser =
        json['requestByUser']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'request': request,
      'substituteUser': substituteUser,
      'requestByUser': requestByUser
     };
  }

  static List<GetRequestForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new GetRequestForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetRequestForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetRequestForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetRequestForViewDto.fromJson(value));
    }
    return map;
  }
}

