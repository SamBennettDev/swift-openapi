# LoginAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loginLoginAccessToken**](LoginAPI.md#loginloginaccesstoken) | **POST** /api/v1/login/access-token | Login Access Token
[**loginRefreshToken**](LoginAPI.md#loginrefreshtoken) | **POST** /api/v1/login/refresh-token | Refresh Token
[**loginTestToken**](LoginAPI.md#logintesttoken) | **POST** /api/v1/login/test-token | Test Token


# **loginLoginAccessToken**
```swift
    open class func loginLoginAccessToken(password: String, username: String, clientId: String? = nil, clientSecret: String? = nil, grantType: String? = nil, scope: String? = nil, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```

Login Access Token

OAuth2 compatible token login, get an access token for future requests

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let password = "password_example" // String | 
let username = "username_example" // String | 
let clientId = "clientId_example" // String |  (optional)
let clientSecret = "clientSecret_example" // String |  (optional)
let grantType = "grantType_example" // String |  (optional)
let scope = "scope_example" // String |  (optional) (default to "")

// Login Access Token
LoginAPI.loginLoginAccessToken(password: password, username: username, clientId: clientId, clientSecret: clientSecret, grantType: grantType, scope: scope) { (response, error) in
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
 **password** | **String** |  | 
 **username** | **String** |  | 
 **clientId** | **String** |  | [optional] 
 **clientSecret** | **String** |  | [optional] 
 **grantType** | **String** |  | [optional] 
 **scope** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginRefreshToken**
```swift
    open class func loginRefreshToken(refreshToken: String, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```

Refresh Token

Refresh an access token using a refresh token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let refreshToken = "refreshToken_example" // String | 

// Refresh Token
LoginAPI.loginRefreshToken(refreshToken: refreshToken) { (response, error) in
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
 **refreshToken** | **String** |  | 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginTestToken**
```swift
    open class func loginTestToken(completion: @escaping (_ data: UserPublic?, _ error: Error?) -> Void)
```

Test Token

Test access token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Test Token
LoginAPI.loginTestToken() { (response, error) in
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

[**UserPublic**](UserPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

