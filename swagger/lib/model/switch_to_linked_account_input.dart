part of swagger.api;

class SwitchToLinkedAccountInput {
  
  int? targetTenantId = null;
  

  int? targetUserId = null;
   // range from 1 to //
  SwitchToLinkedAccountInput();

  @override
  String toString() {
    return 'SwitchToLinkedAccountInput[targetTenantId=$targetTenantId, targetUserId=$targetUserId, ]';
  }

  SwitchToLinkedAccountInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    targetTenantId =
        json['targetTenantId']
    ;
    targetUserId =
        json['targetUserId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'targetTenantId': targetTenantId,
      'targetUserId': targetUserId
     };
  }

  static List<SwitchToLinkedAccountInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new SwitchToLinkedAccountInput.fromJson(value)).toList();
  }

  static Map<String, SwitchToLinkedAccountInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SwitchToLinkedAccountInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SwitchToLinkedAccountInput.fromJson(value));
    }
    return map;
  }
}

