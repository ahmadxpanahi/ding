part of swagger.api;



class EmployeeMissionReportsApi {
  final ApiClient apiClient;

  EmployeeMissionReportsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppEmployeemissionreportsGetallGet
  ///
  /// 
  Future<PagedResultDtoOfGetEmployeeMissionReportForViewDto?> apiServicesAppEmployeemissionreportsGetallGet({ List<int>? userIdsFilter, int? organizationUnitId, int? userIdFilter, String? userNameFilter, DateTime? reportDateFrom, DateTime? reportDateTo, String? sorting, int? skipCount, int? maxResultCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/EmployeeMissionReports/GetAll".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(userIdsFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "UserIdsFilter", userIdsFilter));
    }
    if(organizationUnitId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "OrganizationUnitId", organizationUnitId));
    }
    if(userIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserIdFilter", userIdFilter));
    }
    if(userNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserNameFilter", userNameFilter));
    }
    if(reportDateFrom != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ReportDateFrom", reportDateFrom));
    }
    if(reportDateTo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ReportDateTo", reportDateTo));
    }
    if(sorting != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Sorting", sorting));
    }
    if(skipCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SkipCount", skipCount));
    }
    if(maxResultCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxResultCount", maxResultCount));
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
          apiClient.deserialize(response.body, 'PagedResultDtoOfGetEmployeeMissionReportForViewDto') as PagedResultDtoOfGetEmployeeMissionReportForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppEmployeemissionreportsGetdetailedreportGet
  ///
  /// 
  Future<List<GetDetailedEmployeeMissionReportForViewDto>?> apiServicesAppEmployeemissionreportsGetdetailedreportGet({ List<int>? userIdsFilter, int? organizationUnitId, int? userIdFilter, String? userNameFilter, DateTime? reportDateFrom, DateTime? reportDateTo, String? sorting, int? skipCount, int? maxResultCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/EmployeeMissionReports/GetDetailedReport".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(userIdsFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "UserIdsFilter", userIdsFilter));
    }
    if(organizationUnitId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "OrganizationUnitId", organizationUnitId));
    }
    if(userIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserIdFilter", userIdFilter));
    }
    if(userNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserNameFilter", userNameFilter));
    }
    if(reportDateFrom != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ReportDateFrom", reportDateFrom));
    }
    if(reportDateTo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ReportDateTo", reportDateTo));
    }
    if(sorting != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Sorting", sorting));
    }
    if(skipCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SkipCount", skipCount));
    }
    if(maxResultCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxResultCount", maxResultCount));
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
        (apiClient.deserialize(response.body, 'List<GetDetailedEmployeeMissionReportForViewDto>') as List).map((item) => item as GetDetailedEmployeeMissionReportForViewDto).toList();
    } else {
      return null;
    }
  }
  /// ApiServicesAppEmployeemissionreportsGetemployeemissionreportstoexcelGet
  ///
  /// 
  Future<FileDto?> apiServicesAppEmployeemissionreportsGetemployeemissionreportstoexcelGet({ List<int>? userIdsFilter, int? organizationUnitId, String? userNameFilter, DateTime? reportDateFrom, DateTime? reportDateTo }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/EmployeeMissionReports/GetEmployeeMissionReportsToExcel".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(userIdsFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "UserIdsFilter", userIdsFilter));
    }
    if(organizationUnitId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "OrganizationUnitId", organizationUnitId));
    }
    if(userNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserNameFilter", userNameFilter));
    }
    if(reportDateFrom != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ReportDateFrom", reportDateFrom));
    }
    if(reportDateTo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ReportDateTo", reportDateTo));
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
}
