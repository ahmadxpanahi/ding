part of swagger.api;

class TwitterGetRequestTokenResponse {
  
  String? token = null;
  

  String? secret = null;
  

  bool? confirmed = null;
  

  String? redirectUrl = null;
  
  TwitterGetRequestTokenResponse();

  @override
  String toString() {
    return 'TwitterGetRequestTokenResponse[token=$token, secret=$secret, confirmed=$confirmed, redirectUrl=$redirectUrl, ]';
  }

  TwitterGetRequestTokenResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    token =
        json['token']
    ;
    secret =
        json['secret']
    ;
    confirmed =
        json['confirmed']
    ;
    redirectUrl =
        json['redirectUrl']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'secret': secret,
      'confirmed': confirmed,
      'redirectUrl': redirectUrl
     };
  }

  static List<TwitterGetRequestTokenResponse> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new TwitterGetRequestTokenResponse.fromJson(value)).toList();
  }

  static Map<String, TwitterGetRequestTokenResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TwitterGetRequestTokenResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TwitterGetRequestTokenResponse.fromJson(value));
    }
    return map;
  }
}

