# swagger.api.UserApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppUserCreateorupdateuserPost**](UserApi.md#apiServicesAppUserCreateorupdateuserPost) | **POST** /api/services/app/User/CreateOrUpdateUser | ApiServicesAppUserCreateorupdateuserPost
[**apiServicesAppUserCreateuserontenantPost**](UserApi.md#apiServicesAppUserCreateuserontenantPost) | **POST** /api/services/app/User/CreateUserOnTenant | ApiServicesAppUserCreateuserontenantPost
[**apiServicesAppUserDeleteuserDelete**](UserApi.md#apiServicesAppUserDeleteuserDelete) | **DELETE** /api/services/app/User/DeleteUser | ApiServicesAppUserDeleteuserDelete
[**apiServicesAppUserFindusersPost**](UserApi.md#apiServicesAppUserFindusersPost) | **POST** /api/services/app/User/FindUsers | ApiServicesAppUserFindusersPost
[**apiServicesAppUserGetuserforeditGet**](UserApi.md#apiServicesAppUserGetuserforeditGet) | **GET** /api/services/app/User/GetUserForEdit | ApiServicesAppUserGetuserforeditGet
[**apiServicesAppUserGetuserfromalltenantsGet**](UserApi.md#apiServicesAppUserGetuserfromalltenantsGet) | **GET** /api/services/app/User/GetUserFromAllTenants | ApiServicesAppUserGetuserfromalltenantsGet
[**apiServicesAppUserGetuserpermissionsforeditGet**](UserApi.md#apiServicesAppUserGetuserpermissionsforeditGet) | **GET** /api/services/app/User/GetUserPermissionsForEdit | ApiServicesAppUserGetuserpermissionsforeditGet
[**apiServicesAppUserGetusersGet**](UserApi.md#apiServicesAppUserGetusersGet) | **GET** /api/services/app/User/GetUsers | ApiServicesAppUserGetusersGet
[**apiServicesAppUserGetuserstoexcelGet**](UserApi.md#apiServicesAppUserGetuserstoexcelGet) | **GET** /api/services/app/User/GetUsersToExcel | ApiServicesAppUserGetuserstoexcelGet
[**apiServicesAppUserResetuserspecificpermissionsPost**](UserApi.md#apiServicesAppUserResetuserspecificpermissionsPost) | **POST** /api/services/app/User/ResetUserSpecificPermissions | ApiServicesAppUserResetuserspecificpermissionsPost
[**apiServicesAppUserUnlockuserPost**](UserApi.md#apiServicesAppUserUnlockuserPost) | **POST** /api/services/app/User/UnlockUser | ApiServicesAppUserUnlockuserPost
[**apiServicesAppUserUpdateuserpermissionsPut**](UserApi.md#apiServicesAppUserUpdateuserpermissionsPut) | **PUT** /api/services/app/User/UpdateUserPermissions | ApiServicesAppUserUpdateuserpermissionsPut


# **apiServicesAppUserCreateorupdateuserPost**
> int apiServicesAppUserCreateorupdateuserPost(body)

ApiServicesAppUserCreateorupdateuserPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var body = new CreateOrUpdateUserInput(); // CreateOrUpdateUserInput | 

try { 
    var result = api_instance.apiServicesAppUserCreateorupdateuserPost(body);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->apiServicesAppUserCreateorupdateuserPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrUpdateUserInput**](CreateOrUpdateUserInput.md)|  | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserCreateuserontenantPost**
> int apiServicesAppUserCreateuserontenantPost(body)

ApiServicesAppUserCreateuserontenantPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var body = new CreateUserOnTenantInput(); // CreateUserOnTenantInput | 

try { 
    var result = api_instance.apiServicesAppUserCreateuserontenantPost(body);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->apiServicesAppUserCreateuserontenantPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateUserOnTenantInput**](CreateUserOnTenantInput.md)|  | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserDeleteuserDelete**
?> apiServicesAppUserDeleteuserDelete(id)

ApiServicesAppUserDeleteuserDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppUserDeleteuserDelete(id);
} catch (e) {
    print("Exception when calling UserApi->apiServicesAppUserDeleteuserDelete: $e\n");
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

# **apiServicesAppUserFindusersPost**
> PagedResultDtoOfNameValueDto apiServicesAppUserFindusersPost(body)

ApiServicesAppUserFindusersPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var body = new GetAllForLookupTableInput(); // GetAllForLookupTableInput | 

try { 
    var result = api_instance.apiServicesAppUserFindusersPost(body);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->apiServicesAppUserFindusersPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetAllForLookupTableInput**](GetAllForLookupTableInput.md)|  | [optional] 

### Return type

[**PagedResultDtoOfNameValueDto**](PagedResultDtoOfNameValueDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetuserforeditGet**
> GetUserForEditOutput apiServicesAppUserGetuserforeditGet(id)

ApiServicesAppUserGetuserforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppUserGetuserforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->apiServicesAppUserGetuserforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetUserForEditOutput**](GetUserForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetuserfromalltenantsGet**
> GetUserForEditOutput apiServicesAppUserGetuserfromalltenantsGet(id)

ApiServicesAppUserGetuserfromalltenantsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppUserGetuserfromalltenantsGet(id);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->apiServicesAppUserGetuserfromalltenantsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetUserForEditOutput**](GetUserForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetuserpermissionsforeditGet**
> GetUserPermissionsForEditOutput apiServicesAppUserGetuserpermissionsforeditGet(id)

ApiServicesAppUserGetuserpermissionsforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var id = 789; // int | 

try { 
    var result = api_instance.apiServicesAppUserGetuserpermissionsforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->apiServicesAppUserGetuserpermissionsforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetUserPermissionsForEditOutput**](GetUserPermissionsForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetusersGet**
> PagedResultDtoOfUserListDto apiServicesAppUserGetusersGet(filter, permissions, role, onlyLockedUsers, genderType, birthdate, bankAccount, address, homePhoneNumber, workPhoneNumber, postalCode, birthCertificateNumber, nationalCode, degreeType, occupation, jobTitle, introduceType, sorting, maxResultCount, skipCount)

ApiServicesAppUserGetusersGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var filter = filter_example; // String | 
var permissions = []; // List<String> | 
var role = 56; // int | 
var onlyLockedUsers = true; // bool | 
var genderType = genderType_example; // String | 
var birthdate = 2013-10-20T19:20:30+01:00; // DateTime | 
var bankAccount = bankAccount_example; // String | 
var address = address_example; // String | 
var homePhoneNumber = homePhoneNumber_example; // String | 
var workPhoneNumber = workPhoneNumber_example; // String | 
var postalCode = postalCode_example; // String | 
var birthCertificateNumber = birthCertificateNumber_example; // String | 
var nationalCode = nationalCode_example; // String | 
var degreeType = degreeType_example; // String | 
var occupation = occupation_example; // String | 
var jobTitle = jobTitle_example; // String | 
var introduceType = introduceType_example; // String | 
var sorting = sorting_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppUserGetusersGet(filter, permissions, role, onlyLockedUsers, genderType, birthdate, bankAccount, address, homePhoneNumber, workPhoneNumber, postalCode, birthCertificateNumber, nationalCode, degreeType, occupation, jobTitle, introduceType, sorting, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->apiServicesAppUserGetusersGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **permissions** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **role** | **int**|  | [optional] 
 **onlyLockedUsers** | **bool**|  | [optional] 
 **genderType** | **String**|  | [optional] 
 **birthdate** | **DateTime**|  | [optional] 
 **bankAccount** | **String**|  | [optional] 
 **address** | **String**|  | [optional] 
 **homePhoneNumber** | **String**|  | [optional] 
 **workPhoneNumber** | **String**|  | [optional] 
 **postalCode** | **String**|  | [optional] 
 **birthCertificateNumber** | **String**|  | [optional] 
 **nationalCode** | **String**|  | [optional] 
 **degreeType** | **String**|  | [optional] 
 **occupation** | **String**|  | [optional] 
 **jobTitle** | **String**|  | [optional] 
 **introduceType** | **String**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfUserListDto**](PagedResultDtoOfUserListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetuserstoexcelGet**
> FileDto apiServicesAppUserGetuserstoexcelGet(filter, permissions, role, onlyLockedUsers, sorting, genderType, birthdate, bankAccount, address, homePhoneNumber, workPhoneNumber, postalCode, birthCertificateNumber, nationalCode, degreeType, occupation, jobTitle, introduceType)

ApiServicesAppUserGetuserstoexcelGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var filter = filter_example; // String | 
var permissions = []; // List<String> | 
var role = 56; // int | 
var onlyLockedUsers = true; // bool | 
var sorting = sorting_example; // String | 
var genderType = genderType_example; // String | 
var birthdate = 2013-10-20T19:20:30+01:00; // DateTime | 
var bankAccount = bankAccount_example; // String | 
var address = address_example; // String | 
var homePhoneNumber = homePhoneNumber_example; // String | 
var workPhoneNumber = workPhoneNumber_example; // String | 
var postalCode = postalCode_example; // String | 
var birthCertificateNumber = birthCertificateNumber_example; // String | 
var nationalCode = nationalCode_example; // String | 
var degreeType = degreeType_example; // String | 
var occupation = occupation_example; // String | 
var jobTitle = jobTitle_example; // String | 
var introduceType = introduceType_example; // String | 

try { 
    var result = api_instance.apiServicesAppUserGetuserstoexcelGet(filter, permissions, role, onlyLockedUsers, sorting, genderType, birthdate, bankAccount, address, homePhoneNumber, workPhoneNumber, postalCode, birthCertificateNumber, nationalCode, degreeType, occupation, jobTitle, introduceType);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->apiServicesAppUserGetuserstoexcelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **permissions** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **role** | **int**|  | [optional] 
 **onlyLockedUsers** | **bool**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **genderType** | **String**|  | [optional] 
 **birthdate** | **DateTime**|  | [optional] 
 **bankAccount** | **String**|  | [optional] 
 **address** | **String**|  | [optional] 
 **homePhoneNumber** | **String**|  | [optional] 
 **workPhoneNumber** | **String**|  | [optional] 
 **postalCode** | **String**|  | [optional] 
 **birthCertificateNumber** | **String**|  | [optional] 
 **nationalCode** | **String**|  | [optional] 
 **degreeType** | **String**|  | [optional] 
 **occupation** | **String**|  | [optional] 
 **jobTitle** | **String**|  | [optional] 
 **introduceType** | **String**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserResetuserspecificpermissionsPost**
?> apiServicesAppUserResetuserspecificpermissionsPost(body)

ApiServicesAppUserResetuserspecificpermissionsPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var body = new EntityDtoOfInt64(); // EntityDtoOfInt64 | 

try { 
    api_instance.apiServicesAppUserResetuserspecificpermissionsPost(body);
} catch (e) {
    print("Exception when calling UserApi->apiServicesAppUserResetuserspecificpermissionsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EntityDtoOfInt64**](EntityDtoOfInt64.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserUnlockuserPost**
?> apiServicesAppUserUnlockuserPost(body)

ApiServicesAppUserUnlockuserPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var body = new EntityDtoOfInt64(); // EntityDtoOfInt64 | 

try { 
    api_instance.apiServicesAppUserUnlockuserPost(body);
} catch (e) {
    print("Exception when calling UserApi->apiServicesAppUserUnlockuserPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EntityDtoOfInt64**](EntityDtoOfInt64.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserUpdateuserpermissionsPut**
?> apiServicesAppUserUpdateuserpermissionsPut(body)

ApiServicesAppUserUpdateuserpermissionsPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var body = new UpdateUserPermissionsInput(); // UpdateUserPermissionsInput | 

try { 
    api_instance.apiServicesAppUserUpdateuserpermissionsPut(body);
} catch (e) {
    print("Exception when calling UserApi->apiServicesAppUserUpdateuserpermissionsPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateUserPermissionsInput**](UpdateUserPermissionsInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

