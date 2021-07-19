part of swagger.api;

class Page {
  
  String? id = null;
  

  String? name = null;
  

  List<Widget> widgets = [];
  
  Page();

  @override
  String toString() {
    return 'Page[id=$id, name=$name, widgets=$widgets, ]';
  }

  Page.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
    widgets =
      Widget.listFromJson(json['widgets'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'widgets': widgets
     };
  }

  static List<Page> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new Page.fromJson(value)).toList();
  }

  static Map<String, Page> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Page>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Page.fromJson(value));
    }
    return map;
  }
}

