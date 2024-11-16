# NationbuilderClient::ListResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**ListResponseDataAttributes**](ListResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ListResponseData.new(
  id: 1,
  type: lists,
  attributes: null
)
```

