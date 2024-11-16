# NationbuilderClient::AutomationEnrollmentCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**AutomationEnrollmentReadWriteAttributes**](AutomationEnrollmentReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::AutomationEnrollmentCreateRequestData.new(
  type: automation_enrollments,
  attributes: null
)
```

