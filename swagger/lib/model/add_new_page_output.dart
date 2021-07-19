part of swagger.api;

class AddNewPageOutput {
  
  String? pageId = null;
  
  AddNewPageOutput();

  @override
  String toString() {
    return 'AddNewPageOutput[pageId=$pageId, ]';
  }

  AddNewPageOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    pageId =
        json['pageId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'pageId': pageId
     };
  }

  static List<AddNewPageOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new AddNewPageOutput.fromJson(value)).toList();
  }

  static Map<String, AddNewPageOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AddNewPageOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AddNewPageOutput.fromJson(value));
    }
    return map;
  }
}

