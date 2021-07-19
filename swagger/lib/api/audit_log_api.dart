part of swagger.api;



class AuditLogApi {
  final ApiClient apiClient;

  AuditLogApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppAuditlogGetauditlogsGet
  ///
  /// 
  Future<PagedResultDtoOfAuditLogListDto> apiServicesAppAuditlogGetauditlogsGet({ DateTime? startDate, DateTime? endDate, String? userName, String? serviceName, String? methodName, String? browserInfo, bool? hasException, int? minExecutionDuration, int? maxExecutionDuration, String? sorting, int? maxResultCount, int? skipCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/AuditLog/GetAuditLogs".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "StartDate", startDate));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EndDate", endDate));
    }
    if(userName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserName", userName));
    }
    if(serviceName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ServiceName", serviceName));
    }
    if(methodName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MethodName", methodName));
    }
    if(browserInfo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "BrowserInfo", browserInfo));
    }
    if(hasException != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "HasException", hasException));
    }
    if(minExecutionDuration != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinExecutionDuration", minExecutionDuration));
    }
    if(maxExecutionDuration != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxExecutionDuration", maxExecutionDuration));
    }
    if(sorting != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Sorting", sorting));
    }
    if(maxResultCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxResultCount", maxResultCount));
    }
    if(skipCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SkipCount", skipCount));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await (apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PagedResultDtoOfAuditLogListDto') as PagedResultDtoOfAuditLogListDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAuditlogGetauditlogstoexcelGet
  ///
  /// 
  Future<FileDto> apiServicesAppAuditlogGetauditlogstoexcelGet({ DateTime? startDate, DateTime? endDate, String? userName, String? serviceName, String? methodName, String? browserInfo, bool? hasException, int? minExecutionDuration, int? maxExecutionDuration, String? sorting, int? maxResultCount, int? skipCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/AuditLog/GetAuditLogsToExcel".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "StartDate", startDate));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EndDate", endDate));
    }
    if(userName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserName", userName));
    }
    if(serviceName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ServiceName", serviceName));
    }
    if(methodName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MethodName", methodName));
    }
    if(browserInfo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "BrowserInfo", browserInfo));
    }
    if(hasException != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "HasException", hasException));
    }
    if(minExecutionDuration != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinExecutionDuration", minExecutionDuration));
    }
    if(maxExecutionDuration != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxExecutionDuration", maxExecutionDuration));
    }
    if(sorting != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Sorting", sorting));
    }
    if(maxResultCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxResultCount", maxResultCount));
    }
    if(skipCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SkipCount", skipCount));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await (apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'FileDto') as FileDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAuditlogGetentitychangesGet
  ///
  /// 
  Future<PagedResultDtoOfEntityChangeListDto> apiServicesAppAuditlogGetentitychangesGet({ DateTime? startDate, DateTime? endDate, String? userName, String? entityTypeFullName, String? sorting, int? maxResultCount, int? skipCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/AuditLog/GetEntityChanges".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "StartDate", startDate));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EndDate", endDate));
    }
    if(userName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserName", userName));
    }
    if(entityTypeFullName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EntityTypeFullName", entityTypeFullName));
    }
    if(sorting != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Sorting", sorting));
    }
    if(maxResultCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxResultCount", maxResultCount));
    }
    if(skipCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SkipCount", skipCount));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await (apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PagedResultDtoOfEntityChangeListDto') as PagedResultDtoOfEntityChangeListDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAuditlogGetentitychangestoexcelGet
  ///
  /// 
  Future<FileDto> apiServicesAppAuditlogGetentitychangestoexcelGet({ DateTime? startDate, DateTime? endDate, String? userName, String? entityTypeFullName, String? sorting, int? maxResultCount, int? skipCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/AuditLog/GetEntityChangesToExcel".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "StartDate", startDate));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EndDate", endDate));
    }
    if(userName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserName", userName));
    }
    if(entityTypeFullName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EntityTypeFullName", entityTypeFullName));
    }
    if(sorting != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Sorting", sorting));
    }
    if(maxResultCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxResultCount", maxResultCount));
    }
    if(skipCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SkipCount", skipCount));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await (apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'FileDto') as FileDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAuditlogGetentityhistoryobjecttypesGet
  ///
  /// 
  Future<List<NameValueDto>> apiServicesAppAuditlogGetentityhistoryobjecttypesGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/AuditLog/GetEntityHistoryObjectTypes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await (apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<NameValueDto>') as List).map((item) => item as NameValueDto).toList();
    } else {
      return null;
    }
  }
  /// ApiServicesAppAuditlogGetentitypropertychangesGet
  ///
  /// 
  Future<List<EntityPropertyChangeDto>> apiServicesAppAuditlogGetentitypropertychangesGet({ int? entityChangeId }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/AuditLog/GetEntityPropertyChanges".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(entityChangeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "entityChangeId", entityChangeId));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await (apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<EntityPropertyChangeDto>') as List).map((item) => item as EntityPropertyChangeDto).toList();
    } else {
      return null;
    }
  }
  /// ApiServicesAppAuditlogGetentitytypechangesGet
  ///
  /// 
  Future<PagedResultDtoOfEntityChangeListDto> apiServicesAppAuditlogGetentitytypechangesGet({ String? entityTypeFullName, String? entityId, String? sorting, int? maxResultCount, int? skipCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/AuditLog/GetEntityTypeChanges".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(entityTypeFullName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EntityTypeFullName", entityTypeFullName));
    }
    if(entityId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EntityId", entityId));
    }
    if(sorting != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Sorting", sorting));
    }
    if(maxResultCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxResultCount", maxResultCount));
    }
    if(skipCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SkipCount", skipCount));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await (apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PagedResultDtoOfEntityChangeListDto') as PagedResultDtoOfEntityChangeListDto ;
    } else {
      return null;
    }
  }
}
