part of swagger.api;

class GetAllEntitiesHasDynamicPropertyOutput {
  
  String entityFullName = null;
  
  GetAllEntitiesHasDynamicPropertyOutput();

  @override
  String toString() {
    return 'GetAllEntitiesHasDynamicPropertyOutput[entityFullName=$entityFullName, ]';
  }

  GetAllEntitiesHasDynamicPropertyOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    entityFullName =
        json['entityFullName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'entityFullName': entityFullName
     };
  }

  static List<GetAllEntitiesHasDynamicPropertyOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetAllEntitiesHasDynamicPropertyOutput>() : json.map((value) => new GetAllEntitiesHasDynamicPropertyOutput.fromJson(value)).toList();
  }

  static Map<String, GetAllEntitiesHasDynamicPropertyOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetAllEntitiesHasDynamicPropertyOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetAllEntitiesHasDynamicPropertyOutput.fromJson(value));
    }
    return map;
  }
}

