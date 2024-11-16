# NationbuilderClient::PetitionSignatureUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PetitionSignatureCreateRequestDataAttributes**](PetitionSignatureCreateRequestDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PetitionSignatureUpdateRequestData.new(
  id: 1,
  type: petition_signatures,
  attributes: null
)
```

