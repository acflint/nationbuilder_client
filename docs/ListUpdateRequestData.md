# NationbuilderClient::ListUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**ListReadWriteAttributes**](ListReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ListUpdateRequestData.new(
  id: 1,
  type: lists,
  attributes: null
)
```

