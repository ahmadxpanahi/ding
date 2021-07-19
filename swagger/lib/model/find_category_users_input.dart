part of swagger.api;

class FindCategoryUsersInput {
  
  int categoryId = null;
  

  int maxResultCount = null;
   // range from 1 to 1000//

  int skipCount = null;
   // range from 0 to 2147483647//

  String filter = null;
  
  FindCategoryUsersInput();

  @override
  String toString() {
    return 'FindCategoryUsersInput[categoryId=$categoryId, maxResultCount=$maxResultCount, skipCount=$skipCount, filter=$filter, ]';
  }

  FindCategoryUsersInput.fromJson(Map<String, dynamic> json) {
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

  static List<FindCategoryUsersInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<FindCategoryUsersInput>() : json.map((value) => new FindCategoryUsersInput.fromJson(value)).toList();
  }

  static Map<String, FindCategoryUsersInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FindCategoryUsersInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FindCategoryUsersInput.fromJson(value));
    }
    return map;
  }
}

