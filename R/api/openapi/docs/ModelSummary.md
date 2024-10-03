# openapi::ModelSummary


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**name** | **character** |  | [Max. length: 255] [Min. length: 3] 
**visibility** | [**ModelVisibility**](ModelVisibility.md) |  | [Enum: ] 
**description** | **character** |  | [optional] [Max. length: 50000] [Min. length: 3] 
**creator** | [**User**](User.md) |  | [optional] 
**type** | [**ModelType**](ModelType.md) |  | [Enum: ] 
**dependentFeaturesLength** | **integer** |  | [optional] 
**independentFeaturesLength** | **integer** |  | [optional] 
**sharedWithOrganizations** | [**array[OrganizationSummary]**](OrganizationSummary.md) |  | 
**createdAt** | **character** | The date and time when the feature was created. | 
**updatedAt** | **character** | The date and time when the feature was last updated. | [optional] 


