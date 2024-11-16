# NationbuilderClient::PageCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**PageReadWriteAttributes**](PageReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PageCreateRequestData.new(
  type: pages,
  attributes: null
)
```

