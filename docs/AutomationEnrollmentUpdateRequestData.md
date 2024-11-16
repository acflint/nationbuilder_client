# NationbuilderClient::AutomationEnrollmentUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**AutomationEnrollmentReadWriteAttributes**](AutomationEnrollmentReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::AutomationEnrollmentUpdateRequestData.new(
  id: 1,
  type: automation_enrollments,
  attributes: null
)
```

