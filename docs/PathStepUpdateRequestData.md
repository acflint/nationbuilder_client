# NationbuilderClient::PathStepUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PathStepReadWriteAttributes**](PathStepReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathStepUpdateRequestData.new(
  id: 1,
  type: path_steps,
  attributes: null
)
```

