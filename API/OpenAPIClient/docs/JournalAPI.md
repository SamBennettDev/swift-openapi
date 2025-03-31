# JournalAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**journalCreateJournalEntry**](JournalAPI.md#journalcreatejournalentry) | **POST** /api/v1/journal/ | Create Journal Entry
[**journalDeleteJournalEntry**](JournalAPI.md#journaldeletejournalentry) | **DELETE** /api/v1/journal/{id} | Delete Journal Entry
[**journalReadJournal**](JournalAPI.md#journalreadjournal) | **GET** /api/v1/journal/ | Read Journal
[**journalReadJournalEntry**](JournalAPI.md#journalreadjournalentry) | **GET** /api/v1/journal/{id} | Read Journal Entry
[**journalUpdateJournalEntry**](JournalAPI.md#journalupdatejournalentry) | **PUT** /api/v1/journal/{id} | Update Journal Entry


# **journalCreateJournalEntry**
```swift
    open class func journalCreateJournalEntry(journalEntryCreate: JournalEntryCreate, completion: @escaping (_ data: JournalEntryPublic?, _ error: Error?) -> Void)
```

Create Journal Entry

Create new journal_entry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let journalEntryCreate = JournalEntryCreate(title: "title_example", hashedEntry: "hashedEntry_example", lastModified: Date()) // JournalEntryCreate | 

// Create Journal Entry
JournalAPI.journalCreateJournalEntry(journalEntryCreate: journalEntryCreate) { (response, error) in
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
 **journalEntryCreate** | [**JournalEntryCreate**](JournalEntryCreate.md) |  | 

### Return type

[**JournalEntryPublic**](JournalEntryPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **journalDeleteJournalEntry**
```swift
    open class func journalDeleteJournalEntry(id: UUID, completion: @escaping (_ data: JournalEntryPublic?, _ error: Error?) -> Void)
```

Delete Journal Entry

Delete a JournalEntry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

// Delete Journal Entry
JournalAPI.journalDeleteJournalEntry(id: id) { (response, error) in
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

[**JournalEntryPublic**](JournalEntryPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **journalReadJournal**
```swift
    open class func journalReadJournal(completion: @escaping (_ data: JournalPublic?, _ error: Error?) -> Void)
```

Read Journal

Retrieve journal.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Read Journal
JournalAPI.journalReadJournal() { (response, error) in
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

[**JournalPublic**](JournalPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **journalReadJournalEntry**
```swift
    open class func journalReadJournalEntry(id: UUID, completion: @escaping (_ data: JournalEntryPublic?, _ error: Error?) -> Void)
```

Read Journal Entry

Get journal_entry by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

// Read Journal Entry
JournalAPI.journalReadJournalEntry(id: id) { (response, error) in
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

[**JournalEntryPublic**](JournalEntryPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **journalUpdateJournalEntry**
```swift
    open class func journalUpdateJournalEntry(id: UUID, journalEntryUpdate: JournalEntryUpdate, completion: @escaping (_ data: JournalEntryPublic?, _ error: Error?) -> Void)
```

Update Journal Entry

Update a journal_entry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 
let journalEntryUpdate = JournalEntryUpdate(title: "title_example", hashedEntry: "hashedEntry_example", lastModified: Date()) // JournalEntryUpdate | 

// Update Journal Entry
JournalAPI.journalUpdateJournalEntry(id: id, journalEntryUpdate: journalEntryUpdate) { (response, error) in
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
 **journalEntryUpdate** | [**JournalEntryUpdate**](JournalEntryUpdate.md) |  | 

### Return type

[**JournalEntryPublic**](JournalEntryPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

