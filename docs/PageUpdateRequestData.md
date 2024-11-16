# NationbuilderClient::PageUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PageReadWriteAttributes**](PageReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PageUpdateRequestData.new(
  id: 1,
  type: pages,
  attributes: null
)
```

