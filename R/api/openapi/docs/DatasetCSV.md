# openapi::DatasetCSV


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**type** | [**DatasetType**](DatasetType.md) |  | [Enum: ] 
**inputFile** | **character** | A base64 representation in CSV format of the input values. | 
**values** | [**array[AnyType]**](AnyType.md) |  | [optional] 
**status** | **character** |  | [optional] [Enum: [CREATED, EXECUTING, FAILURE, SUCCESS]] 
**failureReason** | **character** |  | [optional] 
**modelId** | **integer** |  | [optional] 
**modelName** | **character** |  | [optional] 
**executedAt** | **character** |  | [optional] 
**executionFinishedAt** | **character** |  | [optional] 
**createdAt** | **character** |  | [optional] 
**updatedAt** | **character** |  | [optional] 


