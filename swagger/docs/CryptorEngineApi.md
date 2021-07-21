# swagger.api.CryptorEngineApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppCryptorengineDecryptPost**](CryptorEngineApi.md#apiServicesAppCryptorengineDecryptPost) | **POST** /api/services/app/CryptorEngine/Decrypt | ApiServicesAppCryptorengineDecryptPost
[**apiServicesAppCryptorengineEncryptPost**](CryptorEngineApi.md#apiServicesAppCryptorengineEncryptPost) | **POST** /api/services/app/CryptorEngine/Encrypt | ApiServicesAppCryptorengineEncryptPost


# **apiServicesAppCryptorengineDecryptPost**
> String apiServicesAppCryptorengineDecryptPost(cipherString, useHashing)

ApiServicesAppCryptorengineDecryptPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CryptorEngineApi();
var cipherString = cipherString_example; // String | 
var useHashing = true; // bool | 

try { 
    var result = api_instance.apiServicesAppCryptorengineDecryptPost(cipherString, useHashing);
    print(result);
} catch (e) {
    print("Exception when calling CryptorEngineApi->apiServicesAppCryptorengineDecryptPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cipherString** | **String**|  | [optional] 
 **useHashing** | **bool**|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCryptorengineEncryptPost**
> String apiServicesAppCryptorengineEncryptPost(toEncrypt, useHashing)

ApiServicesAppCryptorengineEncryptPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CryptorEngineApi();
var toEncrypt = toEncrypt_example; // String | 
var useHashing = true; // bool | 

try { 
    var result = api_instance.apiServicesAppCryptorengineEncryptPost(toEncrypt, useHashing);
    print(result);
} catch (e) {
    print("Exception when calling CryptorEngineApi->apiServicesAppCryptorengineEncryptPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toEncrypt** | **String**|  | [optional] 
 **useHashing** | **bool**|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

