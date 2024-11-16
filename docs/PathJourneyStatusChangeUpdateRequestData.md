# NationbuilderClient::PathJourneyStatusChangeUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PathJourneyStatusChangeReadWriteAttributes**](PathJourneyStatusChangeReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathJourneyStatusChangeUpdateRequestData.new(
  id: 1,
  type: path_journey_status_changes,
  attributes: null
)
```

