part of swagger.api;



class TimingApi {
  final ApiClient apiClient;

  TimingApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppTimingGettimezonecomboboxitemsGet
  ///
  /// 
  Future<List<ComboboxItemDto>> apiServicesAppTimingGettimezonecomboboxitemsGet({ String selectedTimezoneId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Timing/GetTimezoneComboboxItems".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(selectedTimezoneId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SelectedTimezoneId", selectedTimezoneId));
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
        (apiClient.deserialize(response.body, 'List<ComboboxItemDto>') as List).map((item) => item as ComboboxItemDto).toList();
    } else {
      return null;
    }
  }
  /// ApiServicesAppTimingGettimezonesGet
  ///
  /// 
  Future<ListResultDtoOfNameValueDto> apiServicesAppTimingGettimezonesGet(String defaultTimezoneScope) async {
    Object postBody = null;

    // verify required params are set
    if(defaultTimezoneScope == null) {
     throw new ApiException(400, "Missing required param: defaultTimezoneScope");
    }

    // create path and map variables
    String path = "/api/services/app/Timing/GetTimezones".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "DefaultTimezoneScope", defaultTimezoneScope));
    
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
          apiClient.deserialize(response.body, 'ListResultDtoOfNameValueDto') as ListResultDtoOfNameValueDto ;
    } else {
      return null;
    }
  }
}
