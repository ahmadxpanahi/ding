part of swagger.api;

class GetCurrentLoginInformationsOutput {
  
  UserLoginInfoDto user = null;
  

  UserLoginInfoDto impersonatorUser = null;
  

  TenantLoginInfoDto tenant = null;
  

  TenantLoginInfoDto impersonatorTenant = null;
  

  ApplicationInfoDto application = null;
  

  UiCustomizationSettingsDto theme = null;
  
  GetCurrentLoginInformationsOutput();

  @override
  String toString() {
    return 'GetCurrentLoginInformationsOutput[user=$user, impersonatorUser=$impersonatorUser, tenant=$tenant, impersonatorTenant=$impersonatorTenant, application=$application, theme=$theme, ]';
  }

  GetCurrentLoginInformationsOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    user =
      
      
      new UserLoginInfoDto.fromJson(json['user'])
;
    impersonatorUser =
      
      
      new UserLoginInfoDto.fromJson(json['impersonatorUser'])
;
    tenant =
      
      
      new TenantLoginInfoDto.fromJson(json['tenant'])
;
    impersonatorTenant =
      
      
      new TenantLoginInfoDto.fromJson(json['impersonatorTenant'])
;
    application =
      
      
      new ApplicationInfoDto.fromJson(json['application'])
;
    theme =
      
      
      new UiCustomizationSettingsDto.fromJson(json['theme'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'impersonatorUser': impersonatorUser,
      'tenant': tenant,
      'impersonatorTenant': impersonatorTenant,
      'application': application,
      'theme': theme
     };
  }

  static List<GetCurrentLoginInformationsOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetCurrentLoginInformationsOutput>() : json.map((value) => new GetCurrentLoginInformationsOutput.fromJson(value)).toList();
  }

  static Map<String, GetCurrentLoginInformationsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetCurrentLoginInformationsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetCurrentLoginInformationsOutput.fromJson(value));
    }
    return map;
  }
}

