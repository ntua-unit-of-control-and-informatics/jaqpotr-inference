# DatasetApi

All URIs are relative to *https://api.jaqpot.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetDatasetById**](DatasetApi.md#GetDatasetById) | **GET** /v1/datasets/{id} | Get a Dataset
[**GetDatasets**](DatasetApi.md#GetDatasets) | **GET** /v1/user/datasets | Get Datasets by User ID


# **GetDatasetById**
> Dataset GetDatasetById(id)

Get a Dataset

Retrieve a single dataset by its ID

### Example
```R
library(openapi)

# Get a Dataset
#
# prepare function argument(s)
var_id <- 0 # integer | The ID of the dataset to retrieve

api_instance <- DatasetApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDatasetById(var_iddata_file = "result.txt")
result <- api_instance$GetDatasetById(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| The ID of the dataset to retrieve | 

### Return type

[**Dataset**](Dataset.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **404** | Model not found |  -  |

# **GetDatasets**
> GetDatasets200Response GetDatasets(page = 0, size = 10, sort = var.sort)

Get Datasets by User ID

Retrieve all datasets associated with a specific user ID

### Example
```R
library(openapi)

# Get Datasets by User ID
#
# prepare function argument(s)
var_page <- 0 # integer |  (Optional)
var_size <- 10 # integer |  (Optional)
var_sort <- c("inner_example") # array[character] |  (Optional)

api_instance <- DatasetApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetDatasets(page = var_page, size = var_size, sort = var_sortdata_file = "result.txt")
result <- api_instance$GetDatasets(page = var_page, size = var_size, sort = var_sort)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] [default to 0]
 **size** | **integer**|  | [optional] [default to 10]
 **sort** | list( **character** )|  | [optional] 

### Return type

[**GetDatasets200Response**](getDatasets_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **404** | User or datasets not found |  -  |

