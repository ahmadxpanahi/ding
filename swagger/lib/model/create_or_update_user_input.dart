part of swagger.api;

class CreateOrUpdateUserInput {
  
  UserEditDto user = null;
  

  List<String> assignedRoleNames = [];
  

  List<String> assignedDevicesId = [];
  

  List<String> assignedWorkSchedulesId = [];
  

  bool sendActivationEmail = null;
  

  bool setRandomPassword = null;
  

  List<int> organizationUnits = [];
  
  CreateOrUpdateUserInput();

  @override
  String toString() {
    return 'CreateOrUpdateUserInput[user=$user, assignedRoleNames=$assignedRoleNames, assignedDevicesId=$assignedDevicesId, assignedWorkSchedulesId=$assignedWorkSchedulesId, sendActivationEmail=$sendActivationEmail, setRandomPassword=$setRandomPassword, organizationUnits=$organizationUnits, ]';
  }

  CreateOrUpdateUserInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    user =
      
      
      new UserEditDto.fromJson(json['user'])
;
    assignedRoleNames =
        (json['assignedRoleNames'] as List).map((item) => item as String).toList()
    ;
    assignedDevicesId =
        (json['assignedDevicesId'] as List).map((item) => item as String).toList()
    ;
    assignedWorkSchedulesId =
        (json['assignedWorkSchedulesId'] as List).map((item) => item as String).toList()
    ;
    sendActivationEmail =
        json['sendActivationEmail']
    ;
    setRandomPassword =
        json['setRandomPassword']
    ;
    organizationUnits =
        (json['organizationUnits'] as List).map((item) => item as int).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'assignedRoleNames': assignedRoleNames,
      'assignedDevicesId': assignedDevicesId,
      'assignedWorkSchedulesId': assignedWorkSchedulesId,
      'sendActivationEmail': sendActivationEmail,
      'setRandomPassword': setRandomPassword,
      'organizationUnits': organizationUnits
     };
  }

  static List<CreateOrUpdateUserInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateOrUpdateUserInput>() : json.map((value) => new CreateOrUpdateUserInput.fromJson(value)).toList();
  }

  static Map<String, CreateOrUpdateUserInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrUpdateUserInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrUpdateUserInput.fromJson(value));
    }
    return map;
  }
}

