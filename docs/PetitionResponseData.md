# NationbuilderClient::PetitionResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PetitionReadWriteAttributes**](PetitionReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PetitionResponseData.new(
  id: 1,
  type: petitions,
  attributes: null
)
```

