# swagger.api.PaymentApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppPaymentBuynowsucceedPost**](PaymentApi.md#apiServicesAppPaymentBuynowsucceedPost) | **POST** /api/services/app/Payment/BuyNowSucceed | ApiServicesAppPaymentBuynowsucceedPost
[**apiServicesAppPaymentCancelpaymentPost**](PaymentApi.md#apiServicesAppPaymentCancelpaymentPost) | **POST** /api/services/app/Payment/CancelPayment | ApiServicesAppPaymentCancelpaymentPost
[**apiServicesAppPaymentCreatepaymentPost**](PaymentApi.md#apiServicesAppPaymentCreatepaymentPost) | **POST** /api/services/app/Payment/CreatePayment | ApiServicesAppPaymentCreatepaymentPost
[**apiServicesAppPaymentExtendsucceedPost**](PaymentApi.md#apiServicesAppPaymentExtendsucceedPost) | **POST** /api/services/app/Payment/ExtendSucceed | ApiServicesAppPaymentExtendsucceedPost
[**apiServicesAppPaymentGetactivegatewaysGet**](PaymentApi.md#apiServicesAppPaymentGetactivegatewaysGet) | **GET** /api/services/app/Payment/GetActiveGateways | ApiServicesAppPaymentGetactivegatewaysGet
[**apiServicesAppPaymentGetlastcompletedpaymentGet**](PaymentApi.md#apiServicesAppPaymentGetlastcompletedpaymentGet) | **GET** /api/services/app/Payment/GetLastCompletedPayment | ApiServicesAppPaymentGetlastcompletedpaymentGet
[**apiServicesAppPaymentGetpaymentGet**](PaymentApi.md#apiServicesAppPaymentGetpaymentGet) | **GET** /api/services/app/Payment/GetPayment | ApiServicesAppPaymentGetpaymentGet
[**apiServicesAppPaymentGetpaymenthistoryGet**](PaymentApi.md#apiServicesAppPaymentGetpaymenthistoryGet) | **GET** /api/services/app/Payment/GetPaymentHistory | ApiServicesAppPaymentGetpaymenthistoryGet
[**apiServicesAppPaymentHasanypaymentPost**](PaymentApi.md#apiServicesAppPaymentHasanypaymentPost) | **POST** /api/services/app/Payment/HasAnyPayment | ApiServicesAppPaymentHasanypaymentPost
[**apiServicesAppPaymentNewregistrationsucceedPost**](PaymentApi.md#apiServicesAppPaymentNewregistrationsucceedPost) | **POST** /api/services/app/Payment/NewRegistrationSucceed | ApiServicesAppPaymentNewregistrationsucceedPost
[**apiServicesAppPaymentPaymentfailedPost**](PaymentApi.md#apiServicesAppPaymentPaymentfailedPost) | **POST** /api/services/app/Payment/PaymentFailed | ApiServicesAppPaymentPaymentfailedPost
[**apiServicesAppPaymentSendupgraderequestPost**](PaymentApi.md#apiServicesAppPaymentSendupgraderequestPost) | **POST** /api/services/app/Payment/SendUpgradeRequest | ApiServicesAppPaymentSendupgraderequestPost
[**apiServicesAppPaymentUpgradesucceedPost**](PaymentApi.md#apiServicesAppPaymentUpgradesucceedPost) | **POST** /api/services/app/Payment/UpgradeSucceed | ApiServicesAppPaymentUpgradesucceedPost


# **apiServicesAppPaymentBuynowsucceedPost**
?> apiServicesAppPaymentBuynowsucceedPost(paymentId)

ApiServicesAppPaymentBuynowsucceedPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentApi();
var paymentId = 789; // int | 

try { 
    api_instance.apiServicesAppPaymentBuynowsucceedPost(paymentId);
} catch (e) {
    print("Exception when calling PaymentApi->apiServicesAppPaymentBuynowsucceedPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPaymentCancelpaymentPost**
?> apiServicesAppPaymentCancelpaymentPost(body)

ApiServicesAppPaymentCancelpaymentPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentApi();
var body = new CancelPaymentDto(); // CancelPaymentDto | 

try { 
    api_instance.apiServicesAppPaymentCancelpaymentPost(body);
} catch (e) {
    print("Exception when calling PaymentApi->apiServicesAppPaymentCancelpaymentPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CancelPaymentDto**](CancelPaymentDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPaymentCreatepaymentPost**
> int apiServicesAppPaymentCreatepaymentPost(body)

ApiServicesAppPaymentCreatepaymentPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentApi();
var body = new CreatePaymentDto(); // CreatePaymentDto | 

try { 
    var result = api_instance.apiServicesAppPaymentCreatepaymentPost(body);
    print(result);
} catch (e) {
    print("Exception when calling PaymentApi->apiServicesAppPaymentCreatepaymentPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreatePaymentDto**](CreatePaymentDto.md)|  | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPaymentExtendsucceedPost**
?> apiServicesAppPaymentExtendsucceedPost(paymentId)

ApiServicesAppPaymentExtendsucceedPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentApi();
var paymentId = 789; // int | 

try { 
    api_instance.apiServicesAppPaymentExtendsucceedPost(paymentId);
} catch (e) {
    print("Exception when calling PaymentApi->apiServicesAppPaymentExtendsucceedPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPaymentGetactivegatewaysGet**
> List<PaymentGatewayModel?> apiServicesAppPaymentGetactivegatewaysGet(recurringPaymentsEnabled)

ApiServicesAppPaymentGetactivegatewaysGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentApi();
var recurringPaymentsEnabled = true; // bool | 

try { 
    var result = api_instance.apiServicesAppPaymentGetactivegatewaysGet(recurringPaymentsEnabled);
    print(result);
} catch (e) {
    print("Exception when calling PaymentApi->apiServicesAppPaymentGetactivegatewaysGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recurringPaymentsEnabled** | **bool**|  | [optional] 

### Return type

[**List<PaymentGatewayModel>**](PaymentGatewayModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPaymentGetlastcompletedpaymentGet**
> SubscriptionPaymentDto apiServicesAppPaymentGetlastcompletedpaymentGet()

ApiServicesAppPaymentGetlastcompletedpaymentGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentApi();

try { 
    var result = api_instance.apiServicesAppPaymentGetlastcompletedpaymentGet();
    print(result);
} catch (e) {
    print("Exception when calling PaymentApi->apiServicesAppPaymentGetlastcompletedpaymentGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SubscriptionPaymentDto**](SubscriptionPaymentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPaymentGetpaymentGet**
> SubscriptionPaymentDto apiServicesAppPaymentGetpaymentGet(paymentId)

ApiServicesAppPaymentGetpaymentGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentApi();
var paymentId = 789; // int | 

try { 
    var result = api_instance.apiServicesAppPaymentGetpaymentGet(paymentId);
    print(result);
} catch (e) {
    print("Exception when calling PaymentApi->apiServicesAppPaymentGetpaymentGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **int**|  | [optional] 

### Return type

[**SubscriptionPaymentDto**](SubscriptionPaymentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPaymentGetpaymenthistoryGet**
> PagedResultDtoOfSubscriptionPaymentListDto apiServicesAppPaymentGetpaymenthistoryGet(sorting, maxResultCount, skipCount)

ApiServicesAppPaymentGetpaymenthistoryGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentApi();
var sorting = sorting_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppPaymentGetpaymenthistoryGet(sorting, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling PaymentApi->apiServicesAppPaymentGetpaymenthistoryGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sorting** | **String**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfSubscriptionPaymentListDto**](PagedResultDtoOfSubscriptionPaymentListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPaymentHasanypaymentPost**
> bool apiServicesAppPaymentHasanypaymentPost()

ApiServicesAppPaymentHasanypaymentPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentApi();

try { 
    var result = api_instance.apiServicesAppPaymentHasanypaymentPost();
    print(result);
} catch (e) {
    print("Exception when calling PaymentApi->apiServicesAppPaymentHasanypaymentPost: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPaymentNewregistrationsucceedPost**
?> apiServicesAppPaymentNewregistrationsucceedPost(paymentId)

ApiServicesAppPaymentNewregistrationsucceedPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentApi();
var paymentId = 789; // int | 

try { 
    api_instance.apiServicesAppPaymentNewregistrationsucceedPost(paymentId);
} catch (e) {
    print("Exception when calling PaymentApi->apiServicesAppPaymentNewregistrationsucceedPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPaymentPaymentfailedPost**
?> apiServicesAppPaymentPaymentfailedPost(paymentId)

ApiServicesAppPaymentPaymentfailedPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentApi();
var paymentId = 789; // int | 

try { 
    api_instance.apiServicesAppPaymentPaymentfailedPost(paymentId);
} catch (e) {
    print("Exception when calling PaymentApi->apiServicesAppPaymentPaymentfailedPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPaymentSendupgraderequestPost**
?> apiServicesAppPaymentSendupgraderequestPost(paymentId)

ApiServicesAppPaymentSendupgraderequestPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentApi();
var paymentId = 789; // int | 

try { 
    api_instance.apiServicesAppPaymentSendupgraderequestPost(paymentId);
} catch (e) {
    print("Exception when calling PaymentApi->apiServicesAppPaymentSendupgraderequestPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppPaymentUpgradesucceedPost**
?> apiServicesAppPaymentUpgradesucceedPost(paymentId)

ApiServicesAppPaymentUpgradesucceedPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PaymentApi();
var paymentId = 789; // int | 

try { 
    api_instance.apiServicesAppPaymentUpgradesucceedPost(paymentId);
} catch (e) {
    print("Exception when calling PaymentApi->apiServicesAppPaymentUpgradesucceedPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

