part of swagger.api;

class GetRequestForViewDto {
  
  RequestDto request = null;
  

  String substituteUser = null;
  

  String requestByUser = null;
  
  GetRequestForViewDto();

  @override
  String toString() {
    return 'GetRequestForViewDto[request=$request, substituteUser=$substituteUser, requestByUser=$requestByUser, ]';
  }

  GetRequestForViewDto.fromJson(Map<String, dynamic> json) {
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

  static List<GetRequestForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetRequestForViewDto>() : json.map((value) => new GetRequestForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetRequestForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetRequestForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetRequestForViewDto.fromJson(value));
    }
    return map;
  }
}

