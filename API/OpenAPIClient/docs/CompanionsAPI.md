# CompanionsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**companionsCreateCompanion**](CompanionsAPI.md#companionscreatecompanion) | **POST** /api/v1/companions/ | Create Companion
[**companionsDeleteCompanion**](CompanionsAPI.md#companionsdeletecompanion) | **DELETE** /api/v1/companions/{id} | Delete Companion
[**companionsReadCompanion**](CompanionsAPI.md#companionsreadcompanion) | **GET** /api/v1/companions/{id} | Read Companion
[**companionsReadCompanions**](CompanionsAPI.md#companionsreadcompanions) | **GET** /api/v1/companions/ | Read Companions
[**companionsReadUserReport**](CompanionsAPI.md#companionsreaduserreport) | **GET** /api/v1/companions/report/ | Read User Report


# **companionsCreateCompanion**
```swift
    open class func companionsCreateCompanion(companionCreate: CompanionCreate, completion: @escaping (_ data: CompanionPublic?, _ error: Error?) -> Void)
```

Create Companion

Create a new companion.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let companionCreate = CompanionCreate(email: "email_example") // CompanionCreate | 

// Create Companion
CompanionsAPI.companionsCreateCompanion(companionCreate: companionCreate) { (response, error) in
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
 **companionCreate** | [**CompanionCreate**](CompanionCreate.md) |  | 

### Return type

[**CompanionPublic**](CompanionPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **companionsDeleteCompanion**
```swift
    open class func companionsDeleteCompanion(id: UUID, completion: @escaping (_ data: CompanionPublic?, _ error: Error?) -> Void)
```

Delete Companion

Delete a companion.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

// Delete Companion
CompanionsAPI.companionsDeleteCompanion(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

[**CompanionPublic**](CompanionPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **companionsReadCompanion**
```swift
    open class func companionsReadCompanion(id: UUID, completion: @escaping (_ data: CompanionPublic?, _ error: Error?) -> Void)
```

Read Companion

Get companion by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

// Read Companion
CompanionsAPI.companionsReadCompanion(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

[**CompanionPublic**](CompanionPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **companionsReadCompanions**
```swift
    open class func companionsReadCompanions(completion: @escaping (_ data: CompanionsPublic?, _ error: Error?) -> Void)
```

Read Companions

Retrieve all companions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Read Companions
CompanionsAPI.companionsReadCompanions() { (response, error) in
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

[**CompanionsPublic**](CompanionsPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **companionsReadUserReport**
```swift
    open class func companionsReadUserReport(userId: UUID, completion: @escaping (_ data: ReportPublic?, _ error: Error?) -> Void)
```

Read User Report

View a report of a user as a companion.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | 

// Read User Report
CompanionsAPI.companionsReadUserReport(userId: userId) { (response, error) in
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
 **userId** | **UUID** |  | 

### Return type

[**ReportPublic**](ReportPublic.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

