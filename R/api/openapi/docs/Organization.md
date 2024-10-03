# openapi::Organization


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**name** | **character** |  | [Pattern: [\\w\\-_]+] [Max. length: 200] [Min. length: 3] 
**creator** | [**User**](User.md) |  | [optional] 
**visibility** | [**OrganizationVisibility**](OrganizationVisibility.md) |  | [Enum: ] 
**description** | **character** |  | [optional] [Max. length: 2000] [Min. length: 3] 
**organizationMembers** | [**array[OrganizationUser]**](OrganizationUser.md) |  | [optional] 
**contactEmail** | **character** |  | 
**contactPhone** | **character** |  | [optional] 
**website** | **character** |  | [optional] 
**address** | **character** |  | [optional] 
**canEdit** | **character** | If the current user can edit the organization | [optional] 
**isMember** | **character** | If the current user is a member of the organization | [optional] 
**created_at** | **character** |  | [optional] 
**updated_at** | **character** |  | [optional] 


