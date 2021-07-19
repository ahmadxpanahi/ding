part of swagger.api;



class CitiesApi {
  final ApiClient apiClient;

  CitiesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppCitiesCreateoreditPost
  ///
  /// 
  Future apiServicesAppCitiesCreateoreditPost({ CreateOrEditCityDto body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Cities/CreateOrEdit".replaceAll("{format}","json");

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
  /// ApiServicesAppCitiesDeleteDelete
  ///
  /// 
  Future apiServicesAppCitiesDeleteDelete({ int id }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Cities/Delete".replaceAll("{format}","json");

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
  /// ApiServicesAppCitiesGetallGet
  ///
  /// 
  Future<PagedResultDtoOfGetCityForViewDto> apiServicesAppCitiesGetallGet({ String filter, String nameFilter, String stateCodeFilter, String countryCodeFilter, String stateNameFilter, String countryNameFilter, String sorting, int skipCount, int maxResultCount }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Cities/GetAll".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(nameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "NameFilter", nameFilter));
    }
    if(stateCodeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "StateCodeFilter", stateCodeFilter));
    }
    if(countryCodeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CountryCodeFilter", countryCodeFilter));
    }
    if(stateNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "StateNameFilter", stateNameFilter));
    }
    if(countryNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CountryNameFilter", countryNameFilter));
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
          apiClient.deserialize(response.body, 'PagedResultDtoOfGetCityForViewDto') as PagedResultDtoOfGetCityForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCitiesGetallcountryforlookuptableGet
  ///
  /// 
  Future<PagedResultDtoOfCityCountryLookupTableDto> apiServicesAppCitiesGetallcountryforlookuptableGet({ String filter, String sorting, int skipCount, int maxResultCount }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Cities/GetAllCountryForLookupTable".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'PagedResultDtoOfCityCountryLookupTableDto') as PagedResultDtoOfCityCountryLookupTableDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCitiesGetallstateforlookuptableGet
  ///
  /// 
  Future<PagedResultDtoOfCityStateLookupTableDto> apiServicesAppCitiesGetallstateforlookuptableGet({ String filter, String sorting, int skipCount, int maxResultCount }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Cities/GetAllStateForLookupTable".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'PagedResultDtoOfCityStateLookupTableDto') as PagedResultDtoOfCityStateLookupTableDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCitiesGetcitiestoexcelGet
  ///
  /// 
  Future<FileDto> apiServicesAppCitiesGetcitiestoexcelGet({ String filter, String nameFilter, String stateCodeFilter, String countryCodeFilter, String stateNameFilter, String countryNameFilter }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Cities/GetCitiesToExcel".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(nameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "NameFilter", nameFilter));
    }
    if(stateCodeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "StateCodeFilter", stateCodeFilter));
    }
    if(countryCodeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CountryCodeFilter", countryCodeFilter));
    }
    if(stateNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "StateNameFilter", stateNameFilter));
    }
    if(countryNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CountryNameFilter", countryNameFilter));
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
  /// ApiServicesAppCitiesGetcityforeditGet
  ///
  /// 
  Future<GetCityForEditOutput> apiServicesAppCitiesGetcityforeditGet({ int id }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Cities/GetCityForEdit".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetCityForEditOutput') as GetCityForEditOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCitiesGetcityforviewGet
  ///
  /// 
  Future<GetCityForViewDto> apiServicesAppCitiesGetcityforviewGet({ int id }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Cities/GetCityForView".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetCityForViewDto') as GetCityForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCitiesWholebystatePost
  ///
  /// 
  Future<ListResultDtoOfGetCityForViewDto> apiServicesAppCitiesWholebystatePost({ int stateId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Cities/WholeByState".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(stateId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "stateId", stateId));
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
          apiClient.deserialize(response.body, 'ListResultDtoOfGetCityForViewDto') as ListResultDtoOfGetCityForViewDto ;
    } else {
      return null;
    }
  }
}
