part of swagger.api;

class SendVerificationSmsInputDto {
  
  String? phoneNumber = null;
  
  SendVerificationSmsInputDto();

  @override
  String toString() {
    return 'SendVerificationSmsInputDto[phoneNumber=$phoneNumber, ]';
  }

  SendVerificationSmsInputDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    phoneNumber =
        json['phoneNumber']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'phoneNumber': phoneNumber
     };
  }

  static List<SendVerificationSmsInputDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<SendVerificationSmsInputDto>() : json.map((value) => new SendVerificationSmsInputDto.fromJson(value)).toList();
  }

  static Map<String, SendVerificationSmsInputDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SendVerificationSmsInputDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SendVerificationSmsInputDto.fromJson(value));
    }
    return map;
  }
}

