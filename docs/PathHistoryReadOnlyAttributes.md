# NationbuilderClient::PathHistoryReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | Categorizes the path history. | [optional] |
| **current_step_point_person_id** | **String** | The point person for the current step. | [optional] |
| **path_journey_id** | **String** | The associated path journey. | [optional] |
| **path_journey_status_change_id** | **String** | The associated path journey status change. | [optional] |
| **path_step_id** | **String** | The associated path step. | [optional] |
| **point_person_id** | **String** | The point person. | [optional] |
| **recruiter_id** | **String** | The recruiter. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathHistoryReadOnlyAttributes.new(
  category: step_change,
  current_step_point_person_id: 1,
  path_journey_id: 1,
  path_journey_status_change_id: 1,
  path_step_id: 1,
  point_person_id: 1,
  recruiter_id: 1,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

