part of swagger.api;

class Dashboard {
  
  String? dashboardName = null;
  

  List<Page> pages = [];
  
  Dashboard();

  @override
  String toString() {
    return 'Dashboard[dashboardName=$dashboardName, pages=$pages, ]';
  }

  Dashboard.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    dashboardName =
        json['dashboardName']
    ;
    pages =
      Page.listFromJson(json['pages'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'dashboardName': dashboardName,
      'pages': pages
     };
  }

  static List<Dashboard> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new Dashboard.fromJson(value)).toList();
  }

  static Map<String, Dashboard> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Dashboard>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Dashboard.fromJson(value));
    }
    return map;
  }
}

