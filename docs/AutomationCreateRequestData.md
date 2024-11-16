# NationbuilderClient::AutomationCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**AutomationReadWriteAttributes**](AutomationReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::AutomationCreateRequestData.new(
  type: automations,
  attributes: null
)
```

