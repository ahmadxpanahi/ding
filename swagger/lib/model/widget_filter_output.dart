part of swagger.api;

class WidgetFilterOutput {
  
  String? id = null;
  

  String? name = null;
  
  WidgetFilterOutput();

  @override
  String toString() {
    return 'WidgetFilterOutput[id=$id, name=$name, ]';
  }

  WidgetFilterOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name
     };
  }

  static List<WidgetFilterOutput> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new WidgetFilterOutput.fromJson(value)).toList();
  }

  static Map<String, WidgetFilterOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WidgetFilterOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WidgetFilterOutput.fromJson(value));
    }
    return map;
  }
}

