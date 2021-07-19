part of swagger.api;

class CleanValuesInput {
  
  int? dynamicEntityPropertyId = null;
  

  String? entityId = null;
  
  CleanValuesInput();

  @override
  String toString() {
    return 'CleanValuesInput[dynamicEntityPropertyId=$dynamicEntityPropertyId, entityId=$entityId, ]';
  }

  CleanValuesInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    dynamicEntityPropertyId =
        json['dynamicEntityPropertyId']
    ;
    entityId =
        json['entityId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'dynamicEntityPropertyId': dynamicEntityPropertyId,
      'entityId': entityId
     };
  }

  static List<CleanValuesInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CleanValuesInput.fromJson(value)).toList();
  }

  static Map<String, CleanValuesInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CleanValuesInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CleanValuesInput.fromJson(value));
    }
    return map;
  }
}

