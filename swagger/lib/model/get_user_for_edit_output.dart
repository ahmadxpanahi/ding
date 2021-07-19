part of swagger.api;

class GetUserForEditOutput {
  
  String? profilePictureId = null;
  

  UserEditDto? user = null;
  

  List<UserRoleDto> roles = [];
  

  List<GetTenantDevicesForUserDto> devices = [];
  

  List<WorkScheduleDto> workSchedules = [];
  

  List<VacationTypeDto> vacationTypes = [];
  

  List<OrganizationUnitDto> allOrganizationUnits = [];
  

  List<String> memberedOrganizationUnits = [];
  
  GetUserForEditOutput();

  @override
  String toString() {
    return 'GetUserForEditOutput[profilePictureId=$profilePictureId, user=$user, roles=$roles, devices=$devices, workSchedules=$workSchedules, vacationTypes=$vacationTypes, allOrganizationUnits=$allOrganizationUnits, memberedOrganizationUnits=$memberedOrganizationUnits, ]';
  }

  GetUserForEditOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    profilePictureId =
        json['profilePictureId']
    ;
    user =
      
      
      new UserEditDto.fromJson(json['user'])
;
    roles =
      UserRoleDto.listFromJson(json['roles'])
;
    devices =
      GetTenantDevicesForUserDto.listFromJson(json['devices'])
;
    workSchedules =
      WorkScheduleDto.listFromJson(json['workSchedules'])
;
    vacationTypes =
      VacationTypeDto.listFromJson(json['vacationTypes'])
;
    allOrganizationUnits =
      OrganizationUnitDto.listFromJson(json['allOrganizationUnits'])
;
    memberedOrganizationUnits =
        (json['memberedOrganizationUnits'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'profilePictureId': profilePictureId,
      'user': user,
      'roles': roles,
      'devices': devices,
      'workSchedules': workSchedules,
      'vacationTypes': vacationTypes,
      'allOrganizationUnits': allOrganizationUnits,
      'memberedOrganizationUnits': memberedOrganizationUnits
     };
  }

  static List<GetUserForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetUserForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetUserForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetUserForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetUserForEditOutput.fromJson(value));
    }
    return map;
  }
}

