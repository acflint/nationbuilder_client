# NationbuilderClient::PathJourneyReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_step_due_date** | **String** | When the current step is due. | [optional] |
| **current_step_point_person_id** | **String** | The point person of the current step. | [optional] |
| **current_step_id** | **String** | The ID of the current step. | [optional] |
| **description** | **String** | This is the description on the signup&#39;s path. | [optional] |
| **due_date** | **String** | When the path is due to be completed. | [optional] |
| **path_id** | **String** | The associated path. | [optional] |
| **point_person_id** | **String** | The point person of this path journey. | [optional] |
| **signup_id** | **String** | The signup assigned to the path journey | [optional] |
| **value_amount** | **Float** | Values are enabled by the path and assigned to the path journey. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathJourneyReadWriteAttributes.new(
  current_step_due_date: 2019-10-26T10:00:00-04:00,
  current_step_point_person_id: 1,
  current_step_id: 1,
  description: Added by API,
  due_date: 2019-10-26T10:00:00-04:00,
  path_id: 1,
  point_person_id: 1,
  signup_id: 1,
  value_amount: 5.00
)
```

