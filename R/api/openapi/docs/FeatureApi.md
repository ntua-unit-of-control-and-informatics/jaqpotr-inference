# FeatureApi

All URIs are relative to *https://api.jaqpot.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PartiallyUpdateModelFeature**](FeatureApi.md#PartiallyUpdateModelFeature) | **PATCH** /v1/models/{modelId}/features/{featureId} | Update a feature for a specific model


# **PartiallyUpdateModelFeature**
> Feature PartiallyUpdateModelFeature(model_id, feature_id, partially_update_model_feature_request)

Update a feature for a specific model

Update the name, description, and feature type of an existing feature within a specific model

### Example
```R
library(openapi)

# Update a feature for a specific model
#
# prepare function argument(s)
var_model_id <- 56 # integer | The ID of the model containing the feature
var_feature_id <- 56 # integer | The ID of the feature to update
var_partially_update_model_feature_request <- partiallyUpdateModelFeature_request$new("name_example", FeatureType$new(), "units_example", "description_example", c(FeaturePossibleValue$new("key_example", "value_example"))) # PartiallyUpdateModelFeatureRequest | 

api_instance <- FeatureApi$new()
# Configure HTTP bearer authorization: bearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PartiallyUpdateModelFeature(var_model_id, var_feature_id, var_partially_update_model_feature_requestdata_file = "result.txt")
result <- api_instance$PartiallyUpdateModelFeature(var_model_id, var_feature_id, var_partially_update_model_feature_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_id** | **integer**| The ID of the model containing the feature | 
 **feature_id** | **integer**| The ID of the feature to update | 
 **partially_update_model_feature_request** | [**PartiallyUpdateModelFeatureRequest**](PartiallyUpdateModelFeatureRequest.md)|  | 

### Return type

[**Feature**](Feature.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Feature updated successfully |  -  |
| **400** | Invalid input |  -  |
| **404** | Model or feature not found |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |

