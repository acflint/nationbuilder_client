# NationbuilderClient::PathStepCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**PathStepReadWriteAttributes**](PathStepReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathStepCreateRequestData.new(
  type: path_steps,
  attributes: null
)
```

