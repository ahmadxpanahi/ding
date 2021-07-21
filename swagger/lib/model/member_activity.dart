part of swagger.api;

class MemberActivity {
  
  String? name = null;
  

  String? earnings = null;
  

  int? cases = null;
  

  int? closed = null;
  

  String? rate = null;
  
  MemberActivity();

  @override
  String toString() {
    return 'MemberActivity[name=$name, earnings=$earnings, cases=$cases, closed=$closed, rate=$rate, ]';
  }

  MemberActivity.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
    earnings =
        json['earnings']
    ;
    cases =
        json['cases']
    ;
    closed =
        json['closed']
    ;
    rate =
        json['rate']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'earnings': earnings,
      'cases': cases,
      'closed': closed,
      'rate': rate
     };
  }

  static List<MemberActivity> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new MemberActivity.fromJson(value)).toList();
  }

  static Map<String, MemberActivity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MemberActivity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MemberActivity.fromJson(value));
    }
    return map;
  }
}

