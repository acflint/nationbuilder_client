# NationbuilderClient::PathJourneyUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PathJourneyUpdateRequestDataAttributes**](PathJourneyUpdateRequestDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathJourneyUpdateRequestData.new(
  id: 1,
  type: path_journeys,
  attributes: null
)
```

