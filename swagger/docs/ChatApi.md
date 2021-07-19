# swagger.api.ChatApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppChatGetuserchatfriendswithsettingsGet**](ChatApi.md#apiServicesAppChatGetuserchatfriendswithsettingsGet) | **GET** /api/services/app/Chat/GetUserChatFriendsWithSettings | ApiServicesAppChatGetuserchatfriendswithsettingsGet
[**apiServicesAppChatGetuserchatmessagesGet**](ChatApi.md#apiServicesAppChatGetuserchatmessagesGet) | **GET** /api/services/app/Chat/GetUserChatMessages | ApiServicesAppChatGetuserchatmessagesGet
[**apiServicesAppChatMarkallunreadmessagesofuserasreadPost**](ChatApi.md#apiServicesAppChatMarkallunreadmessagesofuserasreadPost) | **POST** /api/services/app/Chat/MarkAllUnreadMessagesOfUserAsRead | ApiServicesAppChatMarkallunreadmessagesofuserasreadPost


# **apiServicesAppChatGetuserchatfriendswithsettingsGet**
> GetUserChatFriendsWithSettingsOutput apiServicesAppChatGetuserchatfriendswithsettingsGet()

ApiServicesAppChatGetuserchatfriendswithsettingsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChatApi();

try { 
    var result = api_instance.apiServicesAppChatGetuserchatfriendswithsettingsGet();
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->apiServicesAppChatGetuserchatfriendswithsettingsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetUserChatFriendsWithSettingsOutput**](GetUserChatFriendsWithSettingsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppChatGetuserchatmessagesGet**
> ListResultDtoOfChatMessageDto apiServicesAppChatGetuserchatmessagesGet(tenantId, userId, minMessageId)

ApiServicesAppChatGetuserchatmessagesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChatApi();
var tenantId = 56; // int | 
var userId = 789; // int | 
var minMessageId = 789; // int | 

try { 
    var result = api_instance.apiServicesAppChatGetuserchatmessagesGet(tenantId, userId, minMessageId);
    print(result);
} catch (e) {
    print("Exception when calling ChatApi->apiServicesAppChatGetuserchatmessagesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **int**|  | [optional] 
 **userId** | **int**|  | [optional] 
 **minMessageId** | **int**|  | [optional] 

### Return type

[**ListResultDtoOfChatMessageDto**](ListResultDtoOfChatMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppChatMarkallunreadmessagesofuserasreadPost**
?> apiServicesAppChatMarkallunreadmessagesofuserasreadPost(body)

ApiServicesAppChatMarkallunreadmessagesofuserasreadPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChatApi();
var body = new MarkAllUnreadMessagesOfUserAsReadInput(); // MarkAllUnreadMessagesOfUserAsReadInput | 

try { 
    api_instance.apiServicesAppChatMarkallunreadmessagesofuserasreadPost(body);
} catch (e) {
    print("Exception when calling ChatApi->apiServicesAppChatMarkallunreadmessagesofuserasreadPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MarkAllUnreadMessagesOfUserAsReadInput**](MarkAllUnreadMessagesOfUserAsReadInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

