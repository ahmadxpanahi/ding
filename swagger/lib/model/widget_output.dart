part of swagger.api;

class WidgetOutput {
  
  String id = null;
  

  String name = null;
  

  String description = null;
  

  List<WidgetFilterOutput> filters = [];
  
  WidgetOutput();

  @override
  String toString() {
    return 'WidgetOutput[id=$id, name=$name, description=$description, filters=$filters, ]';
  }

  WidgetOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
    description =
        json['description']
    ;
    filters =
      WidgetFilterOutput.listFromJson(json['filters'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'filters': filters
     };
  }

  static List<WidgetOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<WidgetOutput>() : json.map((value) => new WidgetOutput.fromJson(value)).toList();
  }

  static Map<String, WidgetOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WidgetOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WidgetOutput.fromJson(value));
    }
    return map;
  }
}

