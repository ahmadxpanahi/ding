# swagger.api.TwitterApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiTwitterGetaccesstokenPost**](TwitterApi.md#apiTwitterGetaccesstokenPost) | **POST** /api/Twitter/GetAccessToken | ApiTwitterGetaccesstokenPost
[**apiTwitterGetrequesttokenPost**](TwitterApi.md#apiTwitterGetrequesttokenPost) | **POST** /api/Twitter/GetRequestToken | ApiTwitterGetrequesttokenPost


# **apiTwitterGetaccesstokenPost**
> TwitterGetAccessTokenResponse apiTwitterGetaccesstokenPost(token, verifier)

ApiTwitterGetaccesstokenPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TwitterApi();
var token = token_example; // String | 
var verifier = verifier_example; // String | 

try { 
    var result = api_instance.apiTwitterGetaccesstokenPost(token, verifier);
    print(result);
} catch (e) {
    print("Exception when calling TwitterApi->apiTwitterGetaccesstokenPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | [optional] 
 **verifier** | **String**|  | [optional] 

### Return type

[**TwitterGetAccessTokenResponse**](TwitterGetAccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTwitterGetrequesttokenPost**
> TwitterGetRequestTokenResponse apiTwitterGetrequesttokenPost()

ApiTwitterGetrequesttokenPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TwitterApi();

try { 
    var result = api_instance.apiTwitterGetrequesttokenPost();
    print(result);
} catch (e) {
    print("Exception when calling TwitterApi->apiTwitterGetrequesttokenPost: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TwitterGetRequestTokenResponse**](TwitterGetRequestTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

