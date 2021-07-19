part of swagger.api;

class MoveCategoryInput {
  
  int id = null;
   // range from 1 to //

  CategoryType categoryType = null;
  

  int newParentId = null;
  
  MoveCategoryInput();

  @override
  String toString() {
    return 'MoveCategoryInput[id=$id, categoryType=$categoryType, newParentId=$newParentId, ]';
  }

  MoveCategoryInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    categoryType =
      
      
      new CategoryType.fromJson(json['categoryType'])
;
    newParentId =
        json['newParentId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'categoryType': categoryType,
      'newParentId': newParentId
     };
  }

  static List<MoveCategoryInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<MoveCategoryInput>() : json.map((value) => new MoveCategoryInput.fromJson(value)).toList();
  }

  static Map<String, MoveCategoryInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MoveCategoryInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MoveCategoryInput.fromJson(value));
    }
    return map;
  }
}

