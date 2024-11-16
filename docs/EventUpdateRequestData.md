# NationbuilderClient::EventUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**EventCreateRequestDataAttributes**](EventCreateRequestDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventUpdateRequestData.new(
  id: 1,
  type: events,
  attributes: null
)
```

