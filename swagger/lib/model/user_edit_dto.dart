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
  

  GenderType? genderType = null;
  

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
  

  DegreeType? degreeType = null;
  

  String? occupation = null;
  

  String? jobTitle = null;
  

  IntroduceType? introduceType = null;
  

  int? vacationTypeId = null;
  
  UserEditDto();

  @override
  String toString() {
    return 'UserEditDto[id=$id, name=$name, surname=$surname, userName=$userName, emailAddress=$emailAddress, phoneNumber=$phoneNumber, password=$password, isActive=$isActive, shouldChangePasswordOnNextLogin=$shouldChangePasswordOnNextLogin, isTwoFactorEnabled=$isTwoFactorEnabled, isLockoutEnabled=$isLockoutEnabled, genderType=$genderType, birthdate=$birthdate, bankAccount=$bankAccount, countryId=$countryId, stateId=$stateId, cityId=$cityId, address=$address, homePhoneNumber=$homePhoneNumber, workPhoneNumber=$workPhoneNumber, postalCode=$postalCode, birthCertificateNumber=$birthCertificateNumber, nationalCode=$nationalCode, degreeType=$degreeType, occupation=$occupation, jobTitle=$jobTitle, introduceType=$introduceType, vacationTypeId=$vacationTypeId, ]';
  }

  UserEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
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
    password =
        json['password']
    ;
    isActive =
        json['isActive']
    ;
    shouldChangePasswordOnNextLogin =
        json['shouldChangePasswordOnNextLogin']
    ;
    isTwoFactorEnabled =
        json['isTwoFactorEnabled']
    ;
    isLockoutEnabled =
        json['isLockoutEnabled']
    ;
    genderType =
      
      
      new GenderType.fromJson(json['genderType'])
;
    birthdate = json['birthdate'] == null ? null : DateTime.parse(json['birthdate']);
    bankAccount =
        json['bankAccount']
    ;
    countryId =
        json['countryId']
    ;
    stateId =
        json['stateId']
    ;
    cityId =
        json['cityId']
    ;
    address =
        json['address']
    ;
    homePhoneNumber =
        json['homePhoneNumber']
    ;
    workPhoneNumber =
        json['workPhoneNumber']
    ;
    postalCode =
        json['postalCode']
    ;
    birthCertificateNumber =
        json['birthCertificateNumber']
    ;
    nationalCode =
        json['nationalCode']
    ;
    degreeType =
      
      
      new DegreeType.fromJson(json['degreeType'])
;
    occupation =
        json['occupation']
    ;
    jobTitle =
        json['jobTitle']
    ;
    introduceType =
      
      
      new IntroduceType.fromJson(json['introduceType'])
;
    vacationTypeId =
        json['vacationTypeId']
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

