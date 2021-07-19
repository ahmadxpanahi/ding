part of swagger.api;



class CountriesApi {
  final ApiClient apiClient;

  CountriesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppCountriesCreateoreditPost
  ///
  /// 
  Future apiServicesAppCountriesCreateoreditPost({ CreateOrEditCountryDto? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Countries/CreateOrEdit".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json"];

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
  /// ApiServicesAppCountriesDeleteDelete
  ///
  /// 
  Future apiServicesAppCountriesDeleteDelete({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Countries/Delete".replaceAll("{format}","json");

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
      MultipartRequest mp = new MultipartRequest("", Uri());
      
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
  /// ApiServicesAppCountriesGetallGet
  ///
  /// 
  Future<PagedResultDtoOfGetCountryForViewDto?> apiServicesAppCountriesGetallGet({ String? filter, String? nameFilter, String? iSO3Filter, String? iSO2Filter, String? phoneCodeFilter, String? capitalFilter, String? currencyFilter, String? nativeNameFilter, String? regionFilter, String? subregionFilter, String? sorting, int? skipCount, int? maxResultCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Countries/GetAll".replaceAll("{format}","json");

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
    if(iSO3Filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ISO3Filter", iSO3Filter));
    }
    if(iSO2Filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ISO2Filter", iSO2Filter));
    }
    if(phoneCodeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "PhoneCodeFilter", phoneCodeFilter));
    }
    if(capitalFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CapitalFilter", capitalFilter));
    }
    if(currencyFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CurrencyFilter", currencyFilter));
    }
    if(nativeNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "NativeNameFilter", nativeNameFilter));
    }
    if(regionFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "RegionFilter", regionFilter));
    }
    if(subregionFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SubregionFilter", subregionFilter));
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
          apiClient.deserialize(response.body, 'PagedResultDtoOfGetCountryForViewDto') as PagedResultDtoOfGetCountryForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCountriesGetcountriestoexcelGet
  ///
  /// 
  Future<FileDto?> apiServicesAppCountriesGetcountriestoexcelGet({ String? filter, String? nameFilter, String? iSO3Filter, String? iSO2Filter, String? phoneCodeFilter, String? capitalFilter, String? currencyFilter, String? nativeNameFilter, String? regionFilter, String? subregionFilter }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Countries/GetCountriesToExcel".replaceAll("{format}","json");

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
    if(iSO3Filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ISO3Filter", iSO3Filter));
    }
    if(iSO2Filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ISO2Filter", iSO2Filter));
    }
    if(phoneCodeFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "PhoneCodeFilter", phoneCodeFilter));
    }
    if(capitalFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CapitalFilter", capitalFilter));
    }
    if(currencyFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CurrencyFilter", currencyFilter));
    }
    if(nativeNameFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "NativeNameFilter", nativeNameFilter));
    }
    if(regionFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "RegionFilter", regionFilter));
    }
    if(subregionFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SubregionFilter", subregionFilter));
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
  /// ApiServicesAppCountriesGetcountryforeditGet
  ///
  /// 
  Future<GetCountryForEditOutput?> apiServicesAppCountriesGetcountryforeditGet({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Countries/GetCountryForEdit".replaceAll("{format}","json");

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
      MultipartRequest mp = new MultipartRequest("", Uri());
      
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
          apiClient.deserialize(response.body, 'GetCountryForEditOutput') as GetCountryForEditOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCountriesGetcountryforviewGet
  ///
  /// 
  Future<GetCountryForViewDto?> apiServicesAppCountriesGetcountryforviewGet({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Countries/GetCountryForView".replaceAll("{format}","json");

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
      MultipartRequest mp = new MultipartRequest("", Uri());
      
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
          apiClient.deserialize(response.body, 'GetCountryForViewDto') as GetCountryForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCountriesWholePost
  ///
  /// 
  Future<ListResultDtoOfGetCountryForViewDto?> apiServicesAppCountriesWholePost() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Countries/Whole".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
          apiClient.deserialize(response.body, 'ListResultDtoOfGetCountryForViewDto') as ListResultDtoOfGetCountryForViewDto ;
    } else {
      return null;
    }
  }
}
