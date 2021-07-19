# swagger.api.CommonLookupApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppCommonlookupFindusersPost**](CommonLookupApi.md#apiServicesAppCommonlookupFindusersPost) | **POST** /api/services/app/CommonLookup/FindUsers | ApiServicesAppCommonlookupFindusersPost
[**apiServicesAppCommonlookupGetdefaulteditionnameGet**](CommonLookupApi.md#apiServicesAppCommonlookupGetdefaulteditionnameGet) | **GET** /api/services/app/CommonLookup/GetDefaultEditionName | ApiServicesAppCommonlookupGetdefaulteditionnameGet
[**apiServicesAppCommonlookupGeteditionsforcomboboxGet**](CommonLookupApi.md#apiServicesAppCommonlookupGeteditionsforcomboboxGet) | **GET** /api/services/app/CommonLookup/GetEditionsForCombobox | ApiServicesAppCommonlookupGeteditionsforcomboboxGet


# **apiServicesAppCommonlookupFindusersPost**
> PagedResultDtoOfNameValueDto apiServicesAppCommonlookupFindusersPost(body)

ApiServicesAppCommonlookupFindusersPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CommonLookupApi();
var body = new FindUsersInput(); // FindUsersInput | 

try { 
    var result = api_instance.apiServicesAppCommonlookupFindusersPost(body);
    print(result);
} catch (e) {
    print("Exception when calling CommonLookupApi->apiServicesAppCommonlookupFindusersPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FindUsersInput**](FindUsersInput.md)|  | [optional] 

### Return type

[**PagedResultDtoOfNameValueDto**](PagedResultDtoOfNameValueDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCommonlookupGetdefaulteditionnameGet**
> GetDefaultEditionNameOutput apiServicesAppCommonlookupGetdefaulteditionnameGet()

ApiServicesAppCommonlookupGetdefaulteditionnameGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CommonLookupApi();

try { 
    var result = api_instance.apiServicesAppCommonlookupGetdefaulteditionnameGet();
    print(result);
} catch (e) {
    print("Exception when calling CommonLookupApi->apiServicesAppCommonlookupGetdefaulteditionnameGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetDefaultEditionNameOutput**](GetDefaultEditionNameOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCommonlookupGeteditionsforcomboboxGet**
> ListResultDtoOfSubscribableEditionComboboxItemDto apiServicesAppCommonlookupGeteditionsforcomboboxGet(onlyFreeItems)

ApiServicesAppCommonlookupGeteditionsforcomboboxGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CommonLookupApi();
var onlyFreeItems = true; // bool | 

try { 
    var result = api_instance.apiServicesAppCommonlookupGeteditionsforcomboboxGet(onlyFreeItems);
    print(result);
} catch (e) {
    print("Exception when calling CommonLookupApi->apiServicesAppCommonlookupGeteditionsforcomboboxGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **onlyFreeItems** | **bool**|  | [optional] [default to false]

### Return type

[**ListResultDtoOfSubscribableEditionComboboxItemDto**](ListResultDtoOfSubscribableEditionComboboxItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

