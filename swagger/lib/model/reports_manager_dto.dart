part of swagger.api;

class ReportsManagerDto {
  
  DateTime? creationTime = null;
  

  DateTime? subscriptionEndDateUtc = null;
  

  String? seniorManagerName = null;
  

  String? seniorManagerSurname = null;
  

  String? seniorManagerPhoneNumber = null;
  

  String? adminEmailAddress = null;
  

  String? address = null;
  

  String? tenancyName = null;
  

  String? name = null;
  

  bool? isActive = null;
  

  int? countryId = null;
  

  int? stateId = null;
  

  int? cityId = null;
  

  int? id = null;
  
  ReportsManagerDto();

  @override
  String toString() {
    return 'ReportsManagerDto[creationTime=$creationTime, subscriptionEndDateUtc=$subscriptionEndDateUtc, seniorManagerName=$seniorManagerName, seniorManagerSurname=$seniorManagerSurname, seniorManagerPhoneNumber=$seniorManagerPhoneNumber, adminEmailAddress=$adminEmailAddress, address=$address, tenancyName=$tenancyName, name=$name, isActive=$isActive, countryId=$countryId, stateId=$stateId, cityId=$cityId, id=$id, ]';
  }

  ReportsManagerDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
    subscriptionEndDateUtc = json['subscriptionEndDateUtc'] == null ? null : DateTime.parse(json['subscriptionEndDateUtc']);
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
    address =
        json['address']
    ;
    tenancyName =
        json['tenancyName']
    ;
    name =
        json['name']
    ;
    isActive =
        json['isActive']
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
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'creationTime': creationTime == null ? '' : creationTime!.toUtc().toIso8601String(),
      'subscriptionEndDateUtc': subscriptionEndDateUtc == null ? '' : subscriptionEndDateUtc!.toUtc().toIso8601String(),
      'seniorManagerName': seniorManagerName,
      'seniorManagerSurname': seniorManagerSurname,
      'seniorManagerPhoneNumber': seniorManagerPhoneNumber,
      'adminEmailAddress': adminEmailAddress,
      'address': address,
      'tenancyName': tenancyName,
      'name': name,
      'isActive': isActive,
      'countryId': countryId,
      'stateId': stateId,
      'cityId': cityId,
      'id': id
     };
  }

  static List<ReportsManagerDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new ReportsManagerDto.fromJson(value)).toList();
  }

  static Map<String, ReportsManagerDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReportsManagerDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReportsManagerDto.fromJson(value));
    }
    return map;
  }
}

