# NationbuilderClient::AutomationEnrollmentReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signup_id** | **String** | The signup in this enrollment. | [optional] |
| **automation_id** | **String** | The automation in this enrollment | [optional] |
| **campaign_source** | **String** | The campaign source. | [optional] |
| **campaign_url** | **String** | The campaign url | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::AutomationEnrollmentReadWriteAttributes.new(
  signup_id: 1,
  automation_id: 1,
  campaign_source: Campaign Source,
  campaign_url: https://www.example.com
)
```

