# NationbuilderClient::AutomationResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the automation. | [optional] |
| **description** | **String** | A description for the automation. | [optional] |
| **status** | **String** | The automation&#39;s status | [optional][default to &#39;drafted&#39;] |
| **created_at** | **String** |  | [optional] |
| **paused_at** | **String** | When the automation was paused. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::AutomationResponseDataAttributes.new(
  name: Auto-Email Automation,
  description: Send automated emails during workflow process,
  status: drafted,
  created_at: 2019-10-26T10:00:00-04:00,
  paused_at: 2019-10-26T10:00:00-04:00
)
```

