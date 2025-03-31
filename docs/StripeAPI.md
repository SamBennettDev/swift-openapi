# StripeAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stripeCreateCheckoutSessionEmbedded**](StripeAPI.md#stripecreatecheckoutsessionembedded) | **POST** /api/v1/stripe/checkout_session_embedded | Create Checkout Session Embedded
[**stripeCreateCheckoutSessionRedirect**](StripeAPI.md#stripecreatecheckoutsessionredirect) | **POST** /api/v1/stripe/checkout_session_redirect | Create Checkout Session Redirect
[**stripeCreateCustomerPortal**](StripeAPI.md#stripecreatecustomerportal) | **POST** /api/v1/stripe/customer_portal | Create Customer Portal


# **stripeCreateCheckoutSessionEmbedded**
```swift
    open class func stripeCreateCheckoutSessionEmbedded(priceId: String, completion: @escaping (_ data: CheckoutSessionEmbedded?, _ error: Error?) -> Void)
```

Create Checkout Session Embedded

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let priceId = "priceId_example" // String | 

// Create Checkout Session Embedded
StripeAPI.stripeCreateCheckoutSessionEmbedded(priceId: priceId) { (response, error) in
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
 **priceId** | **String** |  | 

### Return type

[**CheckoutSessionEmbedded**](CheckoutSessionEmbedded.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stripeCreateCheckoutSessionRedirect**
```swift
    open class func stripeCreateCheckoutSessionRedirect(priceId: String, completion: @escaping (_ data: CheckoutSessionRedirect?, _ error: Error?) -> Void)
```

Create Checkout Session Redirect

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let priceId = "priceId_example" // String | 

// Create Checkout Session Redirect
StripeAPI.stripeCreateCheckoutSessionRedirect(priceId: priceId) { (response, error) in
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
 **priceId** | **String** |  | 

### Return type

[**CheckoutSessionRedirect**](CheckoutSessionRedirect.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stripeCreateCustomerPortal**
```swift
    open class func stripeCreateCustomerPortal(completion: @escaping (_ data: CustomerPortal?, _ error: Error?) -> Void)
```

Create Customer Portal

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Create Customer Portal
StripeAPI.stripeCreateCustomerPortal() { (response, error) in
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

[**CustomerPortal**](CustomerPortal.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

