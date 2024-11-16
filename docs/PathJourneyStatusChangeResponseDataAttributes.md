# NationbuilderClient::PathJourneyStatusChangeResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path_id** | **String** | The assigned path. | [optional] |
| **name** | **String** | Short name describing the status change. | [optional] |
| **target_status** | **String** | The intended status of the path after this status change. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathJourneyStatusChangeResponseDataAttributes.new(
  path_id: 1,
  name: Decided to quit,
  target_status: completed,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

