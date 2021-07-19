part of swagger.api;

class FindOrganizationUnitUsersInput {
  
  int? organizationUnitId = null;
  

  int? maxResultCount = null;
   // range from 1 to 1000//

  int? skipCount = null;
   // range from 0 to 2147483647//

  String? filter = null;
  
  FindOrganizationUnitUsersInput();

  @override
  String toString() {
    return 'FindOrganizationUnitUsersInput[organizationUnitId=$organizationUnitId, maxResultCount=$maxResultCount, skipCount=$skipCount, filter=$filter, ]';
  }

  FindOrganizationUnitUsersInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    organizationUnitId =
        json['organizationUnitId']
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
      'organizationUnitId': organizationUnitId,
      'maxResultCount': maxResultCount,
      'skipCount': skipCount,
      'filter': filter
     };
  }

  static List<FindOrganizationUnitUsersInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<FindOrganizationUnitUsersInput>() : json.map((value) => new FindOrganizationUnitUsersInput.fromJson(value)).toList();
  }

  static Map<String, FindOrganizationUnitUsersInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FindOrganizationUnitUsersInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FindOrganizationUnitUsersInput.fromJson(value));
    }
    return map;
  }
}

