part of swagger.api;



class EmployeeLeaveReportsApi {
  final ApiClient apiClient;

  EmployeeLeaveReportsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppEmployeeleavereportsGetallGet
  ///
  /// 
  Future<PagedResultDtoOfGetEmployeeLeaveReportForViewDto?> apiServicesAppEmployeeleavereportsGetallGet({ List<int>? userIdsFilter, int? organizationUnitId, int? userIdFilter, String? userNameFilter, DateTime? reportDateFrom, DateTime? reportDateTo, String? sorting, int? skipCount, int? maxResultCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/EmployeeLeaveReports/GetAll".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'PagedResultDtoOfGetEmployeeLeaveReportForViewDto') as PagedResultDtoOfGetEmployeeLeaveReportForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppEmployeeleavereportsGetdetailedreportGet
  ///
  /// 
  Future<List<GetDetailedEmployeeLeaveReportForViewDto>?> apiServicesAppEmployeeleavereportsGetdetailedreportGet({ List<int>? userIdsFilter, int? organizationUnitId, int? userIdFilter, String? userNameFilter, DateTime? reportDateFrom, DateTime? reportDateTo, String? sorting, int? skipCount, int? maxResultCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/EmployeeLeaveReports/GetDetailedReport".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<GetDetailedEmployeeLeaveReportForViewDto>') as List).map((item) => item as GetDetailedEmployeeLeaveReportForViewDto).toList();
    } else {
      return null;
    }
  }
  /// ApiServicesAppEmployeeleavereportsGetemployeeleavereportstoexcelGet
  ///
  /// 
  Future<FileDto?> apiServicesAppEmployeeleavereportsGetemployeeleavereportstoexcelGet({ List<int>? userIdsFilter, int? organizationUnitId, String? userNameFilter, DateTime? reportDateFrom, DateTime? reportDateTo }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/EmployeeLeaveReports/GetEmployeeLeaveReportsToExcel".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'FileDto') as FileDto ;
    } else {
      return null;
    }
  }
}
