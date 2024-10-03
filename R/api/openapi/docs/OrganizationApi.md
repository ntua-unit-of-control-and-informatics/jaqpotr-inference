# OrganizationApi

All URIs are relative to *https://api.jaqpot.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateOrganization**](OrganizationApi.md#CreateOrganization) | **POST** /v1/organizations | Create a new organization
[**GetAllOrganizationsByUser**](OrganizationApi.md#GetAllOrganizationsByUser) | **GET** /v1/user/organizations | Get all user organizations
[**GetAllOrganizationsForUser**](OrganizationApi.md#GetAllOrganizationsForUser) | **GET** /v1/organizations | Get all organizations for a specific user
[**GetOrganizationByName**](OrganizationApi.md#GetOrganizationByName) | **GET** /v1/organizations/{name} | Get organization by name
[**PartialUpdateOrganization**](OrganizationApi.md#PartialUpdateOrganization) | **PATCH** /v1/organizations/{id}/partial | Partially update an existing organization


# **CreateOrganization**
> CreateOrganization(organization)

Create a new organization

### Example
```R
library(openapi)

# Create a new organization
#
# prepare function argument(s)
var_organization <- Organization$new("name_example", OrganizationVisibility$new(), "contactEmail_example", 123, User$new("id_example", "username_example", "firstName_example", "lastName_example", "email_example", "emailVerified_example"), "description_example", c(OrganizationUser$new("userId_example", "username_example", "email_example", OrganizationUserAssociationType$new(), 123)), "contactPhone_example", "website_example", "address_example", "canEdit_example", "isMember_example", "created_at_example", "updated_at_example") # Organization | 

api_instance <- OrganizationApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$CreateOrganization(var_organization)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**Organization**](Organization.md)|  | 

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
| **201** | Organization created successfully |  -  |

# **GetAllOrganizationsByUser**
> array[Organization] GetAllOrganizationsByUser()

Get all user organizations

### Example
```R
library(openapi)

# Get all user organizations
#

api_instance <- OrganizationApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAllOrganizationsByUser(data_file = "result.txt")
result <- api_instance$GetAllOrganizationsByUser()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[Organization]**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |

# **GetAllOrganizationsForUser**
> array[Organization] GetAllOrganizationsForUser()

Get all organizations for a specific user

### Example
```R
library(openapi)

# Get all organizations for a specific user
#

api_instance <- OrganizationApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAllOrganizationsForUser(data_file = "result.txt")
result <- api_instance$GetAllOrganizationsForUser()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[Organization]**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |

# **GetOrganizationByName**
> Organization GetOrganizationByName(name)

Get organization by name

### Example
```R
library(openapi)

# Get organization by name
#
# prepare function argument(s)
var_name <- "name_example" # character | 

api_instance <- OrganizationApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetOrganizationByName(var_namedata_file = "result.txt")
result <- api_instance$GetOrganizationByName(var_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**|  | 

### Return type

[**Organization**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **404** | Organization not found |  -  |

# **PartialUpdateOrganization**
> Organization PartialUpdateOrganization(id, partial_update_organization_request)

Partially update an existing organization

### Example
```R
library(openapi)

# Partially update an existing organization
#
# prepare function argument(s)
var_id <- 56 # integer | 
var_partial_update_organization_request <- partialUpdateOrganization_request$new("name_example", "contactEmail_example", OrganizationVisibility$new(), "description_example") # PartialUpdateOrganizationRequest | 

api_instance <- OrganizationApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PartialUpdateOrganization(var_id, var_partial_update_organization_requestdata_file = "result.txt")
result <- api_instance$PartialUpdateOrganization(var_id, var_partial_update_organization_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 
 **partial_update_organization_request** | [**PartialUpdateOrganizationRequest**](PartialUpdateOrganizationRequest.md)|  | 

### Return type

[**Organization**](Organization.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Organization updated successfully |  -  |
| **404** | Organization not found |  -  |

