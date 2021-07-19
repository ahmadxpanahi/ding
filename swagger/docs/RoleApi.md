# swagger.api.RoleApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppRoleCreateorupdaterolePost**](RoleApi.md#apiServicesAppRoleCreateorupdaterolePost) | **POST** /api/services/app/Role/CreateOrUpdateRole | ApiServicesAppRoleCreateorupdaterolePost
[**apiServicesAppRoleDeleteroleDelete**](RoleApi.md#apiServicesAppRoleDeleteroleDelete) | **DELETE** /api/services/app/Role/DeleteRole | ApiServicesAppRoleDeleteroleDelete
[**apiServicesAppRoleGetroleforeditGet**](RoleApi.md#apiServicesAppRoleGetroleforeditGet) | **GET** /api/services/app/Role/GetRoleForEdit | ApiServicesAppRoleGetroleforeditGet
[**apiServicesAppRoleGetrolesGet**](RoleApi.md#apiServicesAppRoleGetrolesGet) | **GET** /api/services/app/Role/GetRoles | ApiServicesAppRoleGetrolesGet


# **apiServicesAppRoleCreateorupdaterolePost**
> apiServicesAppRoleCreateorupdaterolePost(body)

ApiServicesAppRoleCreateorupdaterolePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RoleApi();
var body = new CreateOrUpdateRoleInput(); // CreateOrUpdateRoleInput | 

try { 
    api_instance.apiServicesAppRoleCreateorupdaterolePost(body);
} catch (e) {
    print("Exception when calling RoleApi->apiServicesAppRoleCreateorupdaterolePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrUpdateRoleInput**](CreateOrUpdateRoleInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppRoleDeleteroleDelete**
> apiServicesAppRoleDeleteroleDelete(id)

ApiServicesAppRoleDeleteroleDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RoleApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppRoleDeleteroleDelete(id);
} catch (e) {
    print("Exception when calling RoleApi->apiServicesAppRoleDeleteroleDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppRoleGetroleforeditGet**
> GetRoleForEditOutput apiServicesAppRoleGetroleforeditGet(id)

ApiServicesAppRoleGetroleforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RoleApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppRoleGetroleforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling RoleApi->apiServicesAppRoleGetroleforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetRoleForEditOutput**](GetRoleForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppRoleGetrolesGet**
> ListResultDtoOfRoleListDto apiServicesAppRoleGetrolesGet(permissions)

ApiServicesAppRoleGetrolesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new RoleApi();
var permissions = []; // List<String> | 

try { 
    var result = api_instance.apiServicesAppRoleGetrolesGet(permissions);
    print(result);
} catch (e) {
    print("Exception when calling RoleApi->apiServicesAppRoleGetrolesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permissions** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**ListResultDtoOfRoleListDto**](ListResultDtoOfRoleListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

