part of swagger.api;

class DelegatedImpersonateInput {
  
  int? userDelegationId = null;
  
  DelegatedImpersonateInput();

  @override
  String toString() {
    return 'DelegatedImpersonateInput[userDelegationId=$userDelegationId, ]';
  }

  DelegatedImpersonateInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userDelegationId =
        json['userDelegationId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userDelegationId': userDelegationId
     };
  }

  static List<DelegatedImpersonateInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<DelegatedImpersonateInput>() : json.map((value) => new DelegatedImpersonateInput.fromJson(value)).toList();
  }

  static Map<String, DelegatedImpersonateInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DelegatedImpersonateInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DelegatedImpersonateInput.fromJson(value));
    }
    return map;
  }
}

