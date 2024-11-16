# NationbuilderClient::PathJourneyResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PathJourneyResponseDataAttributes**](PathJourneyResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathJourneyResponseData.new(
  id: 1,
  type: path_journeys,
  attributes: null
)
```

