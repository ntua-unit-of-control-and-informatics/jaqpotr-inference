# ApiKeysApi

All URIs are relative to *https://api.jaqpot.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateApiKey**](ApiKeysApi.md#CreateApiKey) | **POST** /v1/user/api-keys | Create an API Key for the User
[**DeleteApiKey**](ApiKeysApi.md#DeleteApiKey) | **DELETE** /v1/user/api-keys/{key} | Delete an API Key
[**GetAllApiKeysForUser**](ApiKeysApi.md#GetAllApiKeysForUser) | **GET** /v1/user/api-keys | Get All API Keys for the User
[**UpdateApiKey**](ApiKeysApi.md#UpdateApiKey) | **PATCH** /v1/user/api-keys/{key} | Update API Key


# **CreateApiKey**
> CreateApiKey201Response CreateApiKey(api_key)

Create an API Key for the User

Generate and return an API key for programmatic access. This API key is associated with the user and can be used for authenticating future requests.

### Example
```R
library(openapi)

# Create an API Key for the User
#
# prepare function argument(s)
var_api_key <- ApiKey$new("THREE_MONTHS", "clientKey_example", "note_example", "userId_example", "expiresAt_example", "lastUsed_example", "lastUsedIp_example", "enabled_example") # ApiKey | Payload to create a new API key

api_instance <- ApiKeysApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateApiKey(var_api_keydata_file = "result.txt")
result <- api_instance$CreateApiKey(var_api_key)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | [**ApiKey**](ApiKey.md)| Payload to create a new API key | 

### Return type

[**CreateApiKey201Response**](createApiKey_201_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | API Key created successfully |  -  |
| **400** | Invalid input, such as a missing user ID |  -  |
| **401** | Unauthorized request, the user must be authenticated |  -  |
| **404** | User not found |  -  |

# **DeleteApiKey**
> DeleteApiKey(key)

Delete an API Key

Delete a specific API key associated with the authenticated user. Only the user or an admin can delete keys.

### Example
```R
library(openapi)

# Delete an API Key
#
# prepare function argument(s)
var_key <- "jq_abcd1234efgh5678ijkl" # character | The API key to delete

api_instance <- ApiKeysApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteApiKey(var_key)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **character**| The API key to delete | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | API key deleted successfully |  -  |
| **401** | Unauthorized request, the user must be authenticated |  -  |
| **404** | API key not found |  -  |

# **GetAllApiKeysForUser**
> array[GetAllApiKeysForUser200ResponseInner] GetAllApiKeysForUser()

Get All API Keys for the User

Retrieve all API keys associated with the authenticated user.

### Example
```R
library(openapi)

# Get All API Keys for the User
#

api_instance <- ApiKeysApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAllApiKeysForUser(data_file = "result.txt")
result <- api_instance$GetAllApiKeysForUser()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[GetAllApiKeysForUser200ResponseInner]**](getAllApiKeysForUser_200_response_inner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response with the user&#39;s API keys |  -  |
| **401** | Unauthorized request, the user must be authenticated |  -  |

# **UpdateApiKey**
> UpdateApiKey200Response UpdateApiKey(key, update_api_key_request)

Update API Key

Update an API key's metadata, such as its note or status (enable/disable).

### Example
```R
library(openapi)

# Update API Key
#
# prepare function argument(s)
var_key <- "jq_abcd1234efgh5678ijkl" # character | The API key to update
var_update_api_key_request <- updateApiKey_request$new("note_example", "enabled_example") # UpdateApiKeyRequest | Payload to update API key metadata

api_instance <- ApiKeysApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateApiKey(var_key, var_update_api_key_requestdata_file = "result.txt")
result <- api_instance$UpdateApiKey(var_key, var_update_api_key_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **character**| The API key to update | 
 **update_api_key_request** | [**UpdateApiKeyRequest**](UpdateApiKeyRequest.md)| Payload to update API key metadata | 

### Return type

[**UpdateApiKey200Response**](updateApiKey_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | API key updated successfully |  -  |
| **400** | Invalid request, such as malformed input |  -  |
| **401** | Unauthorized request, the user must be authenticated |  -  |
| **404** | API key not found |  -  |

