# NationbuilderClient::PetitionSignatureResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PetitionSignatureResponseDataAttributes**](PetitionSignatureResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PetitionSignatureResponseData.new(
  id: 1,
  type: petition_signatures,
  attributes: null
)
```

