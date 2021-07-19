part of swagger.api;

class EditMyDeviceDto {
  
  String name = null;
  

  int id = null;
  
  EditMyDeviceDto();

  @override
  String toString() {
    return 'EditMyDeviceDto[name=$name, id=$id, ]';
  }

  EditMyDeviceDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id
     };
  }

  static List<EditMyDeviceDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<EditMyDeviceDto>() : json.map((value) => new EditMyDeviceDto.fromJson(value)).toList();
  }

  static Map<String, EditMyDeviceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EditMyDeviceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EditMyDeviceDto.fromJson(value));
    }
    return map;
  }
}

