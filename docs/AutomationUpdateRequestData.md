# NationbuilderClient::AutomationUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**AutomationReadWriteAttributes**](AutomationReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::AutomationUpdateRequestData.new(
  id: 1,
  type: automations,
  attributes: null
)
```

