part of swagger.api;



class HostDashboardApi {
  final ApiClient apiClient;

  HostDashboardApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppHostdashboardGeteditiontenantstatisticsGet
  ///
  /// 
  Future<GetEditionTenantStatisticsOutput?> apiServicesAppHostdashboardGeteditiontenantstatisticsGet({ DateTime? startDate, DateTime? endDate }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/HostDashboard/GetEditionTenantStatistics".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetEditionTenantStatisticsOutput') as GetEditionTenantStatisticsOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppHostdashboardGetincomestatisticsGet
  ///
  /// 
  Future<GetIncomeStatisticsDataOutput?> apiServicesAppHostdashboardGetincomestatisticsGet(String incomeStatisticsDateInterval, { DateTime? startDate, DateTime? endDate }) async {
    Object? postBody = null;

    // verify required params are set
    if(incomeStatisticsDateInterval == null) {
     throw new ApiException(400, "Missing required param: incomeStatisticsDateInterval");
    }

    // create path and map variables
    String path = "/api/services/app/HostDashboard/GetIncomeStatistics".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "IncomeStatisticsDateInterval", incomeStatisticsDateInterval));
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "StartDate", startDate));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EndDate", endDate));
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
          apiClient.deserialize(response.body, 'GetIncomeStatisticsDataOutput') as GetIncomeStatisticsDataOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppHostdashboardGetrecenttenantsdataGet
  ///
  /// 
  Future<GetRecentTenantsOutput?> apiServicesAppHostdashboardGetrecenttenantsdataGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/HostDashboard/GetRecentTenantsData".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetRecentTenantsOutput') as GetRecentTenantsOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppHostdashboardGetsubscriptionexpiringtenantsdataGet
  ///
  /// 
  Future<GetExpiringTenantsOutput?> apiServicesAppHostdashboardGetsubscriptionexpiringtenantsdataGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/HostDashboard/GetSubscriptionExpiringTenantsData".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetExpiringTenantsOutput') as GetExpiringTenantsOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppHostdashboardGettopstatsdataGet
  ///
  /// 
  Future<TopStatsData?> apiServicesAppHostdashboardGettopstatsdataGet({ DateTime? startDate, DateTime? endDate }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/HostDashboard/GetTopStatsData".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'TopStatsData') as TopStatsData ;
    } else {
      return null;
    }
  }
}
