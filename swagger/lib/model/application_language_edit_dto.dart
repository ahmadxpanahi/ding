part of swagger.api;

class ApplicationLanguageEditDto {
  
  int? id = null;
  

  String? name = null;
  

  String? icon = null;
  

  bool? isEnabled = null;
  
  ApplicationLanguageEditDto();

  @override
  String toString() {
    return 'ApplicationLanguageEditDto[id=$id, name=$name, icon=$icon, isEnabled=$isEnabled, ]';
  }

  ApplicationLanguageEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
    icon =
        json['icon']
    ;
    isEnabled =
        json['isEnabled']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
      'isEnabled': isEnabled
     };
  }

  static List<ApplicationLanguageEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApplicationLanguageEditDto>() : json.map((value) => new ApplicationLanguageEditDto.fromJson(value)).toList();
  }

  static Map<String, ApplicationLanguageEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApplicationLanguageEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApplicationLanguageEditDto.fromJson(value));
    }
    return map;
  }
}

