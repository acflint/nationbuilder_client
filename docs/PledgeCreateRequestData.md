# NationbuilderClient::PledgeCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**PledgeReadWriteAttributes**](PledgeReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PledgeCreateRequestData.new(
  type: pledges,
  attributes: null
)
```

