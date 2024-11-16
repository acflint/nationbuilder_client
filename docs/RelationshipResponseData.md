# NationbuilderClient::RelationshipResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**RelationshipResponseDataAttributes**](RelationshipResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::RelationshipResponseData.new(
  id: 1,
  type: relationships,
  attributes: null
)
```

