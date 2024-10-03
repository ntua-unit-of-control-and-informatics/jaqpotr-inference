# openapi::Model


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**meta** | **map(object)** | A JSON object containing meta information. | [optional] 
**name** | **character** |  | [Max. length: 255] [Min. length: 3] 
**description** | **character** |  | [optional] [Max. length: 50000] [Min. length: 3] 
**type** | [**ModelType**](ModelType.md) |  | [Enum: ] 
**jaqpotpyVersion** | **character** |  | 
**libraries** | [**array[Library]**](Library.md) |  | 
**dependentFeatures** | [**array[Feature]**](Feature.md) |  | 
**independentFeatures** | [**array[Feature]**](Feature.md) |  | 
**sharedWithOrganizations** | [**array[Organization]**](Organization.md) |  | [optional] 
**visibility** | [**ModelVisibility**](ModelVisibility.md) |  | [Enum: ] 
**task** | [**ModelTask**](ModelTask.md) |  | [Enum: ] 
**actualModel** | **character** | A base64 representation of the actual model. | 
**creator** | [**User**](User.md) |  | [optional] 
**canEdit** | **character** | If the current user can edit the model | [optional] 
**isAdmin** | **character** |  | [optional] 
**tags** | **character** |  | [optional] [Max. length: 1000] 
**legacyPredictionService** | **character** |  | [optional] 
**extraConfig** | [**ModelExtraConfig**](ModelExtraConfig.md) |  | [optional] 
**createdAt** | **character** | The date and time when the feature was created. | [optional] 
**updatedAt** | **character** | The date and time when the feature was last updated. | [optional] 


