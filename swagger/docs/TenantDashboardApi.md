# swagger.api.TenantDashboardApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppTenantdashboardGetdailysalesGet**](TenantDashboardApi.md#apiServicesAppTenantdashboardGetdailysalesGet) | **GET** /api/services/app/TenantDashboard/GetDailySales | ApiServicesAppTenantdashboardGetdailysalesGet
[**apiServicesAppTenantdashboardGetdashboarddataGet**](TenantDashboardApi.md#apiServicesAppTenantdashboardGetdashboarddataGet) | **GET** /api/services/app/TenantDashboard/GetDashboardData | ApiServicesAppTenantdashboardGetdashboarddataGet
[**apiServicesAppTenantdashboardGetgeneralstatsGet**](TenantDashboardApi.md#apiServicesAppTenantdashboardGetgeneralstatsGet) | **GET** /api/services/app/TenantDashboard/GetGeneralStats | ApiServicesAppTenantdashboardGetgeneralstatsGet
[**apiServicesAppTenantdashboardGetmemberactivityGet**](TenantDashboardApi.md#apiServicesAppTenantdashboardGetmemberactivityGet) | **GET** /api/services/app/TenantDashboard/GetMemberActivity | ApiServicesAppTenantdashboardGetmemberactivityGet
[**apiServicesAppTenantdashboardGetprofitshareGet**](TenantDashboardApi.md#apiServicesAppTenantdashboardGetprofitshareGet) | **GET** /api/services/app/TenantDashboard/GetProfitShare | ApiServicesAppTenantdashboardGetprofitshareGet
[**apiServicesAppTenantdashboardGetregionalstatsGet**](TenantDashboardApi.md#apiServicesAppTenantdashboardGetregionalstatsGet) | **GET** /api/services/app/TenantDashboard/GetRegionalStats | ApiServicesAppTenantdashboardGetregionalstatsGet
[**apiServicesAppTenantdashboardGetsalessummaryGet**](TenantDashboardApi.md#apiServicesAppTenantdashboardGetsalessummaryGet) | **GET** /api/services/app/TenantDashboard/GetSalesSummary | ApiServicesAppTenantdashboardGetsalessummaryGet
[**apiServicesAppTenantdashboardGettopstatsGet**](TenantDashboardApi.md#apiServicesAppTenantdashboardGettopstatsGet) | **GET** /api/services/app/TenantDashboard/GetTopStats | ApiServicesAppTenantdashboardGettopstatsGet


# **apiServicesAppTenantdashboardGetdailysalesGet**
> GetDailySalesOutput apiServicesAppTenantdashboardGetdailysalesGet()

ApiServicesAppTenantdashboardGetdailysalesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDashboardApi();

try { 
    var result = api_instance.apiServicesAppTenantdashboardGetdailysalesGet();
    print(result);
} catch (e) {
    print("Exception when calling TenantDashboardApi->apiServicesAppTenantdashboardGetdailysalesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetDailySalesOutput**](GetDailySalesOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdashboardGetdashboarddataGet**
> GetDashboardDataOutput apiServicesAppTenantdashboardGetdashboarddataGet(salesSummaryDatePeriod)

ApiServicesAppTenantdashboardGetdashboarddataGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDashboardApi();
var salesSummaryDatePeriod = salesSummaryDatePeriod_example; // String | 

try { 
    var result = api_instance.apiServicesAppTenantdashboardGetdashboarddataGet(salesSummaryDatePeriod);
    print(result);
} catch (e) {
    print("Exception when calling TenantDashboardApi->apiServicesAppTenantdashboardGetdashboarddataGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **salesSummaryDatePeriod** | **String**|  | 

### Return type

[**GetDashboardDataOutput**](GetDashboardDataOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdashboardGetgeneralstatsGet**
> GetGeneralStatsOutput apiServicesAppTenantdashboardGetgeneralstatsGet()

ApiServicesAppTenantdashboardGetgeneralstatsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDashboardApi();

try { 
    var result = api_instance.apiServicesAppTenantdashboardGetgeneralstatsGet();
    print(result);
} catch (e) {
    print("Exception when calling TenantDashboardApi->apiServicesAppTenantdashboardGetgeneralstatsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetGeneralStatsOutput**](GetGeneralStatsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdashboardGetmemberactivityGet**
> GetMemberActivityOutput apiServicesAppTenantdashboardGetmemberactivityGet()

ApiServicesAppTenantdashboardGetmemberactivityGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDashboardApi();

try { 
    var result = api_instance.apiServicesAppTenantdashboardGetmemberactivityGet();
    print(result);
} catch (e) {
    print("Exception when calling TenantDashboardApi->apiServicesAppTenantdashboardGetmemberactivityGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetMemberActivityOutput**](GetMemberActivityOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdashboardGetprofitshareGet**
> GetProfitShareOutput apiServicesAppTenantdashboardGetprofitshareGet()

ApiServicesAppTenantdashboardGetprofitshareGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDashboardApi();

try { 
    var result = api_instance.apiServicesAppTenantdashboardGetprofitshareGet();
    print(result);
} catch (e) {
    print("Exception when calling TenantDashboardApi->apiServicesAppTenantdashboardGetprofitshareGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetProfitShareOutput**](GetProfitShareOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdashboardGetregionalstatsGet**
> GetRegionalStatsOutput apiServicesAppTenantdashboardGetregionalstatsGet()

ApiServicesAppTenantdashboardGetregionalstatsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDashboardApi();

try { 
    var result = api_instance.apiServicesAppTenantdashboardGetregionalstatsGet();
    print(result);
} catch (e) {
    print("Exception when calling TenantDashboardApi->apiServicesAppTenantdashboardGetregionalstatsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetRegionalStatsOutput**](GetRegionalStatsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdashboardGetsalessummaryGet**
> GetSalesSummaryOutput apiServicesAppTenantdashboardGetsalessummaryGet(salesSummaryDatePeriod)

ApiServicesAppTenantdashboardGetsalessummaryGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDashboardApi();
var salesSummaryDatePeriod = salesSummaryDatePeriod_example; // String | 

try { 
    var result = api_instance.apiServicesAppTenantdashboardGetsalessummaryGet(salesSummaryDatePeriod);
    print(result);
} catch (e) {
    print("Exception when calling TenantDashboardApi->apiServicesAppTenantdashboardGetsalessummaryGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **salesSummaryDatePeriod** | **String**|  | 

### Return type

[**GetSalesSummaryOutput**](GetSalesSummaryOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantdashboardGettopstatsGet**
> GetTopStatsOutput apiServicesAppTenantdashboardGettopstatsGet()

ApiServicesAppTenantdashboardGettopstatsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantDashboardApi();

try { 
    var result = api_instance.apiServicesAppTenantdashboardGettopstatsGet();
    print(result);
} catch (e) {
    print("Exception when calling TenantDashboardApi->apiServicesAppTenantdashboardGettopstatsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetTopStatsOutput**](GetTopStatsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

