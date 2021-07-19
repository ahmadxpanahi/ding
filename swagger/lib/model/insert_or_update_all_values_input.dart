part of swagger.api;

class InsertOrUpdateAllValuesInput {
  
  List<InsertOrUpdateAllValuesInputItem> items = [];
  
  InsertOrUpdateAllValuesInput();

  @override
  String toString() {
    return 'InsertOrUpdateAllValuesInput[items=$items, ]';
  }

  InsertOrUpdateAllValuesInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      InsertOrUpdateAllValuesInputItem.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<InsertOrUpdateAllValuesInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new InsertOrUpdateAllValuesInput.fromJson(value)).toList();
  }

  static Map<String, InsertOrUpdateAllValuesInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InsertOrUpdateAllValuesInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InsertOrUpdateAllValuesInput.fromJson(value));
    }
    return map;
  }
}

