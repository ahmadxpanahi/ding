# swagger.api.TenantRegistrationApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppTenantregistrationGeteditionGet**](TenantRegistrationApi.md#apiServicesAppTenantregistrationGeteditionGet) | **GET** /api/services/app/TenantRegistration/GetEdition | ApiServicesAppTenantregistrationGeteditionGet
[**apiServicesAppTenantregistrationGeteditionsforselectGet**](TenantRegistrationApi.md#apiServicesAppTenantregistrationGeteditionsforselectGet) | **GET** /api/services/app/TenantRegistration/GetEditionsForSelect | ApiServicesAppTenantregistrationGeteditionsforselectGet
[**apiServicesAppTenantregistrationRegistertenantPost**](TenantRegistrationApi.md#apiServicesAppTenantregistrationRegistertenantPost) | **POST** /api/services/app/TenantRegistration/RegisterTenant | ApiServicesAppTenantregistrationRegistertenantPost


# **apiServicesAppTenantregistrationGeteditionGet**
> EditionSelectDto apiServicesAppTenantregistrationGeteditionGet(editionId)

ApiServicesAppTenantregistrationGeteditionGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantRegistrationApi();
var editionId = 56; // int | 

try { 
    var result = api_instance.apiServicesAppTenantregistrationGeteditionGet(editionId);
    print(result);
} catch (e) {
    print("Exception when calling TenantRegistrationApi->apiServicesAppTenantregistrationGeteditionGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **editionId** | **int**|  | [optional] 

### Return type

[**EditionSelectDto**](EditionSelectDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantregistrationGeteditionsforselectGet**
> EditionsSelectOutput apiServicesAppTenantregistrationGeteditionsforselectGet()

ApiServicesAppTenantregistrationGeteditionsforselectGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantRegistrationApi();

try { 
    var result = api_instance.apiServicesAppTenantregistrationGeteditionsforselectGet();
    print(result);
} catch (e) {
    print("Exception when calling TenantRegistrationApi->apiServicesAppTenantregistrationGeteditionsforselectGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EditionsSelectOutput**](EditionsSelectOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantregistrationRegistertenantPost**
> RegisterTenantOutput apiServicesAppTenantregistrationRegistertenantPost(body)

ApiServicesAppTenantregistrationRegistertenantPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantRegistrationApi();
var body = new RegisterTenantInput(); // RegisterTenantInput | 

try { 
    var result = api_instance.apiServicesAppTenantregistrationRegistertenantPost(body);
    print(result);
} catch (e) {
    print("Exception when calling TenantRegistrationApi->apiServicesAppTenantregistrationRegistertenantPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RegisterTenantInput**](RegisterTenantInput.md)|  | [optional] 

### Return type

[**RegisterTenantOutput**](RegisterTenantOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

