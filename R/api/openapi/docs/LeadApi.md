# LeadApi

All URIs are relative to *https://api.jaqpot.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateLead**](LeadApi.md#CreateLead) | **POST** /v1/leads | Create a Lead
[**DeleteLeadById**](LeadApi.md#DeleteLeadById) | **DELETE** /v1/leads/{id} | Delete a Lead by ID
[**GetAllLeads**](LeadApi.md#GetAllLeads) | **GET** /v1/leads | Get All Leads
[**GetLeadById**](LeadApi.md#GetLeadById) | **GET** /v1/leads/{id} | Get a Lead by ID
[**UpdateLeadById**](LeadApi.md#UpdateLeadById) | **PUT** /v1/leads/{id} | Update a Lead by ID


# **CreateLead**
> CreateLead()

Create a Lead

Create a new lead

### Example
```R
library(openapi)

# Create a Lead
#

api_instance <- LeadApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$CreateLead()
```

### Parameters
This endpoint does not need any parameter.

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
| **201** | Lead created successfully |  -  |
| **400** | Invalid request data |  -  |

# **DeleteLeadById**
> DeleteLeadById(id)

Delete a Lead by ID

Delete a single lead by its ID

### Example
```R
library(openapi)

# Delete a Lead by ID
#
# prepare function argument(s)
var_id <- 0 # integer | The ID of the lead to delete

api_instance <- LeadApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteLeadById(var_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| The ID of the lead to delete | 

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
| **204** | Lead deleted successfully |  -  |
| **404** | Lead not found |  -  |

# **GetAllLeads**
> array[Lead] GetAllLeads()

Get All Leads

Retrieve all leads

### Example
```R
library(openapi)

# Get All Leads
#

api_instance <- LeadApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAllLeads(data_file = "result.txt")
result <- api_instance$GetAllLeads()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[Lead]**](Lead.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

# **GetLeadById**
> Lead GetLeadById(id)

Get a Lead by ID

Retrieve a single lead by its ID

### Example
```R
library(openapi)

# Get a Lead by ID
#
# prepare function argument(s)
var_id <- 0 # integer | The ID of the lead to retrieve

api_instance <- LeadApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetLeadById(var_iddata_file = "result.txt")
result <- api_instance$GetLeadById(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| The ID of the lead to retrieve | 

### Return type

[**Lead**](Lead.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **404** | Lead not found |  -  |

# **UpdateLeadById**
> UpdateLeadById(id, lead)

Update a Lead by ID

Update the details of an existing lead

### Example
```R
library(openapi)

# Update a Lead by ID
#
# prepare function argument(s)
var_id <- 0 # integer | The ID of the lead to update
var_lead <- Lead$new(123, "email_example", "name_example", "PENDING") # Lead | 

api_instance <- LeadApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$UpdateLeadById(var_id, var_lead)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| The ID of the lead to update | 
 **lead** | [**Lead**](Lead.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Lead updated successfully |  -  |
| **400** | Invalid request data |  -  |
| **404** | Lead not found |  -  |

