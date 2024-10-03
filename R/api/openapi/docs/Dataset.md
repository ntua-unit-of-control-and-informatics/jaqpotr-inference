# openapi::Dataset


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**type** | [**DatasetType**](DatasetType.md) |  | [Enum: ] 
**entryType** | **character** |  | [Enum: [ARRAY]] 
**input** | [**array[AnyType]**](AnyType.md) |  | 
**result** | [**array[AnyType]**](AnyType.md) |  | [optional] 
**status** | **character** |  | [optional] [Enum: [CREATED, EXECUTING, FAILURE, SUCCESS]] 
**failureReason** | **character** |  | [optional] 
**userId** | **character** |  | [optional] 
**modelId** | **integer** |  | [optional] 
**modelName** | **character** |  | [optional] 
**executedAt** | **character** |  | [optional] 
**executionFinishedAt** | **character** |  | [optional] 
**createdAt** | **character** |  | [optional] 
**updatedAt** | **character** |  | [optional] 


