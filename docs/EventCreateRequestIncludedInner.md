# NationbuilderClient::EventCreateRequestIncludedInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **temp_id** | **String** |  | [optional] |
| **attributes** | [**PageReadWriteAttributes**](PageReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventCreateRequestIncludedInner.new(
  type: pages,
  temp_id: new-id,
  attributes: null
)
```

