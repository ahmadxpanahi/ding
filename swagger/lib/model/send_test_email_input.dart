part of swagger.api;

class SendTestEmailInput {
  
  String? emailAddress = null;
  
  SendTestEmailInput();

  @override
  String toString() {
    return 'SendTestEmailInput[emailAddress=$emailAddress, ]';
  }

  SendTestEmailInput.fromJson(Map<String, dynamic>? json) {
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

  static List<SendTestEmailInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new SendTestEmailInput.fromJson(value)).toList();
  }

  static Map<String, SendTestEmailInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SendTestEmailInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SendTestEmailInput.fromJson(value));
    }
    return map;
  }
}

