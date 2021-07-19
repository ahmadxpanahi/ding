part of swagger.api;

class VerifySmsCodeInputDto {
  
  String code = null;
  

  String phoneNumber = null;
  
  VerifySmsCodeInputDto();

  @override
  String toString() {
    return 'VerifySmsCodeInputDto[code=$code, phoneNumber=$phoneNumber, ]';
  }

  VerifySmsCodeInputDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    phoneNumber =
        json['phoneNumber']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'phoneNumber': phoneNumber
     };
  }

  static List<VerifySmsCodeInputDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<VerifySmsCodeInputDto>() : json.map((value) => new VerifySmsCodeInputDto.fromJson(value)).toList();
  }

  static Map<String, VerifySmsCodeInputDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VerifySmsCodeInputDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VerifySmsCodeInputDto.fromJson(value));
    }
    return map;
  }
}

