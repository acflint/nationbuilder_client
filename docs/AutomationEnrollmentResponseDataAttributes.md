# NationbuilderClient::AutomationEnrollmentResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signup_id** | **String** | The signup in this enrollment. | [optional] |
| **automation_id** | **String** | The automation in this enrollment | [optional] |
| **campaign_source** | **String** | The campaign source. | [optional] |
| **campaign_url** | **String** | The campaign url | [optional] |
| **automation_step_number** | **Integer** | The step in the automation. | [optional][default to 0] |
| **created_at** | **String** |  | [optional] |
| **excluded_at** | **String** | When the enrollment was excluded. | [optional] |
| **next_execution** | **String** | The next time the automation will be executed for this enrollment. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::AutomationEnrollmentResponseDataAttributes.new(
  signup_id: 1,
  automation_id: 1,
  campaign_source: Campaign Source,
  campaign_url: https://www.example.com,
  automation_step_number: 1,
  created_at: 2019-10-26T10:00:00-04:00,
  excluded_at: 2019-10-26T10:00:00-04:00,
  next_execution: 2019-10-26T10:00:00-04:00
)
```

