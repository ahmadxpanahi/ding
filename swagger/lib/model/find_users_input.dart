part of swagger.api;

class FindUsersInput {
  
  int? tenantId = null;
  

  bool? excludeCurrentUser = null;
  

  int? maxResultCount = null;
   // range from 1 to 1000//

  int? skipCount = null;
   // range from 0 to 2147483647//

  String? filter = null;
  
  FindUsersInput();

  @override
  String toString() {
    return 'FindUsersInput[tenantId=$tenantId, excludeCurrentUser=$excludeCurrentUser, maxResultCount=$maxResultCount, skipCount=$skipCount, filter=$filter, ]';
  }

  FindUsersInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    tenantId =
        json['tenantId']
    ;
    excludeCurrentUser =
        json['excludeCurrentUser']
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
      'tenantId': tenantId,
      'excludeCurrentUser': excludeCurrentUser,
      'maxResultCount': maxResultCount,
      'skipCount': skipCount,
      'filter': filter
     };
  }

  static List<FindUsersInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new FindUsersInput.fromJson(value)).toList();
  }

  static Map<String, FindUsersInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FindUsersInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FindUsersInput.fromJson(value));
    }
    return map;
  }
}

