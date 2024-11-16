# NationbuilderClient::PathJourneyResponseDataAttributes

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
| **ended_at** | **String** | When the path ended. | [optional] |
| **journey_status** | **String** | The current path journey status. | [optional][default to &#39;active&#39;] |
| **last_moved_at** | **String** | The last time the signup moved along the path journey. | [optional] |
| **path_journey_status_change_id** | **String** | The ID of the status change. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathJourneyResponseDataAttributes.new(
  current_step_due_date: 2019-10-26T10:00:00-04:00,
  current_step_point_person_id: 1,
  current_step_id: 1,
  description: Added by API,
  due_date: 2019-10-26T10:00:00-04:00,
  path_id: 1,
  point_person_id: 1,
  signup_id: 1,
  value_amount: 5.00,
  ended_at: 2019-10-26T10:00:00-04:00,
  journey_status: active,
  last_moved_at: 2019-10-26T10:00:00-04:00,
  path_journey_status_change_id: 1,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

