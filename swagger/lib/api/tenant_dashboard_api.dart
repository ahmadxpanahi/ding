part of swagger.api;



class TenantDashboardApi {
  final ApiClient apiClient;

  TenantDashboardApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppTenantdashboardGetdailysalesGet
  ///
  /// 
  Future<GetDailySalesOutput?> apiServicesAppTenantdashboardGetdailysalesGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/TenantDashboard/GetDailySales".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'GetDailySalesOutput') as GetDailySalesOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppTenantdashboardGetdashboarddataGet
  ///
  /// 
  Future<GetDashboardDataOutput?> apiServicesAppTenantdashboardGetdashboarddataGet(String salesSummaryDatePeriod) async {
    Object? postBody = null;

    // verify required params are set
    if(salesSummaryDatePeriod == null) {
     throw new ApiException(400, "Missing required param: salesSummaryDatePeriod");
    }

    // create path and map variables
    String path = "/api/services/app/TenantDashboard/GetDashboardData".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "SalesSummaryDatePeriod", salesSummaryDatePeriod));
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'GetDashboardDataOutput') as GetDashboardDataOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppTenantdashboardGetgeneralstatsGet
  ///
  /// 
  Future<GetGeneralStatsOutput?> apiServicesAppTenantdashboardGetgeneralstatsGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/TenantDashboard/GetGeneralStats".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'GetGeneralStatsOutput') as GetGeneralStatsOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppTenantdashboardGetmemberactivityGet
  ///
  /// 
  Future<GetMemberActivityOutput?> apiServicesAppTenantdashboardGetmemberactivityGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/TenantDashboard/GetMemberActivity".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'GetMemberActivityOutput') as GetMemberActivityOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppTenantdashboardGetprofitshareGet
  ///
  /// 
  Future<GetProfitShareOutput?> apiServicesAppTenantdashboardGetprofitshareGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/TenantDashboard/GetProfitShare".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'GetProfitShareOutput') as GetProfitShareOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppTenantdashboardGetregionalstatsGet
  ///
  /// 
  Future<GetRegionalStatsOutput?> apiServicesAppTenantdashboardGetregionalstatsGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/TenantDashboard/GetRegionalStats".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'GetRegionalStatsOutput') as GetRegionalStatsOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppTenantdashboardGetsalessummaryGet
  ///
  /// 
  Future<GetSalesSummaryOutput?> apiServicesAppTenantdashboardGetsalessummaryGet(String salesSummaryDatePeriod) async {
    Object? postBody = null;

    // verify required params are set
    if(salesSummaryDatePeriod == null) {
     throw new ApiException(400, "Missing required param: salesSummaryDatePeriod");
    }

    // create path and map variables
    String path = "/api/services/app/TenantDashboard/GetSalesSummary".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "SalesSummaryDatePeriod", salesSummaryDatePeriod));
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'GetSalesSummaryOutput') as GetSalesSummaryOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppTenantdashboardGettopstatsGet
  ///
  /// 
  Future<GetTopStatsOutput?> apiServicesAppTenantdashboardGettopstatsGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/TenantDashboard/GetTopStats".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'GetTopStatsOutput') as GetTopStatsOutput ;
    } else {
      return null;
    }
  }
}
