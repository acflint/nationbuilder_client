# NationbuilderClient::AutomationReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the automation. | [optional] |
| **description** | **String** | A description for the automation. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::AutomationReadWriteAttributes.new(
  name: Auto-Email Automation,
  description: Send automated emails during workflow process
)
```

