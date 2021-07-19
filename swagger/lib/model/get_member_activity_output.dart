part of swagger.api;

class GetMemberActivityOutput {
  
  List<MemberActivity> memberActivities = [];
  
  GetMemberActivityOutput();

  @override
  String toString() {
    return 'GetMemberActivityOutput[memberActivities=$memberActivities, ]';
  }

  GetMemberActivityOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    memberActivities =
      MemberActivity.listFromJson(json['memberActivities'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'memberActivities': memberActivities
     };
  }

  static List<GetMemberActivityOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetMemberActivityOutput>() : json.map((value) => new GetMemberActivityOutput.fromJson(value)).toList();
  }

  static Map<String, GetMemberActivityOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetMemberActivityOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetMemberActivityOutput.fromJson(value));
    }
    return map;
  }
}

