# NationbuilderClient::EventCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**EventCreateRequestDataAttributes**](EventCreateRequestDataAttributes.md) |  | [optional] |
| **relationships** | [**EventCreateRequestDataRelationships**](EventCreateRequestDataRelationships.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventCreateRequestData.new(
  type: events,
  attributes: null,
  relationships: null
)
```

