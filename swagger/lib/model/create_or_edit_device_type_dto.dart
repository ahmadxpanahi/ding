part of swagger.api;

class CreateOrEditDeviceTypeDto {
  
  String? title = null;
  

  int? id = null;
  
  CreateOrEditDeviceTypeDto();

  @override
  String toString() {
    return 'CreateOrEditDeviceTypeDto[title=$title, id=$id, ]';
  }

  CreateOrEditDeviceTypeDto.fromJson(Map<String, dynamic>? json) {
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

  static List<CreateOrEditDeviceTypeDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CreateOrEditDeviceTypeDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditDeviceTypeDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditDeviceTypeDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditDeviceTypeDto.fromJson(value));
    }
    return map;
  }
}

