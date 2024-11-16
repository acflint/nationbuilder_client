# NationbuilderClient::PathStepReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_due_date_interval** | **String** | The default amount of time the step is due after being started. | [optional] |
| **default_point_person_id** | **String** | The default point person. | [optional] |
| **name** | **String** | Name of the step. | [optional] |
| **path_id** | **String** | The path the step is assigned to. | [optional] |
| **position** | **Integer** | The position in the path the step belongs to. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathStepReadWriteAttributes.new(
  default_due_date_interval: none,
  default_point_person_id: 1,
  name: Attend a fundraiser,
  path_id: 1,
  position: 1
)
```

