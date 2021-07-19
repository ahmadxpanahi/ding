part of swagger.api;

class GetDeviceTypeForEditOutput {
  
  CreateOrEditDeviceTypeDto? deviceType = null;
  
  GetDeviceTypeForEditOutput();

  @override
  String toString() {
    return 'GetDeviceTypeForEditOutput[deviceType=$deviceType, ]';
  }

  GetDeviceTypeForEditOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    deviceType =
      
      
      new CreateOrEditDeviceTypeDto.fromJson(json['deviceType'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'deviceType': deviceType
     };
  }

  static List<GetDeviceTypeForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetDeviceTypeForEditOutput>() : json.map((value) => new GetDeviceTypeForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetDeviceTypeForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetDeviceTypeForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetDeviceTypeForEditOutput.fromJson(value));
    }
    return map;
  }
}

