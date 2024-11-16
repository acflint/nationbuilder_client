# NationbuilderClient::PathStepResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_due_date_interval** | **String** | The default amount of time the step is due after being started. | [optional] |
| **default_point_person_id** | **String** | The default point person. | [optional] |
| **name** | **String** | Name of the step. | [optional] |
| **path_id** | **String** | The path the step is assigned to. | [optional] |
| **position** | **Integer** | The position in the path the step belongs to. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathStepResponseDataAttributes.new(
  default_due_date_interval: none,
  default_point_person_id: 1,
  name: Attend a fundraiser,
  path_id: 1,
  position: 1,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

