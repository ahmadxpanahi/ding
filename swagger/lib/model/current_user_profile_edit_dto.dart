part of swagger.api;

class CurrentUserProfileEditDto {
  
  String name = null;
  

  String surname = null;
  

  String userName = null;
  

  String emailAddress = null;
  

  String phoneNumber = null;
  

  bool isPhoneNumberConfirmed = null;
  

  String timezone = null;
  

  String qrCodeSetupImageUrl = null;
  

  bool isGoogleAuthenticatorEnabled = null;
  
  CurrentUserProfileEditDto();

  @override
  String toString() {
    return 'CurrentUserProfileEditDto[name=$name, surname=$surname, userName=$userName, emailAddress=$emailAddress, phoneNumber=$phoneNumber, isPhoneNumberConfirmed=$isPhoneNumberConfirmed, timezone=$timezone, qrCodeSetupImageUrl=$qrCodeSetupImageUrl, isGoogleAuthenticatorEnabled=$isGoogleAuthenticatorEnabled, ]';
  }

  CurrentUserProfileEditDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    surname =
        json['surname']
    ;
    userName =
        json['userName']
    ;
    emailAddress =
        json['emailAddress']
    ;
    phoneNumber =
        json['phoneNumber']
    ;
    isPhoneNumberConfirmed =
        json['isPhoneNumberConfirmed']
    ;
    timezone =
        json['timezone']
    ;
    qrCodeSetupImageUrl =
        json['qrCodeSetupImageUrl']
    ;
    isGoogleAuthenticatorEnabled =
        json['isGoogleAuthenticatorEnabled']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'userName': userName,
      'emailAddress': emailAddress,
      'phoneNumber': phoneNumber,
      'isPhoneNumberConfirmed': isPhoneNumberConfirmed,
      'timezone': timezone,
      'qrCodeSetupImageUrl': qrCodeSetupImageUrl,
      'isGoogleAuthenticatorEnabled': isGoogleAuthenticatorEnabled
     };
  }

  static List<CurrentUserProfileEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CurrentUserProfileEditDto>() : json.map((value) => new CurrentUserProfileEditDto.fromJson(value)).toList();
  }

  static Map<String, CurrentUserProfileEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CurrentUserProfileEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CurrentUserProfileEditDto.fromJson(value));
    }
    return map;
  }
}

