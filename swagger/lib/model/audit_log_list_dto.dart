part of swagger.api;

class AuditLogListDto {
  
  int userId = null;
  

  String userName = null;
  

  int impersonatorTenantId = null;
  

  int impersonatorUserId = null;
  

  String serviceName = null;
  

  String methodName = null;
  

  String parameters = null;
  

  DateTime executionTime = null;
  

  int executionDuration = null;
  

  String clientIpAddress = null;
  

  String clientName = null;
  

  String browserInfo = null;
  

  String exception = null;
  

  String customData = null;
  

  int id = null;
  
  AuditLogListDto();

  @override
  String toString() {
    return 'AuditLogListDto[userId=$userId, userName=$userName, impersonatorTenantId=$impersonatorTenantId, impersonatorUserId=$impersonatorUserId, serviceName=$serviceName, methodName=$methodName, parameters=$parameters, executionTime=$executionTime, executionDuration=$executionDuration, clientIpAddress=$clientIpAddress, clientName=$clientName, browserInfo=$browserInfo, exception=$exception, customData=$customData, id=$id, ]';
  }

  AuditLogListDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userId =
        json['userId']
    ;
    userName =
        json['userName']
    ;
    impersonatorTenantId =
        json['impersonatorTenantId']
    ;
    impersonatorUserId =
        json['impersonatorUserId']
    ;
    serviceName =
        json['serviceName']
    ;
    methodName =
        json['methodName']
    ;
    parameters =
        json['parameters']
    ;
    executionTime = json['executionTime'] == null ? null : DateTime.parse(json['executionTime']);
    executionDuration =
        json['executionDuration']
    ;
    clientIpAddress =
        json['clientIpAddress']
    ;
    clientName =
        json['clientName']
    ;
    browserInfo =
        json['browserInfo']
    ;
    exception =
        json['exception']
    ;
    customData =
        json['customData']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'userName': userName,
      'impersonatorTenantId': impersonatorTenantId,
      'impersonatorUserId': impersonatorUserId,
      'serviceName': serviceName,
      'methodName': methodName,
      'parameters': parameters,
      'executionTime': executionTime == null ? '' : executionTime.toUtc().toIso8601String(),
      'executionDuration': executionDuration,
      'clientIpAddress': clientIpAddress,
      'clientName': clientName,
      'browserInfo': browserInfo,
      'exception': exception,
      'customData': customData,
      'id': id
     };
  }

  static List<AuditLogListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<AuditLogListDto>() : json.map((value) => new AuditLogListDto.fromJson(value)).toList();
  }

  static Map<String, AuditLogListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AuditLogListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AuditLogListDto.fromJson(value));
    }
    return map;
  }
}

