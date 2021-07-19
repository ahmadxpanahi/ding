part of swagger.api;

class SavePageInput {
  
  String dashboardName = null;
  

  String application = null;
  

  List<Page> pages = [];
  
  SavePageInput();

  @override
  String toString() {
    return 'SavePageInput[dashboardName=$dashboardName, application=$application, pages=$pages, ]';
  }

  SavePageInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    dashboardName =
        json['dashboardName']
    ;
    application =
        json['application']
    ;
    pages =
      Page.listFromJson(json['pages'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'dashboardName': dashboardName,
      'application': application,
      'pages': pages
     };
  }

  static List<SavePageInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<SavePageInput>() : json.map((value) => new SavePageInput.fromJson(value)).toList();
  }

  static Map<String, SavePageInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SavePageInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SavePageInput.fromJson(value));
    }
    return map;
  }
}

