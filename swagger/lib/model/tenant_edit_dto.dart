part of swagger.api;

class TenantEditDto {
  
  String tenancyName = null;
  

  String name = null;
  

  String connectionString = null;
  

  int editionId = null;
  

  bool isActive = null;
  

  DateTime subscriptionEndDateUtc = null;
  

  bool isInTrialPeriod = null;
  

  String seniorManagerName = null;
  

  String seniorManagerSurname = null;
  

  String seniorManagerPhoneNumber = null;
  

  String adminEmailAddress = null;
  

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
  

  int id = null;
  
  TenantEditDto();

  @override
  String toString() {
    return 'TenantEditDto[tenancyName=$tenancyName, name=$name, connectionString=$connectionString, editionId=$editionId, isActive=$isActive, subscriptionEndDateUtc=$subscriptionEndDateUtc, isInTrialPeriod=$isInTrialPeriod, seniorManagerName=$seniorManagerName, seniorManagerSurname=$seniorManagerSurname, seniorManagerPhoneNumber=$seniorManagerPhoneNumber, adminEmailAddress=$adminEmailAddress, countryId=$countryId, stateId=$stateId, cityId=$cityId, address=$address, latitude=$latitude, longitude=$longitude, businessTypes=$businessTypes, hasWebService=$hasWebService, lastEnterExitTime=$lastEnterExitTime, purchasedUsers=$purchasedUsers, usedUsers=$usedUsers, isVIP=$isVIP, id=$id, ]';
  }

  TenantEditDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tenancyName =
        json['tenancyName']
    ;
    name =
        json['name']
    ;
    connectionString =
        json['connectionString']
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
    adminEmailAddress =
        json['adminEmailAddress']
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
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenancyName': tenancyName,
      'name': name,
      'connectionString': connectionString,
      'editionId': editionId,
      'isActive': isActive,
      'subscriptionEndDateUtc': subscriptionEndDateUtc == null ? '' : subscriptionEndDateUtc.toUtc().toIso8601String(),
      'isInTrialPeriod': isInTrialPeriod,
      'seniorManagerName': seniorManagerName,
      'seniorManagerSurname': seniorManagerSurname,
      'seniorManagerPhoneNumber': seniorManagerPhoneNumber,
      'adminEmailAddress': adminEmailAddress,
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
      'isVIP': isVIP,
      'id': id
     };
  }

  static List<TenantEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<TenantEditDto>() : json.map((value) => new TenantEditDto.fromJson(value)).toList();
  }

  static Map<String, TenantEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantEditDto.fromJson(value));
    }
    return map;
  }
}

