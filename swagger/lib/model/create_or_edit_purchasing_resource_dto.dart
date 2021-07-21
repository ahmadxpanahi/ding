part of swagger.api;

class CreateOrEditPurchasingResourceDto {
  
  String? title = null;
  

  int? id = null;
  
  CreateOrEditPurchasingResourceDto();

  @override
  String toString() {
    return 'CreateOrEditPurchasingResourceDto[title=$title, id=$id, ]';
  }

  CreateOrEditPurchasingResourceDto.fromJson(Map<String, dynamic>? json) {
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

  static List<CreateOrEditPurchasingResourceDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CreateOrEditPurchasingResourceDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditPurchasingResourceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditPurchasingResourceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditPurchasingResourceDto.fromJson(value));
    }
    return map;
  }
}

