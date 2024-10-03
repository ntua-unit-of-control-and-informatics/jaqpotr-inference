# AuthApi

All URIs are relative to *https://api.jaqpot.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ValidateJWT**](AuthApi.md#ValidateJWT) | **GET** /v1/auth/validate | Validate JWT


# **ValidateJWT**
> ValidateJWT()

Validate JWT

Validate a JWT token

### Example
```R
library(openapi)

# Validate JWT
#

api_instance <- AuthApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ValidateJWT()
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
| **200** | JWT is valid |  -  |
| **401** | Unauthorized |  -  |

