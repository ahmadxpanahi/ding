part of swagger.api;

class TenantListDto {
  
  String tenancyName = null;
  

  String name = null;
  

  String editionDisplayName = null;
  

  String connectionString = null;
  

  bool isActive = null;
  

  DateTime creationTime = null;
  

  DateTime subscriptionEndDateUtc = null;
  

  int editionId = null;
  

  bool isInTrialPeriod = null;
  

  int seniorManagerUserId = null;
  

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
  
  TenantListDto();

  @override
  String toString() {
    return 'TenantListDto[tenancyName=$tenancyName, name=$name, editionDisplayName=$editionDisplayName, connectionString=$connectionString, isActive=$isActive, creationTime=$creationTime, subscriptionEndDateUtc=$subscriptionEndDateUtc, editionId=$editionId, isInTrialPeriod=$isInTrialPeriod, seniorManagerUserId=$seniorManagerUserId, seniorManagerName=$seniorManagerName, seniorManagerSurname=$seniorManagerSurname, seniorManagerPhoneNumber=$seniorManagerPhoneNumber, adminEmailAddress=$adminEmailAddress, countryId=$countryId, stateId=$stateId, cityId=$cityId, address=$address, latitude=$latitude, longitude=$longitude, businessTypes=$businessTypes, hasWebService=$hasWebService, lastEnterExitTime=$lastEnterExitTime, purchasedUsers=$purchasedUsers, usedUsers=$usedUsers, isVIP=$isVIP, id=$id, ]';
  }

  TenantListDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tenancyName =
        json['tenancyName']
    ;
    name =
        json['name']
    ;
    editionDisplayName =
        json['editionDisplayName']
    ;
    connectionString =
        json['connectionString']
    ;
    isActive =
        json['isActive']
    ;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
    subscriptionEndDateUtc = json['subscriptionEndDateUtc'] == null ? null : DateTime.parse(json['subscriptionEndDateUtc']);
    editionId =
        json['editionId']
    ;
    isInTrialPeriod =
        json['isInTrialPeriod']
    ;
    seniorManagerUserId =
        json['seniorManagerUserId']
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
      'editionDisplayName': editionDisplayName,
      'connectionString': connectionString,
      'isActive': isActive,
      'creationTime': creationTime == null ? '' : creationTime.toUtc().toIso8601String(),
      'subscriptionEndDateUtc': subscriptionEndDateUtc == null ? '' : subscriptionEndDateUtc.toUtc().toIso8601String(),
      'editionId': editionId,
      'isInTrialPeriod': isInTrialPeriod,
      'seniorManagerUserId': seniorManagerUserId,
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

  static List<TenantListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<TenantListDto>() : json.map((value) => new TenantListDto.fromJson(value)).toList();
  }

  static Map<String, TenantListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantListDto.fromJson(value));
    }
    return map;
  }
}

