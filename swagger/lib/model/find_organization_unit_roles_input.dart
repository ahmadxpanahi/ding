part of swagger.api;

class FindOrganizationUnitRolesInput {
  
  int organizationUnitId = null;
  

  int maxResultCount = null;
   // range from 1 to 1000//

  int skipCount = null;
   // range from 0 to 2147483647//

  String filter = null;
  
  FindOrganizationUnitRolesInput();

  @override
  String toString() {
    return 'FindOrganizationUnitRolesInput[organizationUnitId=$organizationUnitId, maxResultCount=$maxResultCount, skipCount=$skipCount, filter=$filter, ]';
  }

  FindOrganizationUnitRolesInput.fromJson(Map<String, dynamic> json) {
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

  static List<FindOrganizationUnitRolesInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<FindOrganizationUnitRolesInput>() : json.map((value) => new FindOrganizationUnitRolesInput.fromJson(value)).toList();
  }

  static Map<String, FindOrganizationUnitRolesInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FindOrganizationUnitRolesInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FindOrganizationUnitRolesInput.fromJson(value));
    }
    return map;
  }
}

