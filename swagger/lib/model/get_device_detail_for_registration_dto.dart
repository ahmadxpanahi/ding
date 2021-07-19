part of swagger.api;

class GetDeviceDetailForRegistrationDto {
  
  DeviceDto device = null;
  

  String deviceName = null;
  

  String deviceQRCode = null;
  

  String deviceTypeName = null;
  

  int editionId = null;
  

  String editionDisplayName = null;
  

  double price = null;
  

  int dayCount = null;
  

  int locationsCount = null;
  
  GetDeviceDetailForRegistrationDto();

  @override
  String toString() {
    return 'GetDeviceDetailForRegistrationDto[device=$device, deviceName=$deviceName, deviceQRCode=$deviceQRCode, deviceTypeName=$deviceTypeName, editionId=$editionId, editionDisplayName=$editionDisplayName, price=$price, dayCount=$dayCount, locationsCount=$locationsCount, ]';
  }

  GetDeviceDetailForRegistrationDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    device =
      
      
      new DeviceDto.fromJson(json['device'])
;
    deviceName =
        json['deviceName']
    ;
    deviceQRCode =
        json['deviceQRCode']
    ;
    deviceTypeName =
        json['deviceTypeName']
    ;
    editionId =
        json['editionId']
    ;
    editionDisplayName =
        json['editionDisplayName']
    ;
    price =
        json['price'] == null ? null : json['price'].toDouble()
    ;
    dayCount =
        json['dayCount']
    ;
    locationsCount =
        json['locationsCount']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'device': device,
      'deviceName': deviceName,
      'deviceQRCode': deviceQRCode,
      'deviceTypeName': deviceTypeName,
      'editionId': editionId,
      'editionDisplayName': editionDisplayName,
      'price': price,
      'dayCount': dayCount,
      'locationsCount': locationsCount
     };
  }

  static List<GetDeviceDetailForRegistrationDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetDeviceDetailForRegistrationDto>() : json.map((value) => new GetDeviceDetailForRegistrationDto.fromJson(value)).toList();
  }

  static Map<String, GetDeviceDetailForRegistrationDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetDeviceDetailForRegistrationDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetDeviceDetailForRegistrationDto.fromJson(value));
    }
    return map;
  }
}

