part of swagger.api;



class PurchasingResourcesApi {
  final ApiClient apiClient;

  PurchasingResourcesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppPurchasingresourcesCreateoreditPost
  ///
  /// 
  Future apiServicesAppPurchasingresourcesCreateoreditPost({ CreateOrEditPurchasingResourceDto? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/PurchasingResources/CreateOrEdit".replaceAll("{format}","json");

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

    var response = await apiClient.invokeAPI(path,
                                             'POST',
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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppPurchasingresourcesDeleteDelete
  ///
  /// 
  Future apiServicesAppPurchasingresourcesDeleteDelete({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/PurchasingResources/Delete".replaceAll("{format}","json");

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

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppPurchasingresourcesGetallGet
  ///
  /// 
  Future<PagedResultDtoOfGetPurchasingResourceForViewDto?> apiServicesAppPurchasingresourcesGetallGet({ String? filter, String? titleFilter, String? sorting, int? skipCount, int? maxResultCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/PurchasingResources/GetAll".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'PagedResultDtoOfGetPurchasingResourceForViewDto') as PagedResultDtoOfGetPurchasingResourceForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppPurchasingresourcesGetpurchasingresourceforeditGet
  ///
  /// 
  Future<GetPurchasingResourceForEditOutput?> apiServicesAppPurchasingresourcesGetpurchasingresourceforeditGet({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/PurchasingResources/GetPurchasingResourceForEdit".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetPurchasingResourceForEditOutput') as GetPurchasingResourceForEditOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppPurchasingresourcesGetpurchasingresourceforviewGet
  ///
  /// 
  Future<GetPurchasingResourceForViewDto?> apiServicesAppPurchasingresourcesGetpurchasingresourceforviewGet({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/PurchasingResources/GetPurchasingResourceForView".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetPurchasingResourceForViewDto') as GetPurchasingResourceForViewDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppPurchasingresourcesGetpurchasingresourcestoexcelGet
  ///
  /// 
  Future<FileDto?> apiServicesAppPurchasingresourcesGetpurchasingresourcestoexcelGet({ String? filter, String? titleFilter }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/PurchasingResources/GetPurchasingResourcesToExcel".replaceAll("{format}","json");

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
