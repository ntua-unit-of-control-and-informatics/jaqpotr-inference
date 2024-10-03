# openapi::Feature


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**meta** | **map(object)** | A JSON object containing meta information. | [optional] 
**key** | **character** | A key that must start with a letter, followed by any combination of letters, digits, hyphens, or underscores. For example, &#39;abc123&#39;, &#39;abc-test&#39;, or &#39;Abc_test&#39;. It cannot start with a digit. | [Pattern: ^[a-zA-Z][a-zA-Z0-9_-]*$] 
**name** | **character** | A name for the feature that will appear on top of the form field | [Max. length: 255] 
**units** | **character** | A name for the feature that will appear on top of the form field | [optional] [Max. length: 255] 
**description** | **character** |  | [optional] [Max. length: 2000] 
**featureType** | [**FeatureType**](FeatureType.md) |  | [Enum: ] 
**featureDependency** | **character** |  | [optional] [Enum: [DEPENDENT, INDEPENDENT]] 
**visible** | **character** |  | [optional] 
**possibleValues** | [**array[FeaturePossibleValue]**](FeaturePossibleValue.md) |  | [optional] 
**createdAt** | **character** | The date and time when the feature was created. | [optional] 
**updatedAt** | **character** | The date and time when the feature was last updated. | [optional] 


