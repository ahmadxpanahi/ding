part of swagger.api;

class RolesToCategoryInput {
  
  List<int> roleIds = [];
  

  int categoryId = null;
   // range from 1 to //
  RolesToCategoryInput();

  @override
  String toString() {
    return 'RolesToCategoryInput[roleIds=$roleIds, categoryId=$categoryId, ]';
  }

  RolesToCategoryInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    roleIds =
        (json['roleIds'] as List).map((item) => item as int).toList()
    ;
    categoryId =
        json['categoryId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'roleIds': roleIds,
      'categoryId': categoryId
     };
  }

  static List<RolesToCategoryInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<RolesToCategoryInput>() : json.map((value) => new RolesToCategoryInput.fromJson(value)).toList();
  }

  static Map<String, RolesToCategoryInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RolesToCategoryInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RolesToCategoryInput.fromJson(value));
    }
    return map;
  }
}

