# NationbuilderClient::AutomationResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**AutomationResponseDataAttributes**](AutomationResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::AutomationResponseData.new(
  id: 1,
  type: automations,
  attributes: null
)
```

