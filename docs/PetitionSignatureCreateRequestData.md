# NationbuilderClient::PetitionSignatureCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**PetitionSignatureCreateRequestDataAttributes**](PetitionSignatureCreateRequestDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PetitionSignatureCreateRequestData.new(
  type: petition_signatures,
  attributes: null
)
```

