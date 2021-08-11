part of swagger.api;

class UserEditDto {
  
  int? id = null;
  

  String? name = null;
  

  String? surname = null;
  

  String? userName = null;
  

  String? emailAddress = null;
  

  String? phoneNumber = null;
  

  String? password = null;
  

  bool? isActive = null;
  

  bool? shouldChangePasswordOnNextLogin = null;
  

  bool? isTwoFactorEnabled = null;
  

  bool? isLockoutEnabled = null;
  

  int? genderType = null;
  

  DateTime? birthdate = null;
  

  String? bankAccount = null;
  

  int? countryId = null;
  

  int? stateId = null;
  

  int? cityId = null;
  

  String? address = null;
  

  String? homePhoneNumber = null;
  

  String? workPhoneNumber = null;
  

  String? postalCode = null;
  

  String? birthCertificateNumber = null;
  

  String? nationalCode = null;
  

  int? degreeType = null;
  

  String? occupation = null;
  

  String? jobTitle = null;
  

  int? introduceType = null;
  

  int? vacationTypeId = null;
  
  UserEditDto();

  @override
  String toString() {
    return 'UserEditDto[id=$id, name=$name, surname=$surname, userName=$userName, emailAddress=$emailAddress, phoneNumber=$phoneNumber, password=$password, isActive=$isActive, shouldChangePasswordOnNextLogin=$shouldChangePasswordOnNextLogin, isTwoFactorEnabled=$isTwoFactorEnabled, isLockoutEnabled=$isLockoutEnabled, genderType=$genderType, birthdate=$birthdate, bankAccount=$bankAccount, countryId=$countryId, stateId=$stateId, cityId=$cityId, address=$address, homePhoneNumber=$homePhoneNumber, workPhoneNumber=$workPhoneNumber, postalCode=$postalCode, birthCertificateNumber=$birthCertificateNumber, nationalCode=$nationalCode, degreeType=$degreeType, occupation=$occupation, jobTitle=$jobTitle, introduceType=$introduceType, vacationTypeId=$vacationTypeId, ]';
  }

  UserEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['result']['id']
    ;
    name =
        json['result']['name']
    ;
    surname =
        json['result']['surname']
    ;
    userName =
        json['result']['userName']
    ;
    emailAddress =
        json['result']['emailAddress']
    ;
    phoneNumber =
        json['result']['phoneNumber']
    ;
    password =
        json['result']['password']
    ;
    isActive =
        json['result']['isActive']
    ;
    shouldChangePasswordOnNextLogin =
        json['result']['shouldChangePasswordOnNextLogin']
    ;
    isTwoFactorEnabled =
        json['result']['isTwoFactorEnabled']
    ;
    isLockoutEnabled =
        json['result']['isLockoutEnabled']
    ;
    genderType =
      
      
      json['result']['genderType']
;
    birthdate = json['result']['birthdate'] == null ? null : DateTime.parse(json['result']['birthdate']);
    bankAccount =
        json['result']['bankAccount']
    ;
    countryId =
        json['result']['countryId']
    ;
    stateId =
        json['result']['stateId']
    ;
    cityId =
        json['result']['cityId']
    ;
    address =
        json['result']['address']
    ;
    homePhoneNumber =
        json['result']['homePhoneNumber']
    ;
    workPhoneNumber =
        json['result']['workPhoneNumber']
    ;
    postalCode =
        json['result']['postalCode']
    ;
    birthCertificateNumber =
        json['result']['birthCertificateNumber']
    ;
    nationalCode =
        json['result']['nationalCode']
    ;
    degreeType =
      
      
      json['result']['degreeType']
;
    occupation =
        json['result']['occupation']
    ;
    jobTitle =
        json['result']['jobTitle']
    ;
    introduceType =
      
      
      json['result']['introduceType']
;
    vacationTypeId =
        json['result']['vacationTypeId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'surname': surname,
      'userName': userName,
      'emailAddress': emailAddress,
      'phoneNumber': phoneNumber,
      'password': password,
      'isActive': isActive,
      'shouldChangePasswordOnNextLogin': shouldChangePasswordOnNextLogin,
      'isTwoFactorEnabled': isTwoFactorEnabled,
      'isLockoutEnabled': isLockoutEnabled,
      'genderType': genderType,
      'birthdate': birthdate == null ? '' : birthdate!.toUtc().toIso8601String(),
      'bankAccount': bankAccount,
      'countryId': countryId,
      'stateId': stateId,
      'cityId': cityId,
      'address': address,
      'homePhoneNumber': homePhoneNumber,
      'workPhoneNumber': workPhoneNumber,
      'postalCode': postalCode,
      'birthCertificateNumber': birthCertificateNumber,
      'nationalCode': nationalCode,
      'degreeType': degreeType,
      'occupation': occupation,
      'jobTitle': jobTitle,
      'introduceType': introduceType,
      'vacationTypeId': vacationTypeId
     };
  }

  static List<UserEditDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new UserEditDto.fromJson(value)).toList();
  }

  static Map<String, UserEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserEditDto.fromJson(value));
    }
    return map;
  }
}

