# swagger.api.FriendshipApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppFriendshipAcceptfriendshiprequestPost**](FriendshipApi.md#apiServicesAppFriendshipAcceptfriendshiprequestPost) | **POST** /api/services/app/Friendship/AcceptFriendshipRequest | ApiServicesAppFriendshipAcceptfriendshiprequestPost
[**apiServicesAppFriendshipBlockuserPost**](FriendshipApi.md#apiServicesAppFriendshipBlockuserPost) | **POST** /api/services/app/Friendship/BlockUser | ApiServicesAppFriendshipBlockuserPost
[**apiServicesAppFriendshipCreatefriendshiprequestPost**](FriendshipApi.md#apiServicesAppFriendshipCreatefriendshiprequestPost) | **POST** /api/services/app/Friendship/CreateFriendshipRequest | ApiServicesAppFriendshipCreatefriendshiprequestPost
[**apiServicesAppFriendshipCreatefriendshiprequestbyusernamePost**](FriendshipApi.md#apiServicesAppFriendshipCreatefriendshiprequestbyusernamePost) | **POST** /api/services/app/Friendship/CreateFriendshipRequestByUserName | ApiServicesAppFriendshipCreatefriendshiprequestbyusernamePost
[**apiServicesAppFriendshipUnblockuserPost**](FriendshipApi.md#apiServicesAppFriendshipUnblockuserPost) | **POST** /api/services/app/Friendship/UnblockUser | ApiServicesAppFriendshipUnblockuserPost


# **apiServicesAppFriendshipAcceptfriendshiprequestPost**
?> apiServicesAppFriendshipAcceptfriendshiprequestPost(body)

ApiServicesAppFriendshipAcceptfriendshiprequestPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FriendshipApi();
var body = new AcceptFriendshipRequestInput(); // AcceptFriendshipRequestInput | 

try { 
    api_instance.apiServicesAppFriendshipAcceptfriendshiprequestPost(body);
} catch (e) {
    print("Exception when calling FriendshipApi->apiServicesAppFriendshipAcceptfriendshiprequestPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AcceptFriendshipRequestInput**](AcceptFriendshipRequestInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppFriendshipBlockuserPost**
?> apiServicesAppFriendshipBlockuserPost(body)

ApiServicesAppFriendshipBlockuserPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FriendshipApi();
var body = new BlockUserInput(); // BlockUserInput | 

try { 
    api_instance.apiServicesAppFriendshipBlockuserPost(body);
} catch (e) {
    print("Exception when calling FriendshipApi->apiServicesAppFriendshipBlockuserPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BlockUserInput**](BlockUserInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppFriendshipCreatefriendshiprequestPost**
> FriendDto apiServicesAppFriendshipCreatefriendshiprequestPost(body)

ApiServicesAppFriendshipCreatefriendshiprequestPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FriendshipApi();
var body = new CreateFriendshipRequestInput(); // CreateFriendshipRequestInput | 

try { 
    var result = api_instance.apiServicesAppFriendshipCreatefriendshiprequestPost(body);
    print(result);
} catch (e) {
    print("Exception when calling FriendshipApi->apiServicesAppFriendshipCreatefriendshiprequestPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFriendshipRequestInput**](CreateFriendshipRequestInput.md)|  | [optional] 

### Return type

[**FriendDto**](FriendDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppFriendshipCreatefriendshiprequestbyusernamePost**
> FriendDto apiServicesAppFriendshipCreatefriendshiprequestbyusernamePost(body)

ApiServicesAppFriendshipCreatefriendshiprequestbyusernamePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FriendshipApi();
var body = new CreateFriendshipRequestByUserNameInput(); // CreateFriendshipRequestByUserNameInput | 

try { 
    var result = api_instance.apiServicesAppFriendshipCreatefriendshiprequestbyusernamePost(body);
    print(result);
} catch (e) {
    print("Exception when calling FriendshipApi->apiServicesAppFriendshipCreatefriendshiprequestbyusernamePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFriendshipRequestByUserNameInput**](CreateFriendshipRequestByUserNameInput.md)|  | [optional] 

### Return type

[**FriendDto**](FriendDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppFriendshipUnblockuserPost**
?> apiServicesAppFriendshipUnblockuserPost(body)

ApiServicesAppFriendshipUnblockuserPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FriendshipApi();
var body = new UnblockUserInput(); // UnblockUserInput | 

try { 
    api_instance.apiServicesAppFriendshipUnblockuserPost(body);
} catch (e) {
    print("Exception when calling FriendshipApi->apiServicesAppFriendshipUnblockuserPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UnblockUserInput**](UnblockUserInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

