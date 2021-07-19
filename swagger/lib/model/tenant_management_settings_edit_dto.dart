part of swagger.api;

class TenantManagementSettingsEditDto {
  
  bool? allowSelfRegistration = null;
  

  bool? isNewRegisteredTenantActiveByDefault = null;
  

  bool? useCaptchaOnRegistration = null;
  

  int? defaultEditionId = null;
  
  TenantManagementSettingsEditDto();

  @override
  String toString() {
    return 'TenantManagementSettingsEditDto[allowSelfRegistration=$allowSelfRegistration, isNewRegisteredTenantActiveByDefault=$isNewRegisteredTenantActiveByDefault, useCaptchaOnRegistration=$useCaptchaOnRegistration, defaultEditionId=$defaultEditionId, ]';
  }

  TenantManagementSettingsEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    allowSelfRegistration =
        json['allowSelfRegistration']
    ;
    isNewRegisteredTenantActiveByDefault =
        json['isNewRegisteredTenantActiveByDefault']
    ;
    useCaptchaOnRegistration =
        json['useCaptchaOnRegistration']
    ;
    defaultEditionId =
        json['defaultEditionId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'allowSelfRegistration': allowSelfRegistration,
      'isNewRegisteredTenantActiveByDefault': isNewRegisteredTenantActiveByDefault,
      'useCaptchaOnRegistration': useCaptchaOnRegistration,
      'defaultEditionId': defaultEditionId
     };
  }

  static List<TenantManagementSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<TenantManagementSettingsEditDto>() : json.map((value) => new TenantManagementSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, TenantManagementSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantManagementSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantManagementSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

