part of swagger.api;

class RecentTenant {
  
  int? id = null;
  

  String? name = null;
  

  DateTime? creationTime = null;
  
  RecentTenant();

  @override
  String toString() {
    return 'RecentTenant[id=$id, name=$name, creationTime=$creationTime, ]';
  }

  RecentTenant.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'creationTime': creationTime == null ? '' : creationTime!.toUtc().toIso8601String()
     };
  }

  static List<RecentTenant> listFromJson(List<dynamic>? json) {
    return json == null ? new List<RecentTenant>() : json.map((value) => new RecentTenant.fromJson(value)).toList();
  }

  static Map<String, RecentTenant> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecentTenant>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecentTenant.fromJson(value));
    }
    return map;
  }
}

