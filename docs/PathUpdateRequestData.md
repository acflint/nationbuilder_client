# NationbuilderClient::PathUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PathReadWriteAttributes**](PathReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathUpdateRequestData.new(
  id: 1,
  type: paths,
  attributes: null
)
```

