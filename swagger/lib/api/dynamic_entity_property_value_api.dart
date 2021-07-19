part of swagger.api;



class DynamicEntityPropertyValueApi {
  final ApiClient apiClient;

  DynamicEntityPropertyValueApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppDynamicentitypropertyvalueAddPost
  ///
  /// 
  Future apiServicesAppDynamicentitypropertyvalueAddPost({ DynamicEntityPropertyValueDto? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/DynamicEntityPropertyValue/Add".replaceAll("{format}","json");

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
  /// ApiServicesAppDynamicentitypropertyvalueCleanvaluesPost
  ///
  /// 
  Future apiServicesAppDynamicentitypropertyvalueCleanvaluesPost({ CleanValuesInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/DynamicEntityPropertyValue/CleanValues".replaceAll("{format}","json");

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
  /// ApiServicesAppDynamicentitypropertyvalueDeleteDelete
  ///
  /// 
  Future apiServicesAppDynamicentitypropertyvalueDeleteDelete({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/DynamicEntityPropertyValue/Delete".replaceAll("{format}","json");

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
  /// ApiServicesAppDynamicentitypropertyvalueGetGet
  ///
  /// 
  Future<DynamicEntityPropertyValueDto> apiServicesAppDynamicentitypropertyvalueGetGet({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/DynamicEntityPropertyValue/Get".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'DynamicEntityPropertyValueDto') as DynamicEntityPropertyValueDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppDynamicentitypropertyvalueGetallGet
  ///
  /// 
  Future<ListResultDtoOfDynamicEntityPropertyValueDto> apiServicesAppDynamicentitypropertyvalueGetallGet({ String? entityId, int? propertyId }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/DynamicEntityPropertyValue/GetAll".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(entityId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "EntityId", entityId));
    }
    if(propertyId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "PropertyId", propertyId));
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
          apiClient.deserialize(response.body, 'ListResultDtoOfDynamicEntityPropertyValueDto') as ListResultDtoOfDynamicEntityPropertyValueDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppDynamicentitypropertyvalueGetalldynamicentitypropertyvaluesGet
  ///
  /// 
  Future<GetAllDynamicEntityPropertyValuesOutput> apiServicesAppDynamicentitypropertyvalueGetalldynamicentitypropertyvaluesGet(String entityFullName, String entityId) async {
    Object? postBody = null;

    // verify required params are set
    if(entityFullName == null) {
     throw new ApiException(400, "Missing required param: entityFullName");
    }
    if(entityId == null) {
     throw new ApiException(400, "Missing required param: entityId");
    }

    // create path and map variables
    String path = "/api/services/app/DynamicEntityPropertyValue/GetAllDynamicEntityPropertyValues".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "EntityFullName", entityFullName));
      queryParams.addAll(_convertParametersForCollectionFormat("", "EntityId", entityId));
    
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
          apiClient.deserialize(response.body, 'GetAllDynamicEntityPropertyValuesOutput') as GetAllDynamicEntityPropertyValuesOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppDynamicentitypropertyvalueInsertorupdateallvaluesPost
  ///
  /// 
  Future apiServicesAppDynamicentitypropertyvalueInsertorupdateallvaluesPost({ InsertOrUpdateAllValuesInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/DynamicEntityPropertyValue/InsertOrUpdateAllValues".replaceAll("{format}","json");

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
  /// ApiServicesAppDynamicentitypropertyvalueUpdatePut
  ///
  /// 
  Future apiServicesAppDynamicentitypropertyvalueUpdatePut({ DynamicEntityPropertyValueDto? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/DynamicEntityPropertyValue/Update".replaceAll("{format}","json");

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
                                             'PUT',
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
}
