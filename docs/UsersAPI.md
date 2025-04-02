# UsersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersCreateUser**](UsersAPI.md#userscreateuser) | **POST** /api/v1/users/ | Create User
[**usersDeleteUser**](UsersAPI.md#usersdeleteuser) | **DELETE** /api/v1/users/{user_id} | Delete User
[**usersDeleteUserMe**](UsersAPI.md#usersdeleteuserme) | **DELETE** /api/v1/users/me | Delete User Me
[**usersReadStripeCustomer**](UsersAPI.md#usersreadstripecustomer) | **GET** /api/v1/users/stripe | Read Stripe Customer
[**usersReadUserById**](UsersAPI.md#usersreaduserbyid) | **GET** /api/v1/users/{user_id} | Read User By Id
[**usersReadUserMe**](UsersAPI.md#usersreaduserme) | **GET** /api/v1/users/me | Read User Me
[**usersReadUserWithAllData**](UsersAPI.md#usersreaduserwithalldata) | **GET** /api/v1/users/{user_id}/all_data | Read User With All Data
[**usersReadUsers**](UsersAPI.md#usersreadusers) | **GET** /api/v1/users/ | Read Users
[**usersRegisterUser**](UsersAPI.md#usersregisteruser) | **POST** /api/v1/users/signup | Register User
[**usersUpdateUser**](UsersAPI.md#usersupdateuser) | **PATCH** /api/v1/users/{user_id} | Update User
[**usersUpdateUserMe**](UsersAPI.md#usersupdateuserme) | **PATCH** /api/v1/users/me | Update User Me


# **usersCreateUser**
```swift
    open class func usersCreateUser(userRegister: UserRegister, completion: @escaping (_ data: UserPublic?, _ error: Error?) -> Void)
```

Create User

Create new user (admin only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userRegister = UserRegister(email: "email_example", fullName: "fullName_example", password: "password_example") // UserRegister | 

// Create User
UsersAPI.usersCreateUser(userRegister: userRegister) { (response, error) in
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
 **userRegister** | [**UserRegister**](UserRegister.md) |  | 

### Return type

[**UserPublic**](UserPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersDeleteUser**
```swift
    open class func usersDeleteUser(userId: UUID, completion: @escaping (_ data: Message?, _ error: Error?) -> Void)
```

Delete User

Delete a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | 

// Delete User
UsersAPI.usersDeleteUser(userId: userId) { (response, error) in
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

[**Message**](Message.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersDeleteUserMe**
```swift
    open class func usersDeleteUserMe(completion: @escaping (_ data: Message?, _ error: Error?) -> Void)
```

Delete User Me

Delete own user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Delete User Me
UsersAPI.usersDeleteUserMe() { (response, error) in
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

[**Message**](Message.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersReadStripeCustomer**
```swift
    open class func usersReadStripeCustomer(completion: @escaping (_ data: StripeCustomer?, _ error: Error?) -> Void)
```

Read Stripe Customer

Get user's Stripe account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Read Stripe Customer
UsersAPI.usersReadStripeCustomer() { (response, error) in
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

[**StripeCustomer**](StripeCustomer.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersReadUserById**
```swift
    open class func usersReadUserById(userId: UUID, completion: @escaping (_ data: UserPublic?, _ error: Error?) -> Void)
```

Read User By Id

Get a specific user by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | 

// Read User By Id
UsersAPI.usersReadUserById(userId: userId) { (response, error) in
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

[**UserPublic**](UserPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersReadUserMe**
```swift
    open class func usersReadUserMe(completion: @escaping (_ data: UserPublic?, _ error: Error?) -> Void)
```

Read User Me

Get current user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Read User Me
UsersAPI.usersReadUserMe() { (response, error) in
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

# **usersReadUserWithAllData**
```swift
    open class func usersReadUserWithAllData(userId: UUID, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```

Read User With All Data

Get all data attached to a specific user by id (including related entities).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | 

// Read User With All Data
UsersAPI.usersReadUserWithAllData(userId: userId) { (response, error) in
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

**JSONValue**

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersReadUsers**
```swift
    open class func usersReadUsers(skip: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: UsersPublic?, _ error: Error?) -> Void)
```

Read Users

Retrieve users.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let skip = 987 // Int |  (optional) (default to 0)
let limit = 987 // Int |  (optional) (default to 100)

// Read Users
UsersAPI.usersReadUsers(skip: skip, limit: limit) { (response, error) in
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
 **skip** | **Int** |  | [optional] [default to 0]
 **limit** | **Int** |  | [optional] [default to 100]

### Return type

[**UsersPublic**](UsersPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersRegisterUser**
```swift
    open class func usersRegisterUser(userRegister: UserRegister, completion: @escaping (_ data: UserPublic?, _ error: Error?) -> Void)
```

Register User

Register a new user (Supabase sends verification email).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userRegister = UserRegister(email: "email_example", fullName: "fullName_example", password: "password_example") // UserRegister | 

// Register User
UsersAPI.usersRegisterUser(userRegister: userRegister) { (response, error) in
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
 **userRegister** | [**UserRegister**](UserRegister.md) |  | 

### Return type

[**UserPublic**](UserPublic.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUpdateUser**
```swift
    open class func usersUpdateUser(userId: UUID, userUpdate: UserUpdate, completion: @escaping (_ data: UserPublic?, _ error: Error?) -> Void)
```

Update User

Update a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | 
let userUpdate = UserUpdate(createdAt: Date(), email: "email_example", fullName: "fullName_example", isActive: false, isSuperuser: false) // UserUpdate | 

// Update User
UsersAPI.usersUpdateUser(userId: userId, userUpdate: userUpdate) { (response, error) in
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
 **userUpdate** | [**UserUpdate**](UserUpdate.md) |  | 

### Return type

[**UserPublic**](UserPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUpdateUserMe**
```swift
    open class func usersUpdateUserMe(userUpdateMe: UserUpdateMe, completion: @escaping (_ data: UserPublic?, _ error: Error?) -> Void)
```

Update User Me

Update own user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userUpdateMe = UserUpdateMe(email: "email_example", fullName: "fullName_example") // UserUpdateMe | 

// Update User Me
UsersAPI.usersUpdateUserMe(userUpdateMe: userUpdateMe) { (response, error) in
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
 **userUpdateMe** | [**UserUpdateMe**](UserUpdateMe.md) |  | 

### Return type

[**UserPublic**](UserPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

