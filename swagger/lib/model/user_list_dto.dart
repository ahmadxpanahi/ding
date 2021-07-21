part of swagger.api;

class UserListDto {
  
  String? name = null;
  

  String? surname = null;
  

  String? userName = null;
  

  String? emailAddress = null;
  

  String? phoneNumber = null;
  

  String? profilePictureId = null;
  

  bool? isEmailConfirmed = null;
  

  List<UserListRoleDto> roles = [];
  

  bool? isActive = null;
  

  DateTime? creationTime = null;
  

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
  

  int? id = null;
  
  UserListDto();

  @override
  String toString() {
    return 'UserListDto[name=$name, surname=$surname, userName=$userName, emailAddress=$emailAddress, phoneNumber=$phoneNumber, profilePictureId=$profilePictureId, isEmailConfirmed=$isEmailConfirmed, roles=$roles, isActive=$isActive, creationTime=$creationTime, genderType=$genderType, birthdate=$birthdate, bankAccount=$bankAccount, countryId=$countryId, stateId=$stateId, cityId=$cityId, address=$address, homePhoneNumber=$homePhoneNumber, workPhoneNumber=$workPhoneNumber, postalCode=$postalCode, birthCertificateNumber=$birthCertificateNumber, nationalCode=$nationalCode, degreeType=$degreeType, occupation=$occupation, jobTitle=$jobTitle, introduceType=$introduceType, vacationTypeId=$vacationTypeId, id=$id, ]';
  }

  UserListDto.fromJson(Map<String, dynamic>? json) {
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
    profilePictureId =
        json['profilePictureId']
    ;
    isEmailConfirmed =
        json['isEmailConfirmed']
    ;
    roles =
      UserListRoleDto.listFromJson(json['roles'])
;
    isActive =
        json['isActive']
    ;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
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
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'userName': userName,
      'emailAddress': emailAddress,
      'phoneNumber': phoneNumber,
      'profilePictureId': profilePictureId,
      'isEmailConfirmed': isEmailConfirmed,
      'roles': roles,
      'isActive': isActive,
      'creationTime': creationTime == null ? '' : creationTime!.toUtc().toIso8601String(),
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
      'vacationTypeId': vacationTypeId,
      'id': id
     };
  }

  static List<UserListDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new UserListDto.fromJson(value)).toList();
  }

  static Map<String, UserListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserListDto.fromJson(value));
    }
    return map;
  }
}

