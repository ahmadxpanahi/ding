part of swagger.api;



class VacationTypesApi {
  final ApiClient apiClient;

  VacationTypesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppVacationtypesCreateoreditPost
  ///
  /// 
  Future apiServicesAppVacationtypesCreateoreditPost({ CreateOrEditVacationTypeDto? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/VacationTypes/CreateOrEdit".replaceAll("{format}","json");

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
  /// ApiServicesAppVacationtypesDeleteDelete
  ///
  /// 
  Future apiServicesAppVacationtypesDeleteDelete({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/VacationTypes/Delete".replaceAll("{format}","json");

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
  /// ApiServicesAppVacationtypesGetallGet
  ///
  /// 
  Future<PagedResultDtoOfGetVacationTypeForViewDto> apiServicesAppVacationtypesGetallGet({ String? filter, String? titleFilter, int? maxTotalVacationHoursFilter, int? minTotalVacationHoursFilter, int? maxVacationHoursPerMonthFilter, int? minVacationHoursPerMonthFilter, int? maxVacationHoursPerDayFilter, int? minVacationHoursPerDayFilter, int? hasLimitationVacationPerDayFilter, String? descriptionFilter, String? sorting, int? skipCount, int? maxResultCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/VacationTypes/GetAll".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(titleFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "TitleFilter", titleFilter));
    }
    if(maxTotalVacationHoursFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxTotalVacationHoursFilter", maxTotalVacationHoursFilter));
    }
    if(minTotalVacationHoursFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinTotalVacationHoursFilter", minTotalVacationHoursFilter));
    }
    if(maxVacationHoursPerMonthFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxVacationHoursPerMonthFilter", maxVacationHoursPerMonthFilter));
    }
    if(minVacationHoursPerMonthFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinVacationHoursPerMonthFilter", minVacationHoursPerMonthFilter));
    }
    if(maxVacationHoursPerDayFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxVacationHoursPerDayFilter", maxVacationHoursPerDayFilter));
    }
    if(minVacationHoursPerDayFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinVacationHoursPerDayFilter", minVacationHoursPerDayFilter));
    }
    if(hasLimitationVacationPerDayFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "HasLimitationVacationPerDayFilter", hasLimitationVacationPerDayFilter));
    }
    if(descriptionFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "DescriptionFilter", descriptionFilter));
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
          apiClient.deserialize(response.body, 'PagedResultDtoOfGetVacationTypeForViewDto') as PagedResultDtoOfGetVacationTypeForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppVacationtypesGetalltenantvacationtypesGet
  ///
  /// 
  Future<List<VacationTypeDto>> apiServicesAppVacationtypesGetalltenantvacationtypesGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/VacationTypes/GetAllTenantVacationTypes".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<VacationTypeDto>') as List).map((item) => item as VacationTypeDto).toList();
    } else {
      return null;
    }
  }
  /// ApiServicesAppVacationtypesGetvacationtypeforeditGet
  ///
  /// 
  Future<GetVacationTypeForEditOutput> apiServicesAppVacationtypesGetvacationtypeforeditGet({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/VacationTypes/GetVacationTypeForEdit".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetVacationTypeForEditOutput') as GetVacationTypeForEditOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppVacationtypesGetvacationtypeforviewGet
  ///
  /// 
  Future<GetVacationTypeForViewDto> apiServicesAppVacationtypesGetvacationtypeforviewGet({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/VacationTypes/GetVacationTypeForView".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetVacationTypeForViewDto') as GetVacationTypeForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppVacationtypesGetvacationtypestoexcelGet
  ///
  /// 
  Future<FileDto> apiServicesAppVacationtypesGetvacationtypestoexcelGet({ String? filter, String? titleFilter, int? maxTotalVacationHoursFilter, int? minTotalVacationHoursFilter, int? maxVacationHoursPerMonthFilter, int? minVacationHoursPerMonthFilter, int? maxVacationHoursPerDayFilter, int? minVacationHoursPerDayFilter, int? hasLimitationVacationPerDayFilter, String? descriptionFilter }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/VacationTypes/GetVacationTypesToExcel".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(titleFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "TitleFilter", titleFilter));
    }
    if(maxTotalVacationHoursFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxTotalVacationHoursFilter", maxTotalVacationHoursFilter));
    }
    if(minTotalVacationHoursFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinTotalVacationHoursFilter", minTotalVacationHoursFilter));
    }
    if(maxVacationHoursPerMonthFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxVacationHoursPerMonthFilter", maxVacationHoursPerMonthFilter));
    }
    if(minVacationHoursPerMonthFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinVacationHoursPerMonthFilter", minVacationHoursPerMonthFilter));
    }
    if(maxVacationHoursPerDayFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxVacationHoursPerDayFilter", maxVacationHoursPerDayFilter));
    }
    if(minVacationHoursPerDayFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinVacationHoursPerDayFilter", minVacationHoursPerDayFilter));
    }
    if(hasLimitationVacationPerDayFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "HasLimitationVacationPerDayFilter", hasLimitationVacationPerDayFilter));
    }
    if(descriptionFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "DescriptionFilter", descriptionFilter));
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
