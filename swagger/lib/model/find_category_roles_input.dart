part of swagger.api;

class FindCategoryRolesInput {
  
  int? categoryId = null;
  

  int? maxResultCount = null;
   // range from 1 to 1000//

  int? skipCount = null;
   // range from 0 to 2147483647//

  String? filter = null;
  
  FindCategoryRolesInput();

  @override
  String toString() {
    return 'FindCategoryRolesInput[categoryId=$categoryId, maxResultCount=$maxResultCount, skipCount=$skipCount, filter=$filter, ]';
  }

  FindCategoryRolesInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    categoryId =
        json['categoryId']
    ;
    maxResultCount =
        json['maxResultCount']
    ;
    skipCount =
        json['skipCount']
    ;
    filter =
        json['filter']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'categoryId': categoryId,
      'maxResultCount': maxResultCount,
      'skipCount': skipCount,
      'filter': filter
     };
  }

  static List<FindCategoryRolesInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<FindCategoryRolesInput>() : json.map((value) => new FindCategoryRolesInput.fromJson(value)).toList();
  }

  static Map<String, FindCategoryRolesInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FindCategoryRolesInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FindCategoryRolesInput.fromJson(value));
    }
    return map;
  }
}

