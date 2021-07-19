part of swagger.api;



class CalendarsApi {
  final ApiClient apiClient;

  CalendarsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppCalendarsCreateoreditPost
  ///
  /// 
  Future apiServicesAppCalendarsCreateoreditPost({ CreateOrEditCalendarDto body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Calendars/CreateOrEdit".replaceAll("{format}","json");

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
  /// ApiServicesAppCalendarsDeleteDelete
  ///
  /// 
  Future apiServicesAppCalendarsDeleteDelete({ int id }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Calendars/Delete".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Id", id));
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
                                             'DELETE',
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
  /// ApiServicesAppCalendarsGetallGet
  ///
  /// 
  Future<ListResultDtoOfGetCalendarForViewDto> apiServicesAppCalendarsGetallGet({ String filter, int yearFilter, String cultureFilter, String eventNameFilter, int eventTypeFilter, int maxResultCount }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Calendars/GetAll".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(yearFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "YearFilter", yearFilter));
    }
    if(cultureFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CultureFilter", cultureFilter));
    }
    if(eventNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EventNameFilter", eventNameFilter));
    }
    if(eventTypeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EventTypeFilter", eventTypeFilter));
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
          apiClient.deserialize(response.body, 'ListResultDtoOfGetCalendarForViewDto') as ListResultDtoOfGetCalendarForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCalendarsGetcalendareventbydateGet
  ///
  /// 
  Future<ListResultDtoOfGetCalendarForViewDto> apiServicesAppCalendarsGetcalendareventbydateGet({ DateTime input }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Calendars/GetCalendarEventByDate".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(input != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "input", input));
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
          apiClient.deserialize(response.body, 'ListResultDtoOfGetCalendarForViewDto') as ListResultDtoOfGetCalendarForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCalendarsGetcalendarforeditGet
  ///
  /// 
  Future<GetCalendarForEditOutput> apiServicesAppCalendarsGetcalendarforeditGet({ int id }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Calendars/GetCalendarForEdit".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Id", id));
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
          apiClient.deserialize(response.body, 'GetCalendarForEditOutput') as GetCalendarForEditOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCalendarsGetcalendarforviewGet
  ///
  /// 
  Future<GetCalendarForViewDto> apiServicesAppCalendarsGetcalendarforviewGet({ int id }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Calendars/GetCalendarForView".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetCalendarForViewDto') as GetCalendarForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCalendarsGetcalendarstoexcelGet
  ///
  /// 
  Future<FileDto> apiServicesAppCalendarsGetcalendarstoexcelGet({ String filter, int yearFilter, String cultureFilter, String eventNameFilter, int eventTypeFilter }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Calendars/GetCalendarsToExcel".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(yearFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "YearFilter", yearFilter));
    }
    if(cultureFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CultureFilter", cultureFilter));
    }
    if(eventNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EventNameFilter", eventNameFilter));
    }
    if(eventTypeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EventTypeFilter", eventTypeFilter));
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
  /// ApiServicesAppCalendarsImportfromtimeirPost
  ///
  /// 
  Future apiServicesAppCalendarsImportfromtimeirPost() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Calendars/ImportFromTimeIR".replaceAll("{format}","json");

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
