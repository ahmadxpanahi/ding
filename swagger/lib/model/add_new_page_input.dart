part of swagger.api;

class AddNewPageInput {
  
  String? dashboardName = null;
  

  String? name = null;
  

  String? application = null;
  
  AddNewPageInput();

  @override
  String toString() {
    return 'AddNewPageInput[dashboardName=$dashboardName, name=$name, application=$application, ]';
  }

  AddNewPageInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    dashboardName =
        json['dashboardName']
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
      'name': name,
      'application': application
     };
  }

  static List<AddNewPageInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new AddNewPageInput.fromJson(value)).toList();
  }

  static Map<String, AddNewPageInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AddNewPageInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AddNewPageInput.fromJson(value));
    }
    return map;
  }
}

