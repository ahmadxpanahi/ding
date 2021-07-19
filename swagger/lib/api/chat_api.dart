part of swagger.api;



class ChatApi {
  final ApiClient apiClient;

  ChatApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppChatGetuserchatfriendswithsettingsGet
  ///
  /// 
  Future<GetUserChatFriendsWithSettingsOutput?> apiServicesAppChatGetuserchatfriendswithsettingsGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Chat/GetUserChatFriendsWithSettings".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetUserChatFriendsWithSettingsOutput') as GetUserChatFriendsWithSettingsOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppChatGetuserchatmessagesGet
  ///
  /// 
  Future<ListResultDtoOfChatMessageDto?> apiServicesAppChatGetuserchatmessagesGet({ int? tenantId, int? userId, int? minMessageId }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Chat/GetUserChatMessages".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(tenantId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "TenantId", tenantId));
    }
    if(userId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserId", userId));
    }
    if(minMessageId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MinMessageId", minMessageId));
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
          apiClient.deserialize(response.body, 'ListResultDtoOfChatMessageDto') as ListResultDtoOfChatMessageDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppChatMarkallunreadmessagesofuserasreadPost
  ///
  /// 
  Future apiServicesAppChatMarkallunreadmessagesofuserasreadPost({ MarkAllUnreadMessagesOfUserAsReadInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Chat/MarkAllUnreadMessagesOfUserAsRead".replaceAll("{format}","json");

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
}
