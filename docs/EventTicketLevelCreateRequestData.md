# NationbuilderClient::EventTicketLevelCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**EventTicketLevelReadWriteAttributes**](EventTicketLevelReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventTicketLevelCreateRequestData.new(
  type: event_ticket_levels,
  attributes: null
)
```

