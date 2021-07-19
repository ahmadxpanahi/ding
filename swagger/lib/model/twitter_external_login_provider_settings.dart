part of swagger.api;

class TwitterExternalLoginProviderSettings {
  
  String consumerKey = null;
  

  String consumerSecret = null;
  
  TwitterExternalLoginProviderSettings();

  @override
  String toString() {
    return 'TwitterExternalLoginProviderSettings[consumerKey=$consumerKey, consumerSecret=$consumerSecret, ]';
  }

  TwitterExternalLoginProviderSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    consumerKey =
        json['consumerKey']
    ;
    consumerSecret =
        json['consumerSecret']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'consumerKey': consumerKey,
      'consumerSecret': consumerSecret
     };
  }

  static List<TwitterExternalLoginProviderSettings> listFromJson(List<dynamic> json) {
    return json == null ? new List<TwitterExternalLoginProviderSettings>() : json.map((value) => new TwitterExternalLoginProviderSettings.fromJson(value)).toList();
  }

  static Map<String, TwitterExternalLoginProviderSettings> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TwitterExternalLoginProviderSettings>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TwitterExternalLoginProviderSettings.fromJson(value));
    }
    return map;
  }
}

