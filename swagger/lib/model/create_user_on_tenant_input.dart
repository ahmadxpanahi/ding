part of swagger.api;

class CreateUserOnTenantInput {
  
  int? tenantId = null;
  

  UserEditDto? user = null;
  

  bool? sendActivationEmail = null;
  

  bool? setRandomPassword = null;
  
  CreateUserOnTenantInput();

  @override
  String toString() {
    return 'CreateUserOnTenantInput[tenantId=$tenantId, user=$user, sendActivationEmail=$sendActivationEmail, setRandomPassword=$setRandomPassword, ]';
  }

  CreateUserOnTenantInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    tenantId =
        json['tenantId']
    ;
    user =
      
      
      new UserEditDto.fromJson(json['user'])
;
    sendActivationEmail =
        json['sendActivationEmail']
    ;
    setRandomPassword =
        json['setRandomPassword']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenantId': tenantId,
      'user': user,
      'sendActivationEmail': sendActivationEmail,
      'setRandomPassword': setRandomPassword
     };
  }

  static List<CreateUserOnTenantInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateUserOnTenantInput>() : json.map((value) => new CreateUserOnTenantInput.fromJson(value)).toList();
  }

  static Map<String, CreateUserOnTenantInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateUserOnTenantInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateUserOnTenantInput.fromJson(value));
    }
    return map;
  }
}

