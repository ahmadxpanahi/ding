part of swagger.api;



class ReportsTenantsApi {
  final ApiClient apiClient;

  ReportsTenantsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppReportstenantsGetallGet
  ///
  /// 
  Future<PagedResultDtoOfGetReportsTenantForViewDto?> apiServicesAppReportstenantsGetallGet({ String? filter, DateTime? subscriptionEndDateStart, DateTime? subscriptionEndDateEnd, DateTime? creationDateStart, DateTime? creationDateEnd, String? seniorManagerNameFilter, String? seniorManagerSurnameFilter, String? seniorManagerPhoneNumberFilter, String? adminEmailAddressFilter, String? addressFilter, String? tenancyNameFilter, String? nameFilter, int? isActiveFilter, String? countryNameFilter, String? stateNameFilter, String? cityNameFilter, String? sorting, int? skipCount, int? maxResultCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/ReportsTenants/GetAll".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(subscriptionEndDateStart != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SubscriptionEndDateStart", subscriptionEndDateStart));
    }
    if(subscriptionEndDateEnd != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SubscriptionEndDateEnd", subscriptionEndDateEnd));
    }
    if(creationDateStart != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CreationDateStart", creationDateStart));
    }
    if(creationDateEnd != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CreationDateEnd", creationDateEnd));
    }
    if(seniorManagerNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SeniorManagerNameFilter", seniorManagerNameFilter));
    }
    if(seniorManagerSurnameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SeniorManagerSurnameFilter", seniorManagerSurnameFilter));
    }
    if(seniorManagerPhoneNumberFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SeniorManagerPhoneNumberFilter", seniorManagerPhoneNumberFilter));
    }
    if(adminEmailAddressFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "AdminEmailAddressFilter", adminEmailAddressFilter));
    }
    if(addressFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "AddressFilter", addressFilter));
    }
    if(tenancyNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "TenancyNameFilter", tenancyNameFilter));
    }
    if(nameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "NameFilter", nameFilter));
    }
    if(isActiveFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "IsActiveFilter", isActiveFilter));
    }
    if(countryNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CountryNameFilter", countryNameFilter));
    }
    if(stateNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "StateNameFilter", stateNameFilter));
    }
    if(cityNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CityNameFilter", cityNameFilter));
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
          apiClient.deserialize(response.body, 'PagedResultDtoOfGetReportsTenantForViewDto') as PagedResultDtoOfGetReportsTenantForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppReportstenantsGetreportstenantstoexcelGet
  ///
  /// 
  Future<FileDto?> apiServicesAppReportstenantsGetreportstenantstoexcelGet({ String? filter, DateTime? subscriptionEndDateStart, DateTime? subscriptionEndDateEnd, DateTime? creationDateStart, DateTime? creationDateEnd, String? seniorManagerNameFilter, String? seniorManagerSurnameFilter, String? seniorManagerPhoneNumberFilter, String? adminEmailAddressFilter, String? addressFilter, String? tenancyNameFilter, String? nameFilter, int? isActiveFilter, String? countryNameFilter, String? stateNameFilter, String? cityNameFilter }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/ReportsTenants/GetReportsTenantsToExcel".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(subscriptionEndDateStart != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SubscriptionEndDateStart", subscriptionEndDateStart));
    }
    if(subscriptionEndDateEnd != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SubscriptionEndDateEnd", subscriptionEndDateEnd));
    }
    if(creationDateStart != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CreationDateStart", creationDateStart));
    }
    if(creationDateEnd != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CreationDateEnd", creationDateEnd));
    }
    if(seniorManagerNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SeniorManagerNameFilter", seniorManagerNameFilter));
    }
    if(seniorManagerSurnameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SeniorManagerSurnameFilter", seniorManagerSurnameFilter));
    }
    if(seniorManagerPhoneNumberFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SeniorManagerPhoneNumberFilter", seniorManagerPhoneNumberFilter));
    }
    if(adminEmailAddressFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "AdminEmailAddressFilter", adminEmailAddressFilter));
    }
    if(addressFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "AddressFilter", addressFilter));
    }
    if(tenancyNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "TenancyNameFilter", tenancyNameFilter));
    }
    if(nameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "NameFilter", nameFilter));
    }
    if(isActiveFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "IsActiveFilter", isActiveFilter));
    }
    if(countryNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CountryNameFilter", countryNameFilter));
    }
    if(stateNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "StateNameFilter", stateNameFilter));
    }
    if(cityNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CityNameFilter", cityNameFilter));
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
