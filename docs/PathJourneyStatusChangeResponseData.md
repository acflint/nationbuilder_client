# NationbuilderClient::PathJourneyStatusChangeResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PathJourneyStatusChangeResponseDataAttributes**](PathJourneyStatusChangeResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathJourneyStatusChangeResponseData.new(
  id: 1,
  type: path_journey_status_changes,
  attributes: null
)
```

