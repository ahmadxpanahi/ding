part of swagger.api;

class RegisterInput {
  
  String name = null;
  

  String surname = null;
  

  String userName = null;
  

  String emailAddress = null;
  

  String phoneNumber = null;
  

  String password = null;
  

  String captchaResponse = null;
  

  String smsVerification = null;
  

  String code = null;
  

  GenderType genderType = null;
  

  String nickName = null;
  

  DateTime birthdate = null;
  

  String bankAccount = null;
  

  int regionId = null;
  

  String address = null;
  

  String homePhoneNumber = null;
  

  String workPhoneNumber = null;
  

  String postalCode = null;
  

  String birthCertificateNumber = null;
  

  String nationalCode = null;
  

  DegreeType degreeType = null;
  

  String occupation = null;
  

  String jobTitle = null;
  

  IntroduceType introduceType = null;
  

  double credit = null;
  

  double balance = null;
  

  double fundRange = null;
  

  int remainQuestionCount = null;
  

  int accessDaysCount = null;
  
  RegisterInput();

  @override
  String toString() {
    return 'RegisterInput[name=$name, surname=$surname, userName=$userName, emailAddress=$emailAddress, phoneNumber=$phoneNumber, password=$password, captchaResponse=$captchaResponse, smsVerification=$smsVerification, code=$code, genderType=$genderType, nickName=$nickName, birthdate=$birthdate, bankAccount=$bankAccount, regionId=$regionId, address=$address, homePhoneNumber=$homePhoneNumber, workPhoneNumber=$workPhoneNumber, postalCode=$postalCode, birthCertificateNumber=$birthCertificateNumber, nationalCode=$nationalCode, degreeType=$degreeType, occupation=$occupation, jobTitle=$jobTitle, introduceType=$introduceType, credit=$credit, balance=$balance, fundRange=$fundRange, remainQuestionCount=$remainQuestionCount, accessDaysCount=$accessDaysCount, ]';
  }

  RegisterInput.fromJson(Map<String, dynamic> json) {
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
    password =
        json['password']
    ;
    captchaResponse =
        json['captchaResponse']
    ;
    smsVerification =
        json['smsVerification']
    ;
    code =
        json['code']
    ;
    genderType =
      
      
      new GenderType.fromJson(json['genderType'])
;
    nickName =
        json['nickName']
    ;
    birthdate = json['birthdate'] == null ? null : DateTime.parse(json['birthdate']);
    bankAccount =
        json['bankAccount']
    ;
    regionId =
        json['regionId']
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
    credit =
        json['credit'] == null ? null : json['credit'].toDouble()
    ;
    balance =
        json['balance'] == null ? null : json['balance'].toDouble()
    ;
    fundRange =
        json['fundRange'] == null ? null : json['fundRange'].toDouble()
    ;
    remainQuestionCount =
        json['remainQuestionCount']
    ;
    accessDaysCount =
        json['accessDaysCount']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'userName': userName,
      'emailAddress': emailAddress,
      'phoneNumber': phoneNumber,
      'password': password,
      'captchaResponse': captchaResponse,
      'smsVerification': smsVerification,
      'code': code,
      'genderType': genderType,
      'nickName': nickName,
      'birthdate': birthdate == null ? '' : birthdate.toUtc().toIso8601String(),
      'bankAccount': bankAccount,
      'regionId': regionId,
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
      'credit': credit,
      'balance': balance,
      'fundRange': fundRange,
      'remainQuestionCount': remainQuestionCount,
      'accessDaysCount': accessDaysCount
     };
  }

  static List<RegisterInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<RegisterInput>() : json.map((value) => new RegisterInput.fromJson(value)).toList();
  }

  static Map<String, RegisterInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RegisterInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RegisterInput.fromJson(value));
    }
    return map;
  }
}

