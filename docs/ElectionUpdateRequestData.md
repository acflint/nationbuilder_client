# NationbuilderClient::ElectionUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**ElectionReadWriteAttributes**](ElectionReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ElectionUpdateRequestData.new(
  id: 1,
  type: elections,
  attributes: null
)
```

