part of swagger.api;



class UserClockInOutsApi {
  final ApiClient apiClient;

  UserClockInOutsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppUserclockinoutsClockinoutbyrequestapprovalPost
  ///
  /// 
  Future apiServicesAppUserclockinoutsClockinoutbyrequestapprovalPost({ CreateOrEditUserClockInOutDto? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserClockInOuts/ClockInOutByRequestApproval".replaceAll("{format}","json");

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

    var response = await (apiClient.invokeAPI(path,
                                             'POST',
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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppUserclockinoutsCreateoreditPost
  ///
  /// 
  Future apiServicesAppUserclockinoutsCreateoreditPost({ CreateOrEditUserClockInOutDto? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserClockInOuts/CreateOrEdit".replaceAll("{format}","json");

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

    var response = await (apiClient.invokeAPI(path,
                                             'POST',
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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppUserclockinoutsDeleteDelete
  ///
  /// 
  Future apiServicesAppUserclockinoutsDeleteDelete({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserClockInOuts/Delete".replaceAll("{format}","json");

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

    var response = await (apiClient.invokeAPI(path,
                                             'DELETE',
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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppUserclockinoutsGetallGet
  ///
  /// 
  Future<PagedResultDtoOfGetUserClockInOutForViewDto> apiServicesAppUserclockinoutsGetallGet({ String? filter, DateTime? maxClockFilter, DateTime? minClockFilter, int? clockInOutTypeFilter, int? abnormalityTypeFilter, int? maxWeekNumberFilter, int? minWeekNumberFilter, String? userNameFilter, String? workScheduleNameFilter, String? workHourDayNameFilter, String? organizationUnitDisplayNameFilter, String? sorting, int? skipCount, int? maxResultCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserClockInOuts/GetAll".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(maxClockFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxClockFilter", maxClockFilter));
    }
    if(minClockFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinClockFilter", minClockFilter));
    }
    if(clockInOutTypeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ClockInOutTypeFilter", clockInOutTypeFilter));
    }
    if(abnormalityTypeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "AbnormalityTypeFilter", abnormalityTypeFilter));
    }
    if(maxWeekNumberFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxWeekNumberFilter", maxWeekNumberFilter));
    }
    if(minWeekNumberFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinWeekNumberFilter", minWeekNumberFilter));
    }
    if(userNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserNameFilter", userNameFilter));
    }
    if(workScheduleNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "WorkScheduleNameFilter", workScheduleNameFilter));
    }
    if(workHourDayNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "WorkHourDayNameFilter", workHourDayNameFilter));
    }
    if(organizationUnitDisplayNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "OrganizationUnitDisplayNameFilter", organizationUnitDisplayNameFilter));
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
          apiClient.deserialize(response.body, 'PagedResultDtoOfGetUserClockInOutForViewDto') as PagedResultDtoOfGetUserClockInOutForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserclockinoutsGetallorganizationunitfortabledropdownGet
  ///
  /// 
  Future<List<UserClockInOutOrganizationUnitLookupTableDto>> apiServicesAppUserclockinoutsGetallorganizationunitfortabledropdownGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserClockInOuts/GetAllOrganizationUnitForTableDropdown".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<UserClockInOutOrganizationUnitLookupTableDto>') as List).map((item) => item as UserClockInOutOrganizationUnitLookupTableDto).toList();
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserclockinoutsGetalluserfortabledropdownGet
  ///
  /// 
  Future<List<UserClockInOutUserLookupTableDto>> apiServicesAppUserclockinoutsGetalluserfortabledropdownGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserClockInOuts/GetAllUserForTableDropdown".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<UserClockInOutUserLookupTableDto>') as List).map((item) => item as UserClockInOutUserLookupTableDto).toList();
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserclockinoutsGetallworkhourfortabledropdownGet
  ///
  /// 
  Future<List<UserClockInOutWorkHourLookupTableDto>> apiServicesAppUserclockinoutsGetallworkhourfortabledropdownGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserClockInOuts/GetAllWorkHourForTableDropdown".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<UserClockInOutWorkHourLookupTableDto>') as List).map((item) => item as UserClockInOutWorkHourLookupTableDto).toList();
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserclockinoutsGetallworkschedulefortabledropdownGet
  ///
  /// 
  Future<List<UserClockInOutWorkScheduleLookupTableDto>> apiServicesAppUserclockinoutsGetallworkschedulefortabledropdownGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserClockInOuts/GetAllWorkScheduleForTableDropdown".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<UserClockInOutWorkScheduleLookupTableDto>') as List).map((item) => item as UserClockInOutWorkScheduleLookupTableDto).toList();
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserclockinoutsGetuserclockinoutforeditGet
  ///
  /// 
  Future<GetUserClockInOutForEditOutput> apiServicesAppUserclockinoutsGetuserclockinoutforeditGet({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserClockInOuts/GetUserClockInOutForEdit".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetUserClockInOutForEditOutput') as GetUserClockInOutForEditOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserclockinoutsGetuserclockinoutforviewGet
  ///
  /// 
  Future<GetUserClockInOutForViewDto> apiServicesAppUserclockinoutsGetuserclockinoutforviewGet({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserClockInOuts/GetUserClockInOutForView".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetUserClockInOutForViewDto') as GetUserClockInOutForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserclockinoutsGetuserclocksstatusGet
  ///
  /// 
  Future<PagedResultDtoOfGetUserClockInOutForViewDto> apiServicesAppUserclockinoutsGetuserclocksstatusGet({ DateTime? maxClockFilter, DateTime? minClockFilter, String? sorting, int? skipCount, int? maxResultCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserClockInOuts/GetUserClocksStatus".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(maxClockFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxClockFilter", maxClockFilter));
    }
    if(minClockFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinClockFilter", minClockFilter));
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
          apiClient.deserialize(response.body, 'PagedResultDtoOfGetUserClockInOutForViewDto') as PagedResultDtoOfGetUserClockInOutForViewDto ;
    } else {
      return null;
    }
  }
}
