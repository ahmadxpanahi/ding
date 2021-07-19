part of swagger.api;

class EditEditionDeviceFeaturesDto {
  
  int? editionId = null;
  

  int? deviceId = null;
  

  String? editionName = null;
  

  int? dayCount = null;
  

  int? trialDayCount = null;
  

  int? waitingDayAfterExpire = null;
  

  int? maxUserCount = null;
  

  int? maxLocationCount = null;
  

  int? id = null;
  
  EditEditionDeviceFeaturesDto();

  @override
  String toString() {
    return 'EditEditionDeviceFeaturesDto[editionId=$editionId, deviceId=$deviceId, editionName=$editionName, dayCount=$dayCount, trialDayCount=$trialDayCount, waitingDayAfterExpire=$waitingDayAfterExpire, maxUserCount=$maxUserCount, maxLocationCount=$maxLocationCount, id=$id, ]';
  }

  EditEditionDeviceFeaturesDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    editionId =
        json['editionId']
    ;
    deviceId =
        json['deviceId']
    ;
    editionName =
        json['editionName']
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
      'deviceId': deviceId,
      'editionName': editionName,
      'dayCount': dayCount,
      'trialDayCount': trialDayCount,
      'waitingDayAfterExpire': waitingDayAfterExpire,
      'maxUserCount': maxUserCount,
      'maxLocationCount': maxLocationCount,
      'id': id
     };
  }

  static List<EditEditionDeviceFeaturesDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<EditEditionDeviceFeaturesDto>() : json.map((value) => new EditEditionDeviceFeaturesDto.fromJson(value)).toList();
  }

  static Map<String, EditEditionDeviceFeaturesDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EditEditionDeviceFeaturesDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EditEditionDeviceFeaturesDto.fromJson(value));
    }
    return map;
  }
}

