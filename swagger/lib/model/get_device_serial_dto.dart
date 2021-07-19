part of swagger.api;

class GetDeviceSerialDto {
  
  String encryptedSerialNumber = null;
  

  String encryptedManagerMobileNumber = null;
  
  GetDeviceSerialDto();

  @override
  String toString() {
    return 'GetDeviceSerialDto[encryptedSerialNumber=$encryptedSerialNumber, encryptedManagerMobileNumber=$encryptedManagerMobileNumber, ]';
  }

  GetDeviceSerialDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    encryptedSerialNumber =
        json['encryptedSerialNumber']
    ;
    encryptedManagerMobileNumber =
        json['encryptedManagerMobileNumber']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'encryptedSerialNumber': encryptedSerialNumber,
      'encryptedManagerMobileNumber': encryptedManagerMobileNumber
     };
  }

  static List<GetDeviceSerialDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetDeviceSerialDto>() : json.map((value) => new GetDeviceSerialDto.fromJson(value)).toList();
  }

  static Map<String, GetDeviceSerialDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetDeviceSerialDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetDeviceSerialDto.fromJson(value));
    }
    return map;
  }
}

