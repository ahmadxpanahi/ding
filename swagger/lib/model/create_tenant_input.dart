part of swagger.api;

class CreateTenantInput {
  
  String? tenancyName = null;
  

  String? name = null;
  

  String? adminEmailAddress = null;
  

  String? adminPassword = null;
  

  String? connectionString = null;
  

  bool? shouldChangePasswordOnNextLogin = null;
  

  bool? sendActivationEmail = null;
  

  bool? sendActivationSMS = null;
  

  int? editionId = null;
  

  bool? isActive = null;
  

  DateTime? subscriptionEndDateUtc = null;
  

  bool? isInTrialPeriod = null;
  

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
  
  CreateTenantInput();

  @override
  String toString() {
    return 'CreateTenantInput[tenancyName=$tenancyName, name=$name, adminEmailAddress=$adminEmailAddress, adminPassword=$adminPassword, connectionString=$connectionString, shouldChangePasswordOnNextLogin=$shouldChangePasswordOnNextLogin, sendActivationEmail=$sendActivationEmail, sendActivationSMS=$sendActivationSMS, editionId=$editionId, isActive=$isActive, subscriptionEndDateUtc=$subscriptionEndDateUtc, isInTrialPeriod=$isInTrialPeriod, seniorManagerName=$seniorManagerName, seniorManagerSurname=$seniorManagerSurname, seniorManagerPhoneNumber=$seniorManagerPhoneNumber, countryId=$countryId, stateId=$stateId, cityId=$cityId, address=$address, latitude=$latitude, longitude=$longitude, businessTypes=$businessTypes, hasWebService=$hasWebService, lastEnterExitTime=$lastEnterExitTime, purchasedUsers=$purchasedUsers, usedUsers=$usedUsers, isVIP=$isVIP, ]';
  }

  CreateTenantInput.fromJson(Map<String, dynamic>? json) {
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
    connectionString =
        json['connectionString']
    ;
    shouldChangePasswordOnNextLogin =
        json['shouldChangePasswordOnNextLogin']
    ;
    sendActivationEmail =
        json['sendActivationEmail']
    ;
    sendActivationSMS =
        json['sendActivationSMS']
    ;
    editionId =
        json['editionId']
    ;
    isActive =
        json['isActive']
    ;
    subscriptionEndDateUtc = json['subscriptionEndDateUtc'] == null ? null : DateTime.parse(json['subscriptionEndDateUtc']);
    isInTrialPeriod =
        json['isInTrialPeriod']
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
      'connectionString': connectionString,
      'shouldChangePasswordOnNextLogin': shouldChangePasswordOnNextLogin,
      'sendActivationEmail': sendActivationEmail,
      'sendActivationSMS': sendActivationSMS,
      'editionId': editionId,
      'isActive': isActive,
      'subscriptionEndDateUtc': subscriptionEndDateUtc == null ? '' : subscriptionEndDateUtc!.toUtc().toIso8601String(),
      'isInTrialPeriod': isInTrialPeriod,
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

  static List<CreateTenantInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CreateTenantInput.fromJson(value)).toList();
  }

  static Map<String, CreateTenantInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateTenantInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateTenantInput.fromJson(value));
    }
    return map;
  }
}

