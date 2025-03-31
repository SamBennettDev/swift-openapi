# UtilsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**utilsHealthCheck**](UtilsAPI.md#utilshealthcheck) | **GET** /api/v1/utils/health-check/ | Health Check
[**utilsTestEmail**](UtilsAPI.md#utilstestemail) | **POST** /api/v1/utils/test-email/ | Test Email


# **utilsHealthCheck**
```swift
    open class func utilsHealthCheck(completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Health Check

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Health Check
UtilsAPI.utilsHealthCheck() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **utilsTestEmail**
```swift
    open class func utilsTestEmail(emailTo: String, completion: @escaping (_ data: Message?, _ error: Error?) -> Void)
```

Test Email

Test emails.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let emailTo = "emailTo_example" // String | 

// Test Email
UtilsAPI.utilsTestEmail(emailTo: emailTo) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTo** | **String** |  | 

### Return type

[**Message**](Message.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

