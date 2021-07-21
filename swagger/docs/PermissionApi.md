# swagger.api.PermissionApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppPermissionGetallpermissionsGet**](PermissionApi.md#apiServicesAppPermissionGetallpermissionsGet) | **GET** /api/services/app/Permission/GetAllPermissions | ApiServicesAppPermissionGetallpermissionsGet


# **apiServicesAppPermissionGetallpermissionsGet**
> ListResultDtoOfFlatPermissionWithLevelDto apiServicesAppPermissionGetallpermissionsGet()

ApiServicesAppPermissionGetallpermissionsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PermissionApi();

try { 
    var result = api_instance.apiServicesAppPermissionGetallpermissionsGet();
    print(result);
} catch (e) {
    print("Exception when calling PermissionApi->apiServicesAppPermissionGetallpermissionsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfFlatPermissionWithLevelDto**](ListResultDtoOfFlatPermissionWithLevelDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

