part of swagger.api;

class GetTenantDeviceForViewDto {
  
  TenantDeviceDto tenantDevice = null;
  

  String deviceSerialNumber = null;
  

  String tenantName = null;
  

  String tenancyCodeName = null;
  

  String deviceName = null;
  

  String deviceQRCode = null;
  

  String deviceTypeName = null;
  

  DeviceStatus deviceStatus = null;
  

  String editionDisplayName = null;
  

  double price = null;
  

  int dayCount = null;
  

  int maxUserCount = null;
  

  int maxLocationCount = null;
  

  int usedUserCount = null;
  

  int usedLocationCount = null;
  

  String purchasingResourceTitle = null;
  
  GetTenantDeviceForViewDto();

  @override
  String toString() {
    return 'GetTenantDeviceForViewDto[tenantDevice=$tenantDevice, deviceSerialNumber=$deviceSerialNumber, tenantName=$tenantName, tenancyCodeName=$tenancyCodeName, deviceName=$deviceName, deviceQRCode=$deviceQRCode, deviceTypeName=$deviceTypeName, deviceStatus=$deviceStatus, editionDisplayName=$editionDisplayName, price=$price, dayCount=$dayCount, maxUserCount=$maxUserCount, maxLocationCount=$maxLocationCount, usedUserCount=$usedUserCount, usedLocationCount=$usedLocationCount, purchasingResourceTitle=$purchasingResourceTitle, ]';
  }

  GetTenantDeviceForViewDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tenantDevice =
      
      
      new TenantDeviceDto.fromJson(json['tenantDevice'])
;
    deviceSerialNumber =
        json['deviceSerialNumber']
    ;
    tenantName =
        json['tenantName']
    ;
    tenancyCodeName =
        json['tenancyCodeName']
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
    deviceStatus =
      
      
      new DeviceStatus.fromJson(json['deviceStatus'])
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
    maxUserCount =
        json['maxUserCount']
    ;
    maxLocationCount =
        json['maxLocationCount']
    ;
    usedUserCount =
        json['usedUserCount']
    ;
    usedLocationCount =
        json['usedLocationCount']
    ;
    purchasingResourceTitle =
        json['purchasingResourceTitle']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenantDevice': tenantDevice,
      'deviceSerialNumber': deviceSerialNumber,
      'tenantName': tenantName,
      'tenancyCodeName': tenancyCodeName,
      'deviceName': deviceName,
      'deviceQRCode': deviceQRCode,
      'deviceTypeName': deviceTypeName,
      'deviceStatus': deviceStatus,
      'editionDisplayName': editionDisplayName,
      'price': price,
      'dayCount': dayCount,
      'maxUserCount': maxUserCount,
      'maxLocationCount': maxLocationCount,
      'usedUserCount': usedUserCount,
      'usedLocationCount': usedLocationCount,
      'purchasingResourceTitle': purchasingResourceTitle
     };
  }

  static List<GetTenantDeviceForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetTenantDeviceForViewDto>() : json.map((value) => new GetTenantDeviceForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetTenantDeviceForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetTenantDeviceForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetTenantDeviceForViewDto.fromJson(value));
    }
    return map;
  }
}

