part of swagger.api;

class RenamePageInput {
  
  String? dashboardName = null;
  

  String? id = null;
  

  String? name = null;
  

  String? application = null;
  
  RenamePageInput();

  @override
  String toString() {
    return 'RenamePageInput[dashboardName=$dashboardName, id=$id, name=$name, application=$application, ]';
  }

  RenamePageInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    dashboardName =
        json['dashboardName']
    ;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
    application =
        json['application']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'dashboardName': dashboardName,
      'id': id,
      'name': name,
      'application': application
     };
  }

  static List<RenamePageInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new RenamePageInput.fromJson(value)).toList();
  }

  static Map<String, RenamePageInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RenamePageInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RenamePageInput.fromJson(value));
    }
    return map;
  }
}

