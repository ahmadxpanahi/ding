part of swagger.api;

class RegisterTenantInput {
  
  String? tenancyName = null;
  

  String? name = null;
  

  String? adminEmailAddress = null;
  

  String? adminPassword = null;
  

  String? captchaResponse = null;
  

  SubscriptionStartType? subscriptionStartType = null;
  

  int? editionId = null;
  

  int? deviceId = null;
  

  String? seniorManagerName = null;
  

  String? seniorManagerSurname = null;
  

  String? seniorManagerPhoneNumber = null;
  

  int? countryId = null;
  

  int? stateId = null;
  

  int? cityId = null;
  

  String? address = null;
  

  double? latitude = null;
  

  double? longitude = null;
  

  String? businessTypes = null;
  

  bool? hasWebService = null;
  

  DateTime? lastEnterExitTime = null;
  

  int? purchasedUsers = null;
  

  int? usedUsers = null;
  

  bool? isVIP = null;
  
  RegisterTenantInput();

  @override
  String toString() {
    return 'RegisterTenantInput[tenancyName=$tenancyName, name=$name, adminEmailAddress=$adminEmailAddress, adminPassword=$adminPassword, captchaResponse=$captchaResponse, subscriptionStartType=$subscriptionStartType, editionId=$editionId, deviceId=$deviceId, seniorManagerName=$seniorManagerName, seniorManagerSurname=$seniorManagerSurname, seniorManagerPhoneNumber=$seniorManagerPhoneNumber, countryId=$countryId, stateId=$stateId, cityId=$cityId, address=$address, latitude=$latitude, longitude=$longitude, businessTypes=$businessTypes, hasWebService=$hasWebService, lastEnterExitTime=$lastEnterExitTime, purchasedUsers=$purchasedUsers, usedUsers=$usedUsers, isVIP=$isVIP, ]';
  }

  RegisterTenantInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    tenancyName =
        json['tenancyName']
    ;
    name =
        json['name']
    ;
    adminEmailAddress =
        json['adminEmailAddress']
    ;
    adminPassword =
        json['adminPassword']
    ;
    captchaResponse =
        json['captchaResponse']
    ;
    subscriptionStartType =
      
      
      new SubscriptionStartType.fromJson(json['subscriptionStartType'])
;
    editionId =
        json['editionId']
    ;
    deviceId =
        json['deviceId']
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
      'tenancyName': tenancyName,
      'name': name,
      'adminEmailAddress': adminEmailAddress,
      'adminPassword': adminPassword,
      'captchaResponse': captchaResponse,
      'subscriptionStartType': subscriptionStartType,
      'editionId': editionId,
      'deviceId': deviceId,
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
      'lastEnterExitTime': lastEnterExitTime == null ? '' : lastEnterExitTime!.toUtc().toIso8601String(),
      'purchasedUsers': purchasedUsers,
      'usedUsers': usedUsers,
      'isVIP': isVIP
     };
  }

  static List<RegisterTenantInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<RegisterTenantInput>() : json.map((value) => new RegisterTenantInput.fromJson(value)).toList();
  }

  static Map<String, RegisterTenantInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RegisterTenantInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RegisterTenantInput.fromJson(value));
    }
    return map;
  }
}

