# NationbuilderClient::EventRsvpCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**EventRsvpCreateRequestDataAttributes**](EventRsvpCreateRequestDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventRsvpCreateRequestData.new(
  type: event_rsvps,
  attributes: null
)
```

