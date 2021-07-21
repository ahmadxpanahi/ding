part of swagger.api;

class SupportSupportLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  
  SupportSupportLookupTableDto();

  @override
  String toString() {
    return 'SupportSupportLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  SupportSupportLookupTableDto.fromJson(Map<String, dynamic>? json) {
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

  static List<SupportSupportLookupTableDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new SupportSupportLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, SupportSupportLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SupportSupportLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SupportSupportLookupTableDto.fromJson(value));
    }
    return map;
  }
}

