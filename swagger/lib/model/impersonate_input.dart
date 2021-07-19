part of swagger.api;

class ImpersonateInput {
  
  int tenantId = null;
  

  int userId = null;
   // range from 1 to //
  ImpersonateInput();

  @override
  String toString() {
    return 'ImpersonateInput[tenantId=$tenantId, userId=$userId, ]';
  }

  ImpersonateInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tenantId =
        json['tenantId']
    ;
    userId =
        json['userId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenantId': tenantId,
      'userId': userId
     };
  }

  static List<ImpersonateInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<ImpersonateInput>() : json.map((value) => new ImpersonateInput.fromJson(value)).toList();
  }

  static Map<String, ImpersonateInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ImpersonateInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ImpersonateInput.fromJson(value));
    }
    return map;
  }
}

