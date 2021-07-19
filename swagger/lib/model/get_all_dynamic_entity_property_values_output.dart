part of swagger.api;

class GetAllDynamicEntityPropertyValuesOutput {
  
  List<GetAllDynamicEntityPropertyValuesOutputItem> items = [];
  
  GetAllDynamicEntityPropertyValuesOutput();

  @override
  String toString() {
    return 'GetAllDynamicEntityPropertyValuesOutput[items=$items, ]';
  }

  GetAllDynamicEntityPropertyValuesOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      GetAllDynamicEntityPropertyValuesOutputItem.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<GetAllDynamicEntityPropertyValuesOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetAllDynamicEntityPropertyValuesOutput>() : json.map((value) => new GetAllDynamicEntityPropertyValuesOutput.fromJson(value)).toList();
  }

  static Map<String, GetAllDynamicEntityPropertyValuesOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetAllDynamicEntityPropertyValuesOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetAllDynamicEntityPropertyValuesOutput.fromJson(value));
    }
    return map;
  }
}

