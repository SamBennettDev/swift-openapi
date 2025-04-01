# HabitsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**habitsCreateHabit**](HabitsAPI.md#habitscreatehabit) | **POST** /api/v1/habits/ | Create Habit
[**habitsDeleteHabit**](HabitsAPI.md#habitsdeletehabit) | **DELETE** /api/v1/habits/{id} | Delete Habit
[**habitsReadHabit**](HabitsAPI.md#habitsreadhabit) | **GET** /api/v1/habits/{id} | Read Habit
[**habitsReadHabits**](HabitsAPI.md#habitsreadhabits) | **GET** /api/v1/habits/ | Read Habits
[**habitsUpdateHabit**](HabitsAPI.md#habitsupdatehabit) | **PUT** /api/v1/habits/{id} | Update Habit


# **habitsCreateHabit**
```swift
    open class func habitsCreateHabit(habitCreate: HabitCreate, completion: @escaping (_ data: HabitPublic?, _ error: Error?) -> Void)
```

Create Habit

Create new habit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let habitCreate = HabitCreate(lastCompleted: Date(), title: "title_example") // HabitCreate | 

// Create Habit
HabitsAPI.habitsCreateHabit(habitCreate: habitCreate) { (response, error) in
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
 **habitCreate** | [**HabitCreate**](HabitCreate.md) |  | 

### Return type

[**HabitPublic**](HabitPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **habitsDeleteHabit**
```swift
    open class func habitsDeleteHabit(id: UUID, completion: @escaping (_ data: HabitPublic?, _ error: Error?) -> Void)
```

Delete Habit

Delete a Habit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

// Delete Habit
HabitsAPI.habitsDeleteHabit(id: id) { (response, error) in
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

[**HabitPublic**](HabitPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **habitsReadHabit**
```swift
    open class func habitsReadHabit(id: UUID, completion: @escaping (_ data: HabitPublic?, _ error: Error?) -> Void)
```

Read Habit

Get habit by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

// Read Habit
HabitsAPI.habitsReadHabit(id: id) { (response, error) in
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

[**HabitPublic**](HabitPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **habitsReadHabits**
```swift
    open class func habitsReadHabits(completion: @escaping (_ data: HabitsPublic?, _ error: Error?) -> Void)
```

Read Habits

Retrieve habits.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Read Habits
HabitsAPI.habitsReadHabits() { (response, error) in
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

[**HabitsPublic**](HabitsPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **habitsUpdateHabit**
```swift
    open class func habitsUpdateHabit(id: UUID, habitUpdate: HabitUpdate, completion: @escaping (_ data: HabitPublic?, _ error: Error?) -> Void)
```

Update Habit

Update a habit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 
let habitUpdate = HabitUpdate(lastCompleted: Date(), title: "title_example") // HabitUpdate | 

// Update Habit
HabitsAPI.habitsUpdateHabit(id: id, habitUpdate: habitUpdate) { (response, error) in
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
 **habitUpdate** | [**HabitUpdate**](HabitUpdate.md) |  | 

### Return type

[**HabitPublic**](HabitPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

