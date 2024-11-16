# NationbuilderClient::VoterCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**VoterReadWriteAttributes**](VoterReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::VoterCreateRequestData.new(
  type: voters,
  attributes: null
)
```

