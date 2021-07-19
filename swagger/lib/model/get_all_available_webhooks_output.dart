part of swagger.api;

class GetAllAvailableWebhooksOutput {
  
  String? name = null;
  

  String? displayName = null;
  

  String? description = null;
  
  GetAllAvailableWebhooksOutput();

  @override
  String toString() {
    return 'GetAllAvailableWebhooksOutput[name=$name, displayName=$displayName, description=$description, ]';
  }

  GetAllAvailableWebhooksOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
    displayName =
        json['displayName']
    ;
    description =
        json['description']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'displayName': displayName,
      'description': description
     };
  }

  static List<GetAllAvailableWebhooksOutput> listFromJson(List<dynamic>? json) {
    return json == null ? new List<GetAllAvailableWebhooksOutput>() : json.map((value) => new GetAllAvailableWebhooksOutput.fromJson(value)).toList();
  }

  static Map<String, GetAllAvailableWebhooksOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetAllAvailableWebhooksOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetAllAvailableWebhooksOutput.fromJson(value));
    }
    return map;
  }
}

