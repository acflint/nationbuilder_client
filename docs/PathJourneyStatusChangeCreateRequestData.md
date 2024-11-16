# NationbuilderClient::PathJourneyStatusChangeCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**PathJourneyStatusChangeReadWriteAttributes**](PathJourneyStatusChangeReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathJourneyStatusChangeCreateRequestData.new(
  type: path_journey_status_changes,
  attributes: null
)
```

