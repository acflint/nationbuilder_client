# NationbuilderClient::PathCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**PathReadWriteAttributes**](PathReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathCreateRequestData.new(
  type: paths,
  attributes: null
)
```

