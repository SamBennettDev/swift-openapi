# WebhookAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhookGetUserFromCustomer**](WebhookAPI.md#webhookgetuserfromcustomer) | **GET** /api/v1/webhook/customer/{customer_id} | Get User From Customer
[**webhookUpdateUserSubscription**](WebhookAPI.md#webhookupdateusersubscription) | **PATCH** /api/v1/webhook/subscription/{user_id} | Update User Subscription


# **webhookGetUserFromCustomer**
```swift
    open class func webhookGetUserFromCustomer(customerId: String, completion: @escaping (_ data: UserPublic?, _ error: Error?) -> Void)
```

Get User From Customer

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let customerId = "customerId_example" // String | 

// Get User From Customer
WebhookAPI.webhookGetUserFromCustomer(customerId: customerId) { (response, error) in
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
 **customerId** | **String** |  | 

### Return type

[**UserPublic**](UserPublic.md)

### Authorization

[Webhook_API_Key](../README.md#Webhook_API_Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhookUpdateUserSubscription**
```swift
    open class func webhookUpdateUserSubscription(userId: UUID, updateSubscription: UpdateSubscription, completion: @escaping (_ data: UserPublic?, _ error: Error?) -> Void)
```

Update User Subscription

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | 
let updateSubscription = UpdateSubscription(stripeSubscriptionId: "stripeSubscriptionId_example", stripeProductId: "stripeProductId_example", planName: "planName_example", subscriptionStatus: "subscriptionStatus_example") // UpdateSubscription | 

// Update User Subscription
WebhookAPI.webhookUpdateUserSubscription(userId: userId, updateSubscription: updateSubscription) { (response, error) in
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
 **updateSubscription** | [**UpdateSubscription**](UpdateSubscription.md) |  | 

### Return type

[**UserPublic**](UserPublic.md)

### Authorization

[Webhook_API_Key](../README.md#Webhook_API_Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

