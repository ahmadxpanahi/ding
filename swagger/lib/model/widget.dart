part of swagger.api;

class Widget {
  
  String widgetId = null;
  

  int height = null;
  

  int width = null;
  

  int positionX = null;
  

  int positionY = null;
  
  Widget();

  @override
  String toString() {
    return 'Widget[widgetId=$widgetId, height=$height, width=$width, positionX=$positionX, positionY=$positionY, ]';
  }

  Widget.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    widgetId =
        json['widgetId']
    ;
    height =
        json['height']
    ;
    width =
        json['width']
    ;
    positionX =
        json['positionX']
    ;
    positionY =
        json['positionY']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'widgetId': widgetId,
      'height': height,
      'width': width,
      'positionX': positionX,
      'positionY': positionY
     };
  }

  static List<Widget> listFromJson(List<dynamic> json) {
    return json == null ? new List<Widget>() : json.map((value) => new Widget.fromJson(value)).toList();
  }

  static Map<String, Widget> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Widget>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Widget.fromJson(value));
    }
    return map;
  }
}

