# NationbuilderClient::ContactUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**ContactReadWriteAttributes**](ContactReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ContactUpdateRequestData.new(
  id: 1,
  type: contacts,
  attributes: null
)
```

