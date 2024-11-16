# NationbuilderClient::AutomationEnrollmentResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**AutomationEnrollmentResponseDataAttributes**](AutomationEnrollmentResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::AutomationEnrollmentResponseData.new(
  id: 1,
  type: automation_enrollments,
  attributes: null
)
```

