# NationbuilderClient::PledgeUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PledgeReadWriteAttributes**](PledgeReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PledgeUpdateRequestData.new(
  id: 1,
  type: pledges,
  attributes: null
)
```

