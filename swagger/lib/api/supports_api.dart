part of swagger.api;



class SupportsApi {
  final ApiClient apiClient;

  SupportsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppSupportsConfirmpaymentPost
  ///
  /// 
  Future apiServicesAppSupportsConfirmpaymentPost({ int id }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Supports/ConfirmPayment".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "id", id));
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

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppSupportsCreateoreditPost
  ///
  /// 
  Future apiServicesAppSupportsCreateoreditPost({ CreateOrEditSupportDto body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Supports/CreateOrEdit".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json"];

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

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppSupportsGetallGet
  ///
  /// 
  Future<PagedResultDtoOfGetSupportForViewDto> apiServicesAppSupportsGetallGet({ String filter, int tenantIdFilter, int supportParentId, String requestSubjectFilter, String requestDescriptionFilter, int requestTypeFilter, int requestStatusFilter, String additionalDescriptionFilter, String deviceNameFilter, String userNameFilter, String supportRequestSubjectFilter, DateTime creationDateStart, DateTime creationDateEnd, String sorting, int skipCount, int maxResultCount }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Supports/GetAll".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(tenantIdFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "TenantIdFilter", tenantIdFilter));
    }
    if(supportParentId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SupportParentId", supportParentId));
    }
    if(requestSubjectFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "RequestSubjectFilter", requestSubjectFilter));
    }
    if(requestDescriptionFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "RequestDescriptionFilter", requestDescriptionFilter));
    }
    if(requestTypeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "RequestTypeFilter", requestTypeFilter));
    }
    if(requestStatusFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "RequestStatusFilter", requestStatusFilter));
    }
    if(additionalDescriptionFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "AdditionalDescriptionFilter", additionalDescriptionFilter));
    }
    if(deviceNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "DeviceNameFilter", deviceNameFilter));
    }
    if(userNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserNameFilter", userNameFilter));
    }
    if(supportRequestSubjectFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SupportRequestSubjectFilter", supportRequestSubjectFilter));
    }
    if(creationDateStart != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CreationDateStart", creationDateStart));
    }
    if(creationDateEnd != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CreationDateEnd", creationDateEnd));
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

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PagedResultDtoOfGetSupportForViewDto') as PagedResultDtoOfGetSupportForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppSupportsGetalldeviceforlookuptableGet
  ///
  /// 
  Future<PagedResultDtoOfSupportDeviceLookupTableDto> apiServicesAppSupportsGetalldeviceforlookuptableGet({ String filter, String sorting, int skipCount, int maxResultCount }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Supports/GetAllDeviceForLookupTable".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
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

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PagedResultDtoOfSupportDeviceLookupTableDto') as PagedResultDtoOfSupportDeviceLookupTableDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppSupportsGetallsupportforlookuptableGet
  ///
  /// 
  Future<PagedResultDtoOfSupportSupportLookupTableDto> apiServicesAppSupportsGetallsupportforlookuptableGet({ String filter, String sorting, int skipCount, int maxResultCount }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Supports/GetAllSupportForLookupTable".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
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

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PagedResultDtoOfSupportSupportLookupTableDto') as PagedResultDtoOfSupportSupportLookupTableDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppSupportsGetalluserforlookuptableGet
  ///
  /// 
  Future<PagedResultDtoOfSupportUserLookupTableDto> apiServicesAppSupportsGetalluserforlookuptableGet({ String filter, String sorting, int skipCount, int maxResultCount }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Supports/GetAllUserForLookupTable".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
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

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PagedResultDtoOfSupportUserLookupTableDto') as PagedResultDtoOfSupportUserLookupTableDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppSupportsGetsupportforviewGet
  ///
  /// 
  Future<GetSupportForViewDto> apiServicesAppSupportsGetsupportforviewGet({ int id }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Supports/GetSupportForView".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "id", id));
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

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'GetSupportForViewDto') as GetSupportForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppSupportsGetsupportstoexcelGet
  ///
  /// 
  Future<FileDto> apiServicesAppSupportsGetsupportstoexcelGet({ String filter, String requestSubjectFilter, String requestDescriptionFilter, int requestTypeFilter, int requestStatusFilter, String additionalDescriptionFilter, String deviceNameFilter, String userNameFilter, String supportRequestSubjectFilter, DateTime creationDateStart, DateTime creationDateEnd }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Supports/GetSupportsToExcel".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(requestSubjectFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "RequestSubjectFilter", requestSubjectFilter));
    }
    if(requestDescriptionFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "RequestDescriptionFilter", requestDescriptionFilter));
    }
    if(requestTypeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "RequestTypeFilter", requestTypeFilter));
    }
    if(requestStatusFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "RequestStatusFilter", requestStatusFilter));
    }
    if(additionalDescriptionFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "AdditionalDescriptionFilter", additionalDescriptionFilter));
    }
    if(deviceNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "DeviceNameFilter", deviceNameFilter));
    }
    if(userNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserNameFilter", userNameFilter));
    }
    if(supportRequestSubjectFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SupportRequestSubjectFilter", supportRequestSubjectFilter));
    }
    if(creationDateStart != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CreationDateStart", creationDateStart));
    }
    if(creationDateEnd != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CreationDateEnd", creationDateEnd));
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

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'FileDto') as FileDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppSupportsRejectPost
  ///
  /// 
  Future apiServicesAppSupportsRejectPost({ int id }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Supports/Reject".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "id", id));
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

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppSupportsReplyPost
  ///
  /// 
  Future apiServicesAppSupportsReplyPost({ CreateOrEditSupportDto body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Supports/Reply".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json"];

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

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
}
