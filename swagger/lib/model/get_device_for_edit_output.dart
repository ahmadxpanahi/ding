part of swagger.api;

class GetDeviceForEditOutput {
  
  CreateOrEditDeviceDto device = null;
  

  String deviceTypeTitle = null;
  
  GetDeviceForEditOutput();

  @override
  String toString() {
    return 'GetDeviceForEditOutput[device=$device, deviceTypeTitle=$deviceTypeTitle, ]';
  }

  GetDeviceForEditOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    device =
      
      
      new CreateOrEditDeviceDto.fromJson(json['device'])
;
    deviceTypeTitle =
        json['deviceTypeTitle']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'device': device,
      'deviceTypeTitle': deviceTypeTitle
     };
  }

  static List<GetDeviceForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetDeviceForEditOutput>() : json.map((value) => new GetDeviceForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetDeviceForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetDeviceForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetDeviceForEditOutput.fromJson(value));
    }
    return map;
  }
}

