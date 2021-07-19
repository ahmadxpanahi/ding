part of swagger.api;

class RegisterTenantOutput {
  
  int tenantId = null;
  

  String tenancyName = null;
  

  String name = null;
  

  String userName = null;
  

  String emailAddress = null;
  

  bool isTenantActive = null;
  

  bool isActive = null;
  

  bool isEmailConfirmationRequired = null;
  

  String seniorManagerName = null;
  

  String seniorManagerSurname = null;
  

  String seniorManagerPhoneNumber = null;
  

  int countryId = null;
  

  int stateId = null;
  

  int cityId = null;
  

  String address = null;
  

  double latitude = null;
  

  double longitude = null;
  

  String businessTypes = null;
  

  bool hasWebService = null;
  

  DateTime lastEnterExitTime = null;
  

  int purchasedUsers = null;
  

  int usedUsers = null;
  

  bool isVIP = null;
  
  RegisterTenantOutput();

  @override
  String toString() {
    return 'RegisterTenantOutput[tenantId=$tenantId, tenancyName=$tenancyName, name=$name, userName=$userName, emailAddress=$emailAddress, isTenantActive=$isTenantActive, isActive=$isActive, isEmailConfirmationRequired=$isEmailConfirmationRequired, seniorManagerName=$seniorManagerName, seniorManagerSurname=$seniorManagerSurname, seniorManagerPhoneNumber=$seniorManagerPhoneNumber, countryId=$countryId, stateId=$stateId, cityId=$cityId, address=$address, latitude=$latitude, longitude=$longitude, businessTypes=$businessTypes, hasWebService=$hasWebService, lastEnterExitTime=$lastEnterExitTime, purchasedUsers=$purchasedUsers, usedUsers=$usedUsers, isVIP=$isVIP, ]';
  }

  RegisterTenantOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tenantId =
        json['tenantId']
    ;
    tenancyName =
        json['tenancyName']
    ;
    name =
        json['name']
    ;
    userName =
        json['userName']
    ;
    emailAddress =
        json['emailAddress']
    ;
    isTenantActive =
        json['isTenantActive']
    ;
    isActive =
        json['isActive']
    ;
    isEmailConfirmationRequired =
        json['isEmailConfirmationRequired']
    ;
    seniorManagerName =
        json['seniorManagerName']
    ;
    seniorManagerSurname =
        json['seniorManagerSurname']
    ;
    seniorManagerPhoneNumber =
        json['seniorManagerPhoneNumber']
    ;
    countryId =
        json['countryId']
    ;
    stateId =
        json['stateId']
    ;
    cityId =
        json['cityId']
    ;
    address =
        json['address']
    ;
    latitude =
        json['latitude'] == null ? null : json['latitude'].toDouble()
    ;
    longitude =
        json['longitude'] == null ? null : json['longitude'].toDouble()
    ;
    businessTypes =
        json['businessTypes']
    ;
    hasWebService =
        json['hasWebService']
    ;
    lastEnterExitTime = json['lastEnterExitTime'] == null ? null : DateTime.parse(json['lastEnterExitTime']);
    purchasedUsers =
        json['purchasedUsers']
    ;
    usedUsers =
        json['usedUsers']
    ;
    isVIP =
        json['isVIP']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenantId': tenantId,
      'tenancyName': tenancyName,
      'name': name,
      'userName': userName,
      'emailAddress': emailAddress,
      'isTenantActive': isTenantActive,
      'isActive': isActive,
      'isEmailConfirmationRequired': isEmailConfirmationRequired,
      'seniorManagerName': seniorManagerName,
      'seniorManagerSurname': seniorManagerSurname,
      'seniorManagerPhoneNumber': seniorManagerPhoneNumber,
      'countryId': countryId,
      'stateId': stateId,
      'cityId': cityId,
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
      'businessTypes': businessTypes,
      'hasWebService': hasWebService,
      'lastEnterExitTime': lastEnterExitTime == null ? '' : lastEnterExitTime.toUtc().toIso8601String(),
      'purchasedUsers': purchasedUsers,
      'usedUsers': usedUsers,
      'isVIP': isVIP
     };
  }

  static List<RegisterTenantOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<RegisterTenantOutput>() : json.map((value) => new RegisterTenantOutput.fromJson(value)).toList();
  }

  static Map<String, RegisterTenantOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RegisterTenantOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RegisterTenantOutput.fromJson(value));
    }
    return map;
  }
}

