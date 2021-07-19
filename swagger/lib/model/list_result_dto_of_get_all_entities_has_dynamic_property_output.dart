part of swagger.api;

class ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput {
  
  List<GetAllEntitiesHasDynamicPropertyOutput> items = [];
  
  ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput();

  @override
  String toString() {
    return 'ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput[items=$items, ]';
  }

  ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      GetAllEntitiesHasDynamicPropertyOutput.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfGetAllEntitiesHasDynamicPropertyOutput.fromJson(value));
    }
    return map;
  }
}

