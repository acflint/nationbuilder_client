# NationbuilderClient::PetitionUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PetitionCreateRequestDataAttributes**](PetitionCreateRequestDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PetitionUpdateRequestData.new(
  id: 1,
  type: petitions,
  attributes: null
)
```

