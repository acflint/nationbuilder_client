# NationbuilderClient::RelationshipUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**RelationshipReadWriteAttributes**](RelationshipReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::RelationshipUpdateRequestData.new(
  id: 1,
  type: relationships,
  attributes: null
)
```

