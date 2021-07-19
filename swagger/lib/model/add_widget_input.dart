part of swagger.api;

class AddWidgetInput {
  
  String? widgetId = null;
  

  String? pageId = null;
  

  String? dashboardName = null;
  

  int? width = null;
  

  int? height = null;
  

  String? application = null;
  
  AddWidgetInput();

  @override
  String toString() {
    return 'AddWidgetInput[widgetId=$widgetId, pageId=$pageId, dashboardName=$dashboardName, width=$width, height=$height, application=$application, ]';
  }

  AddWidgetInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    widgetId =
        json['widgetId']
    ;
    pageId =
        json['pageId']
    ;
    dashboardName =
        json['dashboardName']
    ;
    width =
        json['width']
    ;
    height =
        json['height']
    ;
    application =
        json['application']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'widgetId': widgetId,
      'pageId': pageId,
      'dashboardName': dashboardName,
      'width': width,
      'height': height,
      'application': application
     };
  }

  static List<AddWidgetInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new AddWidgetInput.fromJson(value)).toList();
  }

  static Map<String, AddWidgetInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AddWidgetInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AddWidgetInput.fromJson(value));
    }
    return map;
  }
}

