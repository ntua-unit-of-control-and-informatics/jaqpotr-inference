# ModelApi

All URIs are relative to *https://api.jaqpot.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateModel**](ModelApi.md#CreateModel) | **POST** /v1/models | Create a new model
[**DeleteModelById**](ModelApi.md#DeleteModelById) | **DELETE** /v1/models/{id} | Delete a Model
[**GetLegacyModelById**](ModelApi.md#GetLegacyModelById) | **GET** /v1/models/legacy/{id} | Get a legacy model
[**GetModelById**](ModelApi.md#GetModelById) | **GET** /v1/models/{id} | Get a Model
[**GetModels**](ModelApi.md#GetModels) | **GET** /v1/user/models | Get paginated models
[**GetSharedModels**](ModelApi.md#GetSharedModels) | **GET** /v1/user/shared-models | Get paginated shared models
[**PartiallyUpdateModel**](ModelApi.md#PartiallyUpdateModel) | **PATCH** /v1/models/{id}/partial | Partially update specific fields of a model
[**PredictWithModel**](ModelApi.md#PredictWithModel) | **POST** /v1/models/{modelId}/predict | Predict with Model
[**PredictWithModelCSV**](ModelApi.md#PredictWithModelCSV) | **POST** /v1/models/{modelId}/predict/csv | Predict using CSV with Model
[**SearchModels**](ModelApi.md#SearchModels) | **GET** /v1/models/search | Search for models


# **CreateModel**
> CreateModel(model)

Create a new model

### Example
```R
library(openapi)

# Create a new model
#
# prepare function argument(s)
var_model <- Model$new("name_example", ModelType$new(), "jaqpotpyVersion_example", c(Library$new("name_example", "version_example", 123, "createdAt_example", "updatedAt_example")), c(Feature$new("key_example", "name_example", FeatureType$new(), 123, c(key = 123), "units_example", "description_example", "DEPENDENT", "visible_example", c(FeaturePossibleValue$new("key_example", "value_example")), "createdAt_example", "updatedAt_example")), c(Feature$new("key_example", "name_example", FeatureType$new(), 123, c(key = 123), "units_example", "description_example", "DEPENDENT", "visible_example", c(FeaturePossibleValue$new("key_example", "value_example")), "createdAt_example", "updatedAt_example")), ModelVisibility$new(), ModelTask$new(), "actualModel_example", 123, c(key = 123), "description_example", c(Organization$new("name_example", OrganizationVisibility$new(), "contactEmail_example", 123, User$new("id_example", "username_example", "firstName_example", "lastName_example", "email_example", "emailVerified_example"), "description_example", c(OrganizationUser$new("userId_example", "username_example", "email_example", OrganizationUserAssociationType$new(), 123)), "contactPhone_example", "website_example", "address_example", "canEdit_example", "isMember_example", "created_at_example", "updated_at_example")), User$new("id_example", "username_example", "firstName_example", "lastName_example", "email_example", "emailVerified_example"), "canEdit_example", "isAdmin_example", "tags_example", "legacyPredictionService_example", ModelExtraConfig$new(c(key = 123), c(Transformer$new("name_example", c(key = TODO))), c(Transformer$new("name_example", c(key = TODO))), c(Transformer$new("name_example", c(key = TODO)))), "createdAt_example", "updatedAt_example") # Model | 

api_instance <- ModelApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$CreateModel(var_model)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**Model**](Model.md)|  | 

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
| **201** | Model created successfully |  -  |
| **400** | Invalid input |  -  |

# **DeleteModelById**
> DeleteModelById(id)

Delete a Model

Delete a single model by its ID

### Example
```R
library(openapi)

# Delete a Model
#
# prepare function argument(s)
var_id <- 0 # integer | The ID of the model to delete

api_instance <- ModelApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteModelById(var_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| The ID of the model to delete | 

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
| **204** | Model deleted successfully |  -  |
| **404** | Model not found |  -  |

# **GetLegacyModelById**
> Model GetLegacyModelById(id)

Get a legacy model

Retrieve a single model by its ID

### Example
```R
library(openapi)

# Get a legacy model
#
# prepare function argument(s)
var_id <- "id_example" # character | The ID of the model to retrieve

api_instance <- ModelApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetLegacyModelById(var_iddata_file = "result.txt")
result <- api_instance$GetLegacyModelById(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the model to retrieve | 

### Return type

[**Model**](Model.md)

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

# **GetModelById**
> Model GetModelById(id)

Get a Model

Retrieve a single model by its ID

### Example
```R
library(openapi)

# Get a Model
#
# prepare function argument(s)
var_id <- 0 # integer | The ID of the model to retrieve

api_instance <- ModelApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetModelById(var_iddata_file = "result.txt")
result <- api_instance$GetModelById(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| The ID of the model to retrieve | 

### Return type

[**Model**](Model.md)

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

# **GetModels**
> GetModels200Response GetModels(page = 0, size = 10, sort = var.sort)

Get paginated models

### Example
```R
library(openapi)

# Get paginated models
#
# prepare function argument(s)
var_page <- 0 # integer |  (Optional)
var_size <- 10 # integer |  (Optional)
var_sort <- c("inner_example") # array[character] |  (Optional)

api_instance <- ModelApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetModels(page = var_page, size = var_size, sort = var_sortdata_file = "result.txt")
result <- api_instance$GetModels(page = var_page, size = var_size, sort = var_sort)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] [default to 0]
 **size** | **integer**|  | [optional] [default to 10]
 **sort** | list( **character** )|  | [optional] 

### Return type

[**GetModels200Response**](getModels_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated list of models |  -  |
| **400** | Invalid input |  -  |

# **GetSharedModels**
> GetModels200Response GetSharedModels(page = 0, size = 10, sort = var.sort, organization_id = var.organization_id)

Get paginated shared models

### Example
```R
library(openapi)

# Get paginated shared models
#
# prepare function argument(s)
var_page <- 0 # integer |  (Optional)
var_size <- 10 # integer |  (Optional)
var_sort <- c("inner_example") # array[character] |  (Optional)
var_organization_id <- 56 # integer |  (Optional)

api_instance <- ModelApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSharedModels(page = var_page, size = var_size, sort = var_sort, organization_id = var_organization_iddata_file = "result.txt")
result <- api_instance$GetSharedModels(page = var_page, size = var_size, sort = var_sort, organization_id = var_organization_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] [default to 0]
 **size** | **integer**|  | [optional] [default to 10]
 **sort** | list( **character** )|  | [optional] 
 **organization_id** | **integer**|  | [optional] 

### Return type

[**GetModels200Response**](getModels_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated list of shared models |  -  |
| **400** | Invalid input |  -  |

# **PartiallyUpdateModel**
> Model PartiallyUpdateModel(id, partially_update_model_request)

Partially update specific fields of a model

### Example
```R
library(openapi)

# Partially update specific fields of a model
#
# prepare function argument(s)
var_id <- 56 # integer | 
var_partially_update_model_request <- partiallyUpdateModel_request$new("name_example", ModelVisibility$new(), ModelTask$new(), "description_example", "tags_example", c(123)) # PartiallyUpdateModelRequest | 

api_instance <- ModelApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PartiallyUpdateModel(var_id, var_partially_update_model_requestdata_file = "result.txt")
result <- api_instance$PartiallyUpdateModel(var_id, var_partially_update_model_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 
 **partially_update_model_request** | [**PartiallyUpdateModelRequest**](PartiallyUpdateModelRequest.md)|  | 

### Return type

[**Model**](Model.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Model fields updated successfully |  -  |
| **404** | Model not found |  -  |
| **400** | Invalid input |  -  |

# **PredictWithModel**
> PredictWithModel(model_id, dataset)

Predict with Model

Submit a dataset for prediction using a specific model

### Example
```R
library(openapi)

# Predict with Model
#
# prepare function argument(s)
var_model_id <- 0 # integer | The ID of the model to use for prediction
var_dataset <- Dataset$new(DatasetType$new(), "ARRAY", c(TODO), 123, c(TODO), "CREATED", "failureReason_example", "userId_example", 123, "modelName_example", "executedAt_example", "executionFinishedAt_example", "createdAt_example", "updatedAt_example") # Dataset | 

api_instance <- ModelApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$PredictWithModel(var_model_id, var_dataset)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_id** | **integer**| The ID of the model to use for prediction | 
 **dataset** | [**Dataset**](Dataset.md)|  | 

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
| **201** | Prediction created successfully |  -  |
| **400** | Invalid Request |  -  |
| **404** | Model not found |  -  |
| **500** | Internal Server Error |  -  |

# **PredictWithModelCSV**
> PredictWithModelCSV(model_id, dataset_csv)

Predict using CSV with Model

Submit a dataset for prediction using a specific model

### Example
```R
library(openapi)

# Predict using CSV with Model
#
# prepare function argument(s)
var_model_id <- 0 # integer | The ID of the model to use for prediction
var_dataset_csv <- DatasetCSV$new(DatasetType$new(), "inputFile_example", 123, c(TODO), "CREATED", "failureReason_example", 123, "modelName_example", "executedAt_example", "executionFinishedAt_example", "createdAt_example", "updatedAt_example") # DatasetCSV | 

api_instance <- ModelApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$PredictWithModelCSV(var_model_id, var_dataset_csv)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_id** | **integer**| The ID of the model to use for prediction | 
 **dataset_csv** | [**DatasetCSV**](DatasetCSV.md)|  | 

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
| **201** | Prediction created successfully |  -  |
| **400** | Invalid Request |  -  |
| **404** | Model not found |  -  |
| **500** | Internal Server Error |  -  |

# **SearchModels**
> GetModels200Response SearchModels(query, page = 0, size = 10)

Search for models

### Example
```R
library(openapi)

# Search for models
#
# prepare function argument(s)
var_query <- "query_example" # character | 
var_page <- 0 # integer |  (Optional)
var_size <- 10 # integer |  (Optional)

api_instance <- ModelApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SearchModels(var_query, page = var_page, size = var_sizedata_file = "result.txt")
result <- api_instance$SearchModels(var_query, page = var_page, size = var_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **character**|  | 
 **page** | **integer**|  | [optional] [default to 0]
 **size** | **integer**|  | [optional] [default to 10]

### Return type

[**GetModels200Response**](getModels_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated list of models |  -  |
| **400** | Invalid input |  -  |

