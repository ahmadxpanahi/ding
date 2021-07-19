part of swagger.api;

class EditionDevicePurchasingResourceLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  
  EditionDevicePurchasingResourceLookupTableDto();

  @override
  String toString() {
    return 'EditionDevicePurchasingResourceLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  EditionDevicePurchasingResourceLookupTableDto.fromJson(Map<String, dynamic>? json) {
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

  static List<EditionDevicePurchasingResourceLookupTableDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<EditionDevicePurchasingResourceLookupTableDto>() : json.map((value) => new EditionDevicePurchasingResourceLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, EditionDevicePurchasingResourceLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EditionDevicePurchasingResourceLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EditionDevicePurchasingResourceLookupTableDto.fromJson(value));
    }
    return map;
  }
}

