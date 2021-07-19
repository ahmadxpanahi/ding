part of swagger.api;

class RequestUserLookupTableDto {
  
  int id = null;
  

  String displayName = null;
  
  RequestUserLookupTableDto();

  @override
  String toString() {
    return 'RequestUserLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  RequestUserLookupTableDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    displayName =
        json['displayName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'displayName': displayName
     };
  }

  static List<RequestUserLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestUserLookupTableDto>() : json.map((value) => new RequestUserLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, RequestUserLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestUserLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestUserLookupTableDto.fromJson(value));
    }
    return map;
  }
}

