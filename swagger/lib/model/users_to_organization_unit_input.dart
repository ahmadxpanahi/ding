part of swagger.api;

class UsersToOrganizationUnitInput {
  
  List<int> userIds = [];
  

  int organizationUnitId = null;
   // range from 1 to //
  UsersToOrganizationUnitInput();

  @override
  String toString() {
    return 'UsersToOrganizationUnitInput[userIds=$userIds, organizationUnitId=$organizationUnitId, ]';
  }

  UsersToOrganizationUnitInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userIds =
        (json['userIds'] as List).map((item) => item as int).toList()
    ;
    organizationUnitId =
        json['organizationUnitId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userIds': userIds,
      'organizationUnitId': organizationUnitId
     };
  }

  static List<UsersToOrganizationUnitInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<UsersToOrganizationUnitInput>() : json.map((value) => new UsersToOrganizationUnitInput.fromJson(value)).toList();
  }

  static Map<String, UsersToOrganizationUnitInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UsersToOrganizationUnitInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UsersToOrganizationUnitInput.fromJson(value));
    }
    return map;
  }
}

