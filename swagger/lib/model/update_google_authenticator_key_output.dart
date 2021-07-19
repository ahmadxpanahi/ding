part of swagger.api;

class UpdateGoogleAuthenticatorKeyOutput {
  
  String? qrCodeSetupImageUrl = null;
  
  UpdateGoogleAuthenticatorKeyOutput();

  @override
  String toString() {
    return 'UpdateGoogleAuthenticatorKeyOutput[qrCodeSetupImageUrl=$qrCodeSetupImageUrl, ]';
  }

  UpdateGoogleAuthenticatorKeyOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    qrCodeSetupImageUrl =
        json['qrCodeSetupImageUrl']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'qrCodeSetupImageUrl': qrCodeSetupImageUrl
     };
  }

  static List<UpdateGoogleAuthenticatorKeyOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new UpdateGoogleAuthenticatorKeyOutput.fromJson(value)).toList();
  }

  static Map<String, UpdateGoogleAuthenticatorKeyOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateGoogleAuthenticatorKeyOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateGoogleAuthenticatorKeyOutput.fromJson(value));
    }
    return map;
  }
}

