part of swagger.api;

class TenantNotification {
  
  int? tenantId = null;
  

  String? notificationName = null;
  

  NotificationData? data = null;
  

  String? entityType = null;
  

  String? entityTypeName = null;
  

  Object? entityId = null;
  

  NotificationSeverity? severity = null;
  

  DateTime? creationTime = null;
  

  String? id = null;
  
  TenantNotification();

  @override
  String toString() {
    return 'TenantNotification[tenantId=$tenantId, notificationName=$notificationName, data=$data, entityType=$entityType, entityTypeName=$entityTypeName, entityId=$entityId, severity=$severity, creationTime=$creationTime, id=$id, ]';
  }

  TenantNotification.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    tenantId =
        json['tenantId']
    ;
    notificationName =
        json['notificationName']
    ;
    data =
      
      
      new NotificationData.fromJson(json['data'])
;
    entityType =
        json['entityType']
    ;
    entityTypeName =
        json['entityTypeName']
    ;
    entityId =
      
      mapFromJson(json['entityId'])
;
    severity =
      
      
      new NotificationSeverity.fromJson(json['severity'])
;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenantId': tenantId,
      'notificationName': notificationName,
      'data': data,
      'entityType': entityType,
      'entityTypeName': entityTypeName,
      'entityId': entityId,
      'severity': severity,
      'creationTime': creationTime == null ? '' : creationTime!.toUtc().toIso8601String(),
      'id': id
     };
  }

  static List<TenantNotification> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new TenantNotification.fromJson(value)).toList();
  }

  static Map<String, TenantNotification> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, TenantNotification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantNotification.fromJson(value));
    }
    return map;
  }
}

