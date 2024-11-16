# NationbuilderClient::PledgeResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PledgeResponseDataAttributes**](PledgeResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PledgeResponseData.new(
  id: 1,
  type: pledges,
  attributes: null
)
```

