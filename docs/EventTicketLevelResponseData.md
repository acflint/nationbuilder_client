# NationbuilderClient::EventTicketLevelResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**EventTicketLevelReadWriteAttributes**](EventTicketLevelReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventTicketLevelResponseData.new(
  id: 1,
  type: event_ticket_levels,
  attributes: null
)
```

