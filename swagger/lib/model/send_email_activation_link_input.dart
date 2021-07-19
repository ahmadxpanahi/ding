part of swagger.api;

class SendEmailActivationLinkInput {
  
  String emailAddress = null;
  
  SendEmailActivationLinkInput();

  @override
  String toString() {
    return 'SendEmailActivationLinkInput[emailAddress=$emailAddress, ]';
  }

  SendEmailActivationLinkInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    emailAddress =
        json['emailAddress']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'emailAddress': emailAddress
     };
  }

  static List<SendEmailActivationLinkInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<SendEmailActivationLinkInput>() : json.map((value) => new SendEmailActivationLinkInput.fromJson(value)).toList();
  }

  static Map<String, SendEmailActivationLinkInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SendEmailActivationLinkInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SendEmailActivationLinkInput.fromJson(value));
    }
    return map;
  }
}

