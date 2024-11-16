# NationbuilderClient::PathJourneyStatusChangeReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path_id** | **String** | The assigned path. | [optional] |
| **name** | **String** | Short name describing the status change. | [optional] |
| **target_status** | **String** | The intended status of the path after this status change. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathJourneyStatusChangeReadWriteAttributes.new(
  path_id: 1,
  name: Decided to quit,
  target_status: completed
)
```

