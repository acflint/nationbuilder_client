# NationbuilderClient::PetitionCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**PetitionCreateRequestDataAttributes**](PetitionCreateRequestDataAttributes.md) |  | [optional] |
| **relationships** | [**EventCreateRequestDataRelationships**](EventCreateRequestDataRelationships.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PetitionCreateRequestData.new(
  type: petitions,
  attributes: null,
  relationships: null
)
```

