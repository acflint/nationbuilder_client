# NationbuilderClient::EventRsvpUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**EventRsvpCreateRequestDataAttributes**](EventRsvpCreateRequestDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventRsvpUpdateRequestData.new(
  id: 1,
  type: event_rsvps,
  attributes: null
)
```

