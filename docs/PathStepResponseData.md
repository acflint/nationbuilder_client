# NationbuilderClient::PathStepResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PathStepResponseDataAttributes**](PathStepResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathStepResponseData.new(
  id: 1,
  type: path_steps,
  attributes: null
)
```

