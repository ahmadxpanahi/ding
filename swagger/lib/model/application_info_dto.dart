part of swagger.api;

class ApplicationInfoDto {
  
  String version = null;
  

  DateTime releaseDate = null;
  

  String currency = null;
  

  String currencySign = null;
  

  bool allowTenantsToChangeEmailSettings = null;
  

  bool userDelegationIsEnabled = null;
  

  Map<String, bool> features = {};
  
  ApplicationInfoDto();

  @override
  String toString() {
    return 'ApplicationInfoDto[version=$version, releaseDate=$releaseDate, currency=$currency, currencySign=$currencySign, allowTenantsToChangeEmailSettings=$allowTenantsToChangeEmailSettings, userDelegationIsEnabled=$userDelegationIsEnabled, features=$features, ]';
  }

  ApplicationInfoDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    version =
        json['version']
    ;
    releaseDate = json['releaseDate'] == null ? null : DateTime.parse(json['releaseDate']);
    currency =
        json['currency']
    ;
    currencySign =
        json['currencySign']
    ;
    allowTenantsToChangeEmailSettings =
        json['allowTenantsToChangeEmailSettings']
    ;
    userDelegationIsEnabled =
        json['userDelegationIsEnabled']
    ;
    features =
        json['features']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'version': version,
      'releaseDate': releaseDate == null ? '' : releaseDate.toUtc().toIso8601String(),
      'currency': currency,
      'currencySign': currencySign,
      'allowTenantsToChangeEmailSettings': allowTenantsToChangeEmailSettings,
      'userDelegationIsEnabled': userDelegationIsEnabled,
      'features': features
     };
  }

  static List<ApplicationInfoDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApplicationInfoDto>() : json.map((value) => new ApplicationInfoDto.fromJson(value)).toList();
  }

  static Map<String, ApplicationInfoDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApplicationInfoDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApplicationInfoDto.fromJson(value));
    }
    return map;
  }
}

