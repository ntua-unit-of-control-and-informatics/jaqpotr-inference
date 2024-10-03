# OrganizationInvitationApi

All URIs are relative to *https://api.jaqpot.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateInvitations**](OrganizationInvitationApi.md#CreateInvitations) | **POST** /v1/organizations/{orgName}/invitations | Create new invitations for an organization
[**GetAllInvitations**](OrganizationInvitationApi.md#GetAllInvitations) | **GET** /v1/organizations/{orgName}/invitations | Get all invitations for an organization
[**GetInvitation**](OrganizationInvitationApi.md#GetInvitation) | **GET** /v1/organizations/{name}/invitations/{uuid} | Get the status of an invitation
[**ResendInvitation**](OrganizationInvitationApi.md#ResendInvitation) | **POST** /v1/organizations/{orgId}/invitations/{id}/resend | Resend an invitation email
[**UpdateInvitation**](OrganizationInvitationApi.md#UpdateInvitation) | **PUT** /v1/organizations/{name}/invitations/{uuid} | Update the status of an invitation


# **CreateInvitations**
> CreateInvitations(org_name, create_invitations_request)

Create new invitations for an organization

This endpoint allows an organization admin to create new invitations for users.

### Example
```R
library(openapi)

# Create new invitations for an organization
#
# prepare function argument(s)
var_org_name <- "org_name_example" # character | Name of the organization
var_create_invitations_request <- createInvitations_request$new(c("emails_example")) # CreateInvitationsRequest | Invitation request payload

api_instance <- OrganizationInvitationApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$CreateInvitations(var_org_name, var_create_invitations_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_name** | **character**| Name of the organization | 
 **create_invitations_request** | [**CreateInvitationsRequest**](CreateInvitationsRequest.md)| Invitation request payload | 

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
| **201** | Invitations created successfully |  -  |
| **400** | Bad request, invalid input |  -  |
| **401** | Unauthorized, only admins can create invitations |  -  |
| **429** | Too many requests, rate limit exceeded |  -  |

# **GetAllInvitations**
> array[OrganizationInvitation] GetAllInvitations(org_name)

Get all invitations for an organization

This endpoint allows an organization admin to get all invitations for their organization.

### Example
```R
library(openapi)

# Get all invitations for an organization
#
# prepare function argument(s)
var_org_name <- "org_name_example" # character | Name of the organization

api_instance <- OrganizationInvitationApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAllInvitations(var_org_namedata_file = "result.txt")
result <- api_instance$GetAllInvitations(var_org_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_name** | **character**| Name of the organization | 

### Return type

[**array[OrganizationInvitation]**](OrganizationInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Invitations retrieved successfully |  -  |
| **400** | Bad request, invalid input |  -  |
| **401** | Unauthorized, only admins can access this endpoint |  -  |
| **404** | Organization not found |  -  |

# **GetInvitation**
> OrganizationInvitation GetInvitation(name, uuid)

Get the status of an invitation

This endpoint allows a user to check the status of an invitation.

### Example
```R
library(openapi)

# Get the status of an invitation
#
# prepare function argument(s)
var_name <- "name_example" # character | Name of the organization
var_uuid <- "uuid_example" # character | UUID of the invitation

api_instance <- OrganizationInvitationApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetInvitation(var_name, var_uuiddata_file = "result.txt")
result <- api_instance$GetInvitation(var_name, var_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the organization | 
 **uuid** | **character**| UUID of the invitation | 

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Invitation status retrieved successfully |  -  |
| **400** | Bad request, invalid input |  -  |
| **404** | Invitation not found |  -  |

# **ResendInvitation**
> ResendInvitation(org_id, id)

Resend an invitation email

This endpoint allows an organization admin to resend an invitation email if it has not expired. Only organization admins can access this endpoint.

### Example
```R
library(openapi)

# Resend an invitation email
#
# prepare function argument(s)
var_org_id <- 56 # integer | ID of the organization
var_id <- "id_example" # character | ID of the invitation

api_instance <- OrganizationInvitationApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ResendInvitation(var_org_id, var_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **integer**| ID of the organization | 
 **id** | **character**| ID of the invitation | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Invitation resent successfully |  -  |
| **400** | Bad request, invalid input |  -  |
| **401** | Unauthorized, only organization admins can access this endpoint |  -  |
| **404** | Organization or invitation not found |  -  |
| **410** | Gone, the invitation has expired |  -  |

# **UpdateInvitation**
> OrganizationInvitation UpdateInvitation(name, uuid, organization_invitation)

Update the status of an invitation

This endpoint allows a user to update the status of an invitation.

### Example
```R
library(openapi)

# Update the status of an invitation
#
# prepare function argument(s)
var_name <- "name_example" # character | Name of the organization
var_uuid <- "uuid_example" # character | UUID of the invitation
var_organization_invitation <- OrganizationInvitation$new("userEmail_example", "PENDING", "expirationDate_example", "id_example", "userId_example") # OrganizationInvitation | Invitation status update payload

api_instance <- OrganizationInvitationApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateInvitation(var_name, var_uuid, var_organization_invitationdata_file = "result.txt")
result <- api_instance$UpdateInvitation(var_name, var_uuid, var_organization_invitation)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the organization | 
 **uuid** | **character**| UUID of the invitation | 
 **organization_invitation** | [**OrganizationInvitation**](OrganizationInvitation.md)| Invitation status update payload | 

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Invitation status updated successfully |  -  |
| **400** | Bad request, invalid input |  -  |
| **404** | Invitation not found |  -  |

