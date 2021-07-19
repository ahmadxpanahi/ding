part of swagger.api;

class PurchasingResourceDto {
  
  String? title = null;
  

  int? id = null;
  
  PurchasingResourceDto();

  @override
  String toString() {
    return 'PurchasingResourceDto[title=$title, id=$id, ]';
  }

  PurchasingResourceDto.fromJson(Map<String, dynamic>? json) {
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

  static List<PurchasingResourceDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PurchasingResourceDto>() : json.map((value) => new PurchasingResourceDto.fromJson(value)).toList();
  }

  static Map<String, PurchasingResourceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PurchasingResourceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PurchasingResourceDto.fromJson(value));
    }
    return map;
  }
}

