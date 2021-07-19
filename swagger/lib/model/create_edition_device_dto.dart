part of swagger.api;

class CreateEditionDeviceDto {
  
  int editionId = null;
  

  List<AllAvailableDevicesDto> devices = [];
  

  int deviceId = null;
  

  int purchasingResourceId = null;
  

  EditionType editionType = null;
  

  String editionName = null;
  

  double editionPrice = null;
  

  int dayCount = null;
  

  int trialDayCount = null;
  

  int waitingDayAfterExpire = null;
  

  int expiringEditionId = null;
  

  int maxUserCount = null;
  

  int maxLocationCount = null;
  

  int id = null;
  
  CreateEditionDeviceDto();

  @override
  String toString() {
    return 'CreateEditionDeviceDto[editionId=$editionId, devices=$devices, deviceId=$deviceId, purchasingResourceId=$purchasingResourceId, editionType=$editionType, editionName=$editionName, editionPrice=$editionPrice, dayCount=$dayCount, trialDayCount=$trialDayCount, waitingDayAfterExpire=$waitingDayAfterExpire, expiringEditionId=$expiringEditionId, maxUserCount=$maxUserCount, maxLocationCount=$maxLocationCount, id=$id, ]';
  }

  CreateEditionDeviceDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    editionId =
        json['editionId']
    ;
    devices =
      AllAvailableDevicesDto.listFromJson(json['devices'])
;
    deviceId =
        json['deviceId']
    ;
    purchasingResourceId =
        json['purchasingResourceId']
    ;
    editionType =
      
      
      new EditionType.fromJson(json['editionType'])
;
    editionName =
        json['editionName']
    ;
    editionPrice =
        json['editionPrice'] == null ? null : json['editionPrice'].toDouble()
    ;
    dayCount =
        json['dayCount']
    ;
    trialDayCount =
        json['trialDayCount']
    ;
    waitingDayAfterExpire =
        json['waitingDayAfterExpire']
    ;
    expiringEditionId =
        json['expiringEditionId']
    ;
    maxUserCount =
        json['maxUserCount']
    ;
    maxLocationCount =
        json['maxLocationCount']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'editionId': editionId,
      'devices': devices,
      'deviceId': deviceId,
      'purchasingResourceId': purchasingResourceId,
      'editionType': editionType,
      'editionName': editionName,
      'editionPrice': editionPrice,
      'dayCount': dayCount,
      'trialDayCount': trialDayCount,
      'waitingDayAfterExpire': waitingDayAfterExpire,
      'expiringEditionId': expiringEditionId,
      'maxUserCount': maxUserCount,
      'maxLocationCount': maxLocationCount,
      'id': id
     };
  }

  static List<CreateEditionDeviceDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateEditionDeviceDto>() : json.map((value) => new CreateEditionDeviceDto.fromJson(value)).toList();
  }

  static Map<String, CreateEditionDeviceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateEditionDeviceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateEditionDeviceDto.fromJson(value));
    }
    return map;
  }
}

