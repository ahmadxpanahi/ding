part of swagger.api;

class NameValueDto {
  
  String? name = null;
  

  String? value = null;
  
  NameValueDto();

  @override
  String toString() {
    return 'NameValueDto[name=$name, value=$value, ]';
  }

  NameValueDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value
     };
  }

  static List<NameValueDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<NameValueDto>() : json.map((value) => new NameValueDto.fromJson(value)).toList();
  }

  static Map<String, NameValueDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NameValueDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NameValueDto.fromJson(value));
    }
    return map;
  }
}

