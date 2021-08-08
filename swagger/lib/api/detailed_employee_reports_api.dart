part of swagger.api;



class DetailedEmployeeReportsApi {
  final ApiClient apiClient;

  DetailedEmployeeReportsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppDetailedemployeereportsGetallGet
  ///
  /// 
  Future<GetDetailedEmployeeReportReesultForViewDto?> apiServicesAppDetailedemployeereportsGetallGet({ int? userIdFilter, String? userNameFilter, int? workScheduleIdFilter, String? workScheduleNameFilter, DateTime? reportDateFrom, DateTime? reportDateTo }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/DetailedEmployeeReports/GetAll".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(userIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserIdFilter", userIdFilter));
    }
    if(userNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserNameFilter", userNameFilter));
    }
    if(workScheduleIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "WorkScheduleIdFilter", workScheduleIdFilter));
    }
    if(workScheduleNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "WorkScheduleNameFilter", workScheduleNameFilter));
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
        (apiClient.deserialize(response.body, 'GetDetailedEmployeeReportReesultForViewDto') as GetDetailedEmployeeReportReesultForViewDto);
    } else {
      return null;
    }
  }
}
