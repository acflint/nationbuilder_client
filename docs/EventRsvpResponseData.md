# NationbuilderClient::EventRsvpResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**EventRsvpResponseDataAttributes**](EventRsvpResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventRsvpResponseData.new(
  id: 1,
  type: event_rsvps,
  attributes: null
)
```

