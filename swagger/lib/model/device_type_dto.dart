part of swagger.api;

class DeviceTypeDto {
  
  String? title = null;
  

  int? id = null;
  
  DeviceTypeDto();

  @override
  String toString() {
    return 'DeviceTypeDto[title=$title, id=$id, ]';
  }

  DeviceTypeDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    title =
        json['title']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'id': id
     };
  }

  static List<DeviceTypeDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new DeviceTypeDto.fromJson(value)).toList();
  }

  static Map<String, DeviceTypeDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeviceTypeDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeviceTypeDto.fromJson(value));
    }
    return map;
  }
}

