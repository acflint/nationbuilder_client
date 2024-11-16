# NationbuilderClient::VoterUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**VoterReadWriteAttributes**](VoterReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::VoterUpdateRequestData.new(
  id: 1,
  type: voters,
  attributes: null
)
```

