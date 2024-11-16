# NationbuilderClient::EventResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**EventResponseDataAttributes**](EventResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventResponseData.new(
  id: 1,
  type: events,
  attributes: null
)
```

