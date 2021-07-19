part of swagger.api;

class TwitterGetAccessTokenResponse {
  
  String accessToken = null;
  

  String accessTokenSecret = null;
  

  String userId = null;
  

  String userName = null;
  
  TwitterGetAccessTokenResponse();

  @override
  String toString() {
    return 'TwitterGetAccessTokenResponse[accessToken=$accessToken, accessTokenSecret=$accessTokenSecret, userId=$userId, userName=$userName, ]';
  }

  TwitterGetAccessTokenResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessToken =
        json['accessToken']
    ;
    accessTokenSecret =
        json['accessTokenSecret']
    ;
    userId =
        json['userId']
    ;
    userName =
        json['userName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'accessTokenSecret': accessTokenSecret,
      'userId': userId,
      'userName': userName
     };
  }

  static List<TwitterGetAccessTokenResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<TwitterGetAccessTokenResponse>() : json.map((value) => new TwitterGetAccessTokenResponse.fromJson(value)).toList();
  }

  static Map<String, TwitterGetAccessTokenResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TwitterGetAccessTokenResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TwitterGetAccessTokenResponse.fromJson(value));
    }
    return map;
  }
}

