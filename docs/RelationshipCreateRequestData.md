# NationbuilderClient::RelationshipCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**RelationshipReadWriteAttributes**](RelationshipReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::RelationshipCreateRequestData.new(
  type: relationships,
  attributes: null
)
```

