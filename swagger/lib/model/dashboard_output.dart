part of swagger.api;

class DashboardOutput {
  
  String name = null;
  

  List<WidgetOutput> widgets = [];
  
  DashboardOutput();

  @override
  String toString() {
    return 'DashboardOutput[name=$name, widgets=$widgets, ]';
  }

  DashboardOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    widgets =
      WidgetOutput.listFromJson(json['widgets'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'widgets': widgets
     };
  }

  static List<DashboardOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<DashboardOutput>() : json.map((value) => new DashboardOutput.fromJson(value)).toList();
  }

  static Map<String, DashboardOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DashboardOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DashboardOutput.fromJson(value));
    }
    return map;
  }
}

