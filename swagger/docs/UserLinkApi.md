# swagger.api.UserLinkApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppUserlinkGetlinkedusersGet**](UserLinkApi.md#apiServicesAppUserlinkGetlinkedusersGet) | **GET** /api/services/app/UserLink/GetLinkedUsers | ApiServicesAppUserlinkGetlinkedusersGet
[**apiServicesAppUserlinkGetrecentlyusedlinkedusersGet**](UserLinkApi.md#apiServicesAppUserlinkGetrecentlyusedlinkedusersGet) | **GET** /api/services/app/UserLink/GetRecentlyUsedLinkedUsers | ApiServicesAppUserlinkGetrecentlyusedlinkedusersGet
[**apiServicesAppUserlinkLinktouserPost**](UserLinkApi.md#apiServicesAppUserlinkLinktouserPost) | **POST** /api/services/app/UserLink/LinkToUser | ApiServicesAppUserlinkLinktouserPost
[**apiServicesAppUserlinkUnlinkuserPost**](UserLinkApi.md#apiServicesAppUserlinkUnlinkuserPost) | **POST** /api/services/app/UserLink/UnlinkUser | ApiServicesAppUserlinkUnlinkuserPost


# **apiServicesAppUserlinkGetlinkedusersGet**
> PagedResultDtoOfLinkedUserDto apiServicesAppUserlinkGetlinkedusersGet(maxResultCount, skipCount, sorting)

ApiServicesAppUserlinkGetlinkedusersGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserLinkApi();
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 
var sorting = sorting_example; // String | 

try { 
    var result = api_instance.apiServicesAppUserlinkGetlinkedusersGet(maxResultCount, skipCount, sorting);
    print(result);
} catch (e) {
    print("Exception when calling UserLinkApi->apiServicesAppUserlinkGetlinkedusersGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **sorting** | **String**|  | [optional] 

### Return type

[**PagedResultDtoOfLinkedUserDto**](PagedResultDtoOfLinkedUserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserlinkGetrecentlyusedlinkedusersGet**
> ListResultDtoOfLinkedUserDto apiServicesAppUserlinkGetrecentlyusedlinkedusersGet()

ApiServicesAppUserlinkGetrecentlyusedlinkedusersGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserLinkApi();

try { 
    var result = api_instance.apiServicesAppUserlinkGetrecentlyusedlinkedusersGet();
    print(result);
} catch (e) {
    print("Exception when calling UserLinkApi->apiServicesAppUserlinkGetrecentlyusedlinkedusersGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfLinkedUserDto**](ListResultDtoOfLinkedUserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserlinkLinktouserPost**
> apiServicesAppUserlinkLinktouserPost(body)

ApiServicesAppUserlinkLinktouserPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserLinkApi();
var body = new LinkToUserInput(); // LinkToUserInput | 

try { 
    api_instance.apiServicesAppUserlinkLinktouserPost(body);
} catch (e) {
    print("Exception when calling UserLinkApi->apiServicesAppUserlinkLinktouserPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LinkToUserInput**](LinkToUserInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserlinkUnlinkuserPost**
> apiServicesAppUserlinkUnlinkuserPost(body)

ApiServicesAppUserlinkUnlinkuserPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserLinkApi();
var body = new UnlinkUserInput(); // UnlinkUserInput | 

try { 
    api_instance.apiServicesAppUserlinkUnlinkuserPost(body);
} catch (e) {
    print("Exception when calling UserLinkApi->apiServicesAppUserlinkUnlinkuserPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UnlinkUserInput**](UnlinkUserInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

