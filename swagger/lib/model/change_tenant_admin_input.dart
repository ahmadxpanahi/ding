part of swagger.api;

class ChangeTenantAdminInput {
  
  int tenantId = null;
  

  int userId = null;
  

  int oldUserId = null;
  

  bool isOldManagerDeactive = null;
  
  ChangeTenantAdminInput();

  @override
  String toString() {
    return 'ChangeTenantAdminInput[tenantId=$tenantId, userId=$userId, oldUserId=$oldUserId, isOldManagerDeactive=$isOldManagerDeactive, ]';
  }

  ChangeTenantAdminInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tenantId =
        json['tenantId']
    ;
    userId =
        json['userId']
    ;
    oldUserId =
        json['oldUserId']
    ;
    isOldManagerDeactive =
        json['isOldManagerDeactive']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenantId': tenantId,
      'userId': userId,
      'oldUserId': oldUserId,
      'isOldManagerDeactive': isOldManagerDeactive
     };
  }

  static List<ChangeTenantAdminInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChangeTenantAdminInput>() : json.map((value) => new ChangeTenantAdminInput.fromJson(value)).toList();
  }

  static Map<String, ChangeTenantAdminInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChangeTenantAdminInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChangeTenantAdminInput.fromJson(value));
    }
    return map;
  }
}

